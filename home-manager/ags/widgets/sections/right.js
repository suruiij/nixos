import Widget from 'resource:///com/github/Aylur/ags/widget.js';
import { systray } from '../bar/components/systray.js';

export const Right = () => Widget.Box({
    hpack: 'end',
    children: [
	systray()
    ],
});
