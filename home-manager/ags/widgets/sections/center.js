import Widget from 'resource:///com/github/Aylur/ags/widget.js';
import { Clock } from '../bar/components/clock.js';

export const Center = () => Widget.Box({
    children: [
        Clock(),
    ],
});
