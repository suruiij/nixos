import Widget from 'resource:///com/github/Aylur/ags/widget.js';
import { services } from '../../../services.js';

export const Workspaces = () => Widget.Box({
    class_name: 'workspaces',
    children: Array.from({ length: 9 }, (_, index) => {
        const id = index + 1;
        return Widget.Button({
            class_name: services.hyprland.active.workspace.bind('id').as(activeId => {
                const isFocused = activeId === id;
                const hasWindows = services.hyprland.getWorkspace(id)?.windows > 0;
                
                let classes = 'workspace';
                if (isFocused) classes += ' active';
                if (hasWindows) classes += ' occupied';
                if (!isFocused && !hasWindows) classes += ' empty';
                
                return classes.trim();
            }),
            child: Widget.Box({
                class_name: 'workspace-indicator',
            }),
            on_clicked: () => services.hyprland.messageAsync(`dispatch workspace ${id}`),
        });
    }),
});
