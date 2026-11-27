import '@fontsource/grenze-gotisch/500.css';
import React from 'react';
import { createRoot } from 'react-dom/client';
import '../styles/theme.css';
import '../styles/base.css';
import StartPanel from './StartPanel.jsx';

// The start panel: a widget window ("start" in zpack.json), see StartPanel.jsx.
createRoot(document.getElementById('root')).render(<StartPanel/>);
