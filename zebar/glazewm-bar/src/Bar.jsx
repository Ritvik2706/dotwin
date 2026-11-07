import React from 'react';
import { useProviders } from './providers.js';
import Island from './ui/Island.jsx';

import StartButton from './widgets/StartButton.jsx';
import Workspaces from './widgets/Workspaces.jsx';
import OpenApps from './widgets/OpenApps.jsx';
import FocusedApp from './widgets/FocusedApp.jsx';
import Media from './widgets/Media.jsx';
import Clock, { DateMark } from './widgets/Clock.jsx';
import Systray from './widgets/systray/Systray.jsx';
import BindingModes from './widgets/BindingModes.jsx';
import { Cpu, Memory } from './widgets/SystemStats.jsx';
import Gpu from './widgets/Gpu.jsx';
import Weather from './widgets/Weather.jsx';
import Network from './widgets/Network.jsx';
import Bluetooth from './widgets/Bluetooth.jsx';
import Volume from './widgets/Volume.jsx';
import Brightness from './widgets/Brightness.jsx';
import Mic from './widgets/Mic.jsx';
import QuickSettings from './widgets/QuickSettings.jsx';

/**
 * The whole bar, left to right. Each group is a row of islands (bordered
 * boxes); every widget hides itself when it has nothing to show.
 * To add a widget: create widgets/Foo.jsx (+ Foo.css), then place it here.
 */
export default function Bar() {
    const { glazewm, host, date, media, systray, memory, cpu, weather, network, audio } = useProviders();

    return (
        <div className="bar">
            <div className="bar-left">
                <Island>
                    <StartButton systray={systray} hostname={host?.hostname}/>
                    <Workspaces glazewm={glazewm}/>
                </Island>
                <OpenApps glazewm={glazewm} systray={systray}/>
                <FocusedApp glazewm={glazewm}/>
            </div>

            <div className="bar-center">
                <Island className="clock-island">
                    <Media media={media}/>
                    <Clock date={date}/>
                </Island>
            </div>

            <div className="bar-right">
                <Systray
                    systray={systray}
                    glazewm={glazewm}
                    alerts={<><Network network={network} alertOnly/><Mic audio={audio} alertOnly/></>}
                >
                    <Network network={network}/>
                    <Bluetooth glazewm={glazewm}/>
                    <Mic audio={audio}/>
                    <QuickSettings/>
                </Systray>
                <Island>
                    <BindingModes glazewm={glazewm}/>
                    <Memory memory={memory}/>
                    <Cpu cpu={cpu}/>
                    <Gpu glazewm={glazewm}/>
                    <Weather weather={weather}/>
                </Island>
                {/* position: relative anchors the Volume output picker overlay */}
                <Island className="controls-island">
                    <Volume audio={audio}/>
                    <Brightness glazewm={glazewm} systray={systray}/>
                </Island>
                <DateMark date={date}/>
            </div>
        </div>
    );
}
