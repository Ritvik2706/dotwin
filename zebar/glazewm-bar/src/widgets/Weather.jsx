import React from 'react';
import Stat from '../ui/Stat.jsx';

/** Current temperature from Zebar's weather provider. */
export default function Weather({ weather }) {
    if (!weather) return null;
    return <Stat glyph="moon" value={`${Math.round(weather.celsiusTemp)}°`} title="Outside"/>;
}
