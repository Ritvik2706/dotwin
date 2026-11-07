import '@fontsource/grenze-gotisch/500.css';
import React from 'react';
import { createRoot } from 'react-dom/client';
// Global styles first, so each widget's own CSS (imported by the widget) wins.
// Bundled, not linked from nerdfonts.com: a stylesheet in <head> blocks the
// first paint, so with no network at boot the whole bar stayed blank.
import './styles/nerd-font/webfont.css';
import './styles/theme.css';
import './styles/base.css';
import './styles/layout.css';
import Bar from './Bar.jsx';

createRoot(document.getElementById('root')).render(<Bar/>);
