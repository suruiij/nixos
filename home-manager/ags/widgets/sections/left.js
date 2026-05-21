import Widget from 'resource:///com/github/Aylur/ags/widget.js';
import { Logo } from '../bar/components/distro.js';
import { Workspaces } from '../bar/components/workspaces.js';

export const Left = () => Widget.Box({
    children: [
        Logo(),
        Workspaces(),
    ],
});
