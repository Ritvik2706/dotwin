#!/usr/bin/env python3
"""Builds the Reliquary cursor set into cursors/reliquary/: python3 cursors/generate.py

A small black pointer in the macOS mould, with the bar's silver for its edge and a
slight scythe curve to its sides, and a light hand for links. macOS comes first: the
rest are plain Mac shapes in the same black and silver, and busy is its spinning wheel
in monochrome. Each .cur holds 32, 48 and 64 px images. Needs Pillow.
"""
import math
import struct
from pathlib import Path

from PIL import Image, ImageDraw, ImageFilter, ImageFont

OUT = Path(__file__).parent / 'reliquary'
SIZES = (32, 48, 64)
SS = 8                      # supersampling
GRID = 32                   # shapes are drawn on a 32x32 grid
EDGE = 0.7                  # silver edge, in grid units
FILL = (8, 8, 10, 255)
SILVER = (217, 215, 223, 255)
FONT = '/mnt/c/Windows/Fonts/segoeuib.ttf'   # the help cursor's question mark


def cubic(p0, p1, p2, p3, steps=24):
    for i in range(1, steps + 1):
        t = i / steps
        u = 1 - t
        yield tuple(u**3 * a + 3 * u * u * t * b + 3 * u * t * t * c + t**3 * d
                    for a, b, c, d in zip(p0, p1, p2, p3))


def path(start, *segments):
    """Points along a path: a segment is (x, y) for a line, 6 numbers for a curve."""
    points = [start]
    for seg in segments:
        if len(seg) == 2:
            points.append(seg)
        else:
            points.extend(cubic(points[-1], seg[0:2], seg[2:4], seg[4:6]))
    return points


def turn(points, degrees, centre=(16, 16)):
    a = math.radians(degrees)
    cx, cy = centre
    return [(cx + (x - cx) * math.cos(a) - (y - cy) * math.sin(a),
             cy + (x - cx) * math.sin(a) + (y - cy) * math.cos(a)) for x, y in points]


def place(points, scale=1, dx=0, dy=0):
    return [(x * scale + dx, y * scale + dy) for x, y in points]


def shrink(points, scale=0.68, centre=(16, 16)):
    cx, cy = centre
    return [(cx + (x - cx) * scale, cy + (y - cy) * scale) for x, y in points]


# The macOS arrow, with its short tail. The sides bow in very slightly.
ARROW = path((2, 2), (2.7, 7, 2.7, 12, 2, 17.5), (6, 14), (8.2, 19.4), (10.6, 18.3), (8.4, 13.2),
             (13.4, 13), (9.5, 10, 6, 6, 2, 2))


def detail(points):
    """Drawn in silver over the black fill, for what's inside a shape."""
    return {'detail': points}


def mapped(shapes, change):
    """`shapes` with `change` applied to the points of each, details included."""
    return [{'detail': change(s['detail'])} if isinstance(s, dict) and 'detail' in s else
            s if isinstance(s, dict) else change(s) for s in shapes]


def circle(cx, cy, r, steps=40):
    return [(cx + r * math.cos(i * 2 * math.pi / steps), cy + r * math.sin(i * 2 * math.pi / steps))
            for i in range(steps)]


# The macOS I-beam.
SERIF = [(12, 5), (14.6, 5), (16, 6), (17.4, 5), (20, 5), (20, 6.4), (17.4, 6.6), (16.7, 7.6), (15.3, 7.6), (14.6, 6.6), (12, 6.4)]
IBEAM = [[(15.4, 7), (16.6, 7), (16.6, 25), (15.4, 25)], SERIF, turn(SERIF, 180)]
# A plain up arrow.
UP = [(16, 3), (22, 10), (18, 9.4), (18, 22), (14, 22), (14, 9.4), (10, 10)]
# A plain pencil, point on the hotspot.
PEN = shrink([(3, 29), (4.6, 23.4), (22, 6), (26, 10), (8.6, 27.4)], 0.74, (3, 29))
# A plain crosshair, with a gap so the target stays visible.
ARM = [(15.5, 6), (16.5, 6), (16.5, 13.5), (15.5, 13.5)]
CROSS = [turn(ARM, a) for a in (0, 90, 180, 270)]
# Resizing: Mac double arrows. The slight notch in each head is the scythe.
HEAD = [(5, 16), (11, 11), (10, 16), (11, 21)]
DOUBLE = [HEAD, turn(HEAD, 180), [(9.5, 15.2), (22.5, 15.2), (22.5, 16.8), (9.5, 16.8)]]
# A map pin, standing on the hotspot, and a head and shoulders.
PIN = [path((16, 27), (12, 20, 9, 17, 9, 12), (9, 8, 12, 5, 16, 5), (20, 5, 23, 8, 23, 12), (23, 17, 20, 20, 16, 27)),
       {'detail': circle(16, 12, 2.6)}]
