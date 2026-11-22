import { resolve } from 'node:path';
import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
    plugins: [react()],
    // Relative URLs: Zebar serves the pack from its own folder.
    base: './',
    // Lets a running tray panel see that the bar was rebuilt (widgets/systray/trayLink.js).
    define: {
        __TRAY_BUILD__: JSON.stringify(Date.now().toString(36)),
    },
    build: {
        outDir: 'dist',
        target: 'esnext',
        sourcemap: false,
        // Two widget windows: the bar, and the tray panel that drops down from it.
        rollupOptions: {
            input: {
                index: resolve(import.meta.dirname, 'index.html'),
                tray: resolve(import.meta.dirname, 'tray.html'),
            },
        },
    },
});
