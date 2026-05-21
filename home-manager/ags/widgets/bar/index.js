import Widget from 'resource:///com/github/Aylur/ags/widget.js';
import { Left } from '../sections/left.js';
import { Center } from '../sections/center.js';
import { Right } from '../sections/right.js';

export const Bar = (monitor = 0) => Widget.Window({
    name: `bar-${monitor}`,
    class_name: 'bar',
    monitor,
    anchor: ['top', 'left', 'right'],
    exclusivity: 'exclusive',
    margins: [0, 0, 0, 0],
    child: Widget.CenterBox({
        start_widget: Left(),
        center_widget: Center(),
        end_widget: Right(),
    }),
});