PERSON = [circle(16, 10, 4.6), path((7, 25), (7, 19, 11, 16, 16, 16), (21, 16, 25, 19, 25, 25))]


def render_wheel(size, step, radius=8.5):
    """The macOS busy wheel in monochrome: twelve wedges, turned `step` wedges."""
    big = size * SS
    k = big / GRID
    out = Image.new('RGBA', (big, big), (0, 0, 0, 0))
    draw = ImageDraw.Draw(out)
    box = [(16 - radius) * k, (16 - radius) * k, (16 + radius) * k, (16 + radius) * k]
    edge = EDGE * k
    draw.ellipse([box[0] - edge, box[1] - edge, box[2] + edge, box[3] + edge], fill=(0, 0, 0, 255))
    for i in range(12):
        shade = 36 + round(200 * ((i - step) % 12) / 11)
        draw.pieslice(box, i * 30 - 90, i * 30 - 60, fill=(shade, shade, shade + 6, 255))
    return out.resize((size, size), Image.LANCZOS)


def render_working(size, step):
    """The arrow, with a small wheel beside it."""
    out = render(([ARROW]), size)
    wheel = render_wheel(size, step).resize((round(size * 0.6), round(size * 0.6)), Image.LANCZOS)
    out.alpha_composite(wheel, (round(size * 0.32), round(size * 0.3)))
    return out


# For links: the back of a hand, middle finger up. Light with a dark outline, like the
# macOS hand: at this size details only show on a light fill. Rounded rectangles as
# (left, top, right, bottom, radius); creases are the lines between the fingers.
HAND = [(9.3, 2, 12.7, 16, 1.7),      # middle finger
        (5, 9.8, 9.4, 17, 2.1),       # index, folded
        (12.6, 9.8, 16.8, 17, 2.1),   # ring, folded
        (16.2, 11.2, 19.8, 17, 1.8),  # little finger, folded
        (5, 13, 19.8, 20, 4),         # back of the hand
        (7.2, 17, 17.6, 23.5, 2)]     # wrist
CREASES = [(9.2, 11.4, 13.8), (12.8, 11.4, 13.8), (16.5, 12.4, 14.2)]
HAND_TIP = (11, 2)
HAND_FILL = (246, 245, 248, 255)


