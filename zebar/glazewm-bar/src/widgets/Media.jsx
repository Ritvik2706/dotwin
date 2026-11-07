import React from 'react';
import { truncate } from '../lib/format.js';
import './Media.css';

/**
 * Now playing + transport controls for whatever owns the Windows media
 * session (Spotify, browser video, mpv, ...). Hidden when nothing is playing.
 */
const MAX_LABEL = 32;

export default function Media({ media }) {
    const session = media?.currentSession;
    if (!session || !session.title) return null;

    const label = session.artist ? `${session.title} — ${session.artist}` : session.title;

    return (
        <div className="media">
            <i className="nf nf-md-music_note"></i>
            <span className="media-label" title={label}>{truncate(label, MAX_LABEL)}</span>
            <div className="media-controls">
                <button className="clean-button nf nf-md-skip_previous" title="Previous"
                        onClick={() => media.previous()}></button>
                <button className={`clean-button nf ${session.isPlaying ? 'nf-md-pause' : 'nf-md-play'}`}
                        title={session.isPlaying ? 'Pause' : 'Play'}
                        onClick={() => media.togglePlayPause()}></button>
                <button className="clean-button nf nf-md-skip_next" title="Next"
                        onClick={() => media.next()}></button>
            </div>
        </div>
    );
}
