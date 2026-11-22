import '@fontsource/grenze-gotisch/500.css';
import React from 'react';
import { createRoot } from 'react-dom/client';
import '../styles/theme.css';
import '../styles/base.css';
import TrayPanel from './TrayPanel.jsx';

// The tray panel: a second widget window ("tray" in zpack.json), see TrayPanel.jsx.
createRoot(document.getElementById('root')).render(<TrayPanel/>);
