// /etc/nixos/home-manager/ags/widgets/bar/components/distro.js
import Widget from 'resource:///com/github/Aylur/ags/widget.js';
import * as Utils from 'resource:///com/github/Aylur/ags/utils.js';
import { toggleLauncher } from '../../launcher/launcher.js';

export const Logo = () => Widget.Button({
    class_name: 'distro',
    onPrimaryClick: (button) => {
        button.toggleClassName('clicked');
        Utils.timeout(200, () => button.toggleClassName('clicked'));
        toggleLauncher();
    },
});