def render_hand(size):
    big = size * SS
    k = big / GRID
    mask = Image.new('L', (big, big), 0)
    draw = ImageDraw.Draw(mask)
    for left, top, right, bottom, radius in HAND:
        draw.rounded_rectangle([left * k, top * k, right * k, bottom * k], radius * k, fill=255)
    edge = mask
    for _ in range(round(EDGE * k) // 3 + 1):
        edge = edge.filter(ImageFilter.MaxFilter(7))
    out = Image.new('RGBA', (big, big), (0, 0, 0, 0))
    out.paste(FILL, mask=edge)
    out.paste(HAND_FILL, mask=mask)
    lines = ImageDraw.Draw(out)
    for x, top, bottom in CREASES:
        lines.rounded_rectangle([(x - 0.4) * k, top * k, (x + 0.4) * k, bottom * k], 0.4 * k, fill=FILL)
    return out.resize((size, size), Image.LANCZOS)


def ring():
    """The "not allowed" ring, as a mask drawn by render()."""
    return {'ring': (16, 16, 8.5, 2)}


def render(shapes, size, text=None):
    big = size * SS
    k = big / GRID
    mask = Image.new('L', (big, big), 0)
    draw = ImageDraw.Draw(mask)
    for shape in shapes:
        if isinstance(shape, dict) and 'detail' in shape:
            continue
        if isinstance(shape, dict):
            cx, cy, r, w = shape['ring']
            draw.ellipse([(cx - r) * k, (cy - r) * k, (cx + r) * k, (cy + r) * k], fill=255)
            draw.ellipse([(cx - r + w) * k, (cy - r + w) * k, (cx + r - w) * k, (cy + r - w) * k], fill=0)
        else:
            draw.polygon([(x * k, y * k) for x, y in shape], fill=255)
    if text:
        font = ImageFont.truetype(FONT, round(12 * k))
        draw.text((text[1] * k, text[2] * k), text[0], font=font, fill=255, anchor='mm')

    edge = mask
    radius = max(1, round(EDGE * k))
    for _ in range(radius // 3 + 1):
        edge = edge.filter(ImageFilter.MaxFilter(7))

    out = Image.new('RGBA', (big, big), (0, 0, 0, 0))
    out.paste(SILVER, mask=edge)
    out.paste(FILL, mask=mask)
    silver = ImageDraw.Draw(out)
    for shape in shapes:
        if isinstance(shape, dict) and 'detail' in shape:
            silver.polygon([(x * k, y * k) for x, y in shape['detail']], fill=SILVER)
    return out.resize((size, size), Image.LANCZOS)


def dib(img):
    """One image in .cur form: header, BGRA rows bottom-up, then the AND mask."""
    w, h = img.size
    header = struct.pack('<IiiHHIIiiII', 40, w, h * 2, 1, 32, 0, 0, 0, 0, 0, 0)
    px = img.load()
    rows = bytearray()
    for y in range(h - 1, -1, -1):
        for x in range(w):
            r, g, b, a = px[x, y]
            rows += bytes((b, g, r, a))
    stride = ((w + 31) // 32) * 4
    return header + bytes(rows) + bytes(stride * h)


def cur(shapes, hot, text=None, draw=None):
    images = [(size, dib(draw(size) if draw else render(shapes, size, text))) for size in SIZES]
    data = struct.pack('<HHH', 0, 2, len(images))
    offset = 6 + 16 * len(images)
    for size, image in images:
        scale = size / GRID
        data += struct.pack('<BBBBHHII', size % 256, size % 256, 0, 0,
                            round(hot[0] * scale), round(hot[1] * scale), len(image), offset)
        offset += len(image)
    return data + b''.join(image for _, image in images)


def chunk(tag, body):
    return tag + struct.pack('<I', len(body)) + body + (b'\0' if len(body) % 2 else b'')


def ani(frames, jiffies):
    """frames are .cur files; `jiffies` is the time per frame, in 1/60 s."""
    head = struct.pack('<IIIIIIIII', 36, len(frames), len(frames), 0, 0, 0, 0, jiffies, 1)
    body = b'fram' + b''.join(chunk(b'icon', frame) for frame in frames)
    riff = b'ACON' + chunk(b'anih', head) + chunk(b'LIST', body)
    return b'RIFF' + struct.pack('<I', len(riff)) + riff


def main():
    OUT.mkdir(exist_ok=True)
    frames = range(12)
    spun = lambda degrees: mapped(DOUBLE, lambda p: turn(p, degrees))

    files = {
        'arrow.cur': cur([ARROW], (2, 2)),
        'link.cur': cur(None, HAND_TIP, draw=render_hand),
        'help.cur': cur([ARROW], (2, 2), ('?', 19, 15)),
        'text.cur': cur(IBEAM, (16, 16)),
        'cross.cur': cur(CROSS, (16, 16)),
        'pen.cur': cur([PEN], (3, 29)),
        'no.cur': cur([ring(), turn([(8, 15), (24, 15), (24, 17), (8, 17)], 45)], (16, 16)),
        'up.cur': cur([UP], (16, 3)),
        'ns.cur': cur(spun(90), (16, 16)),
        'ew.cur': cur(DOUBLE, (16, 16)),
        'nwse.cur': cur(spun(45), (16, 16)),
        'nesw.cur': cur(spun(-45), (16, 16)),
        'move.cur': cur(DOUBLE + spun(90), (16, 16)),
        'pin.cur': cur(PIN, (16, 27)),
        'person.cur': cur(mapped([PERSON[0], PERSON[1]], lambda p: shrink(p, 0.8)), (16, 16)),
        'busy.ani': ani([cur(None, (16, 16), draw=lambda size, i=i: render_wheel(size, i)) for i in frames], 5),
        'working.ani': ani([cur(None, (2, 2), draw=lambda size, i=i: render_working(size, i)) for i in frames], 5),
    }
    for name, data in files.items():
        (OUT / name).write_bytes(data)
    print(f'{len(files)} cursors in {OUT}')


if __name__ == '__main__':
    main()
