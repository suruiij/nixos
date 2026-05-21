import Widget from 'resource:///com/github/Aylur/ags/widget.js';
import * as Utils from 'resource:///com/github/Aylur/ags/utils.js';
import { variables } from '../../../services.js';

export const Clock = () => Widget.Button({
    class_name: 'clock',
    child: Widget.Label({
        label: variables.clock.bind(),
    }),
    onPrimaryClick: (button) => {
        button.toggleClassName('clicked');
        Utils.timeout(200, () => button.toggleClassName('clicked'));
        // Reserved for future widget implementation
    },
});
