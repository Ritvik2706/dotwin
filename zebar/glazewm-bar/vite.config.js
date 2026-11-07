import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
    plugins: [react()],
    // Relative URLs: Zebar serves the pack from its own folder.
    base: './',
    build: {
        outDir: 'dist',
        target: 'esnext',
        sourcemap: false,
    },
});
