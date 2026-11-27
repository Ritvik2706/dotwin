import { resolve } from 'node:path';
import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
    plugins: [react()],
    // Relative URLs: Zebar serves the pack from its own folder.
    base: './',
    // Lets a running panel window see that the bar was rebuilt (src/lib/panelLink.js).
    define: {
        __BAR_BUILD__: JSON.stringify(Date.now().toString(36)),
    },
    build: {
        outDir: 'dist',
        target: 'esnext',
        sourcemap: false,
        // Widget windows: the bar, and the panels that drop down from it.
        rollupOptions: {
            input: {
                index: resolve(import.meta.dirname, 'index.html'),
                tray: resolve(import.meta.dirname, 'tray.html'),
                start: resolve(import.meta.dirname, 'start.html'),
            },
        },
    },
});
