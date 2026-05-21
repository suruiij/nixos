// /etc/nixos/home-manager/ags/widgets/launcher/launcher.js
import Widget from 'resource:///com/github/Aylur/ags/widget.js';
import App from 'resource:///com/github/Aylur/ags/app.js';
import Applications from 'resource:///com/github/Aylur/ags/service/applications.js';
import Variable from 'resource:///com/github/Aylur/ags/variable.js';
import * as Utils from 'resource:///com/github/Aylur/ags/utils.js';

// Variables for state management
const searchText = Variable('');
const opened = Variable(false);

// Individual app item component
const AppItem = app => Widget.Button({
    class_name: 'app-item',
    on_clicked: () => {
        app.launch();
        opened.value = false;
        searchText.value = '';
    },
    child: Widget.Box({
        spacing: 8,
        children: [
            Widget.Icon({
                icon: app.icon_name || 'application-x-executable',
                size: 32,
            }),
            Widget.Label({
                class_name: 'app-label',
                label: app.name,
                xalign: 0,
                vpack: 'center',
                truncate: 'end',
            }),
        ],
    }),
});

// Main launcher window
const Launcher = () => {
    // List of applications that updates based on search
    const list = Widget.Box({
        vertical: true,
        spacing: 4,
        children: Applications.list.map(AppItem),
    });

    const window = Widget.Window({
        name: 'launcher',
        class_name: 'launcher',
        layer: 'overlay',
        visible: false,
        keymode: 'exclusive',
        child: Widget.Box({
            vertical: true,
            children: [
                Widget.Entry({
                    class_name: 'search',
                    hexpand: true,
                    text: searchText.bind(),
                    placeholder_text: 'Search Applications...',
                    on_accept: () => {
                        const apps = Applications.query(searchText.value);
                        if (apps[0]) {
                            apps[0].launch();
                            opened.value = false;
                            searchText.value = '';
                        }
                    },
                    on_change: ({ text }) => {
                        searchText.value = text;
                        list.children = Applications.query(text).map(AppItem);
                    },
                }),
                Widget.Scrollable({
                    class_name: 'app-list',
                    vexpand: true,
                    hscroll: 'never',
                    child: list,
                }),
            ],
        }),
    });

    return window;
};

export const launcher = Launcher();

// setupLauncher function in launcher.js
export const setupLauncher = () => {
    // Toggle visibility based on opened variable
    opened.connect('changed', () => {
        launcher.visible = opened.value;
        if (opened.value) {
            launcher.grab_focus();
        }
    });

    // Handle keyboard events
    launcher.connect('key-press-event', (_, event) => {
        // ESC key (65307)
        if (event.get_keyval()[1] === 65307) {
            opened.value = false;
            searchText.value = '';
            return true;
        }
        return false;
    });

    // Add window to the app
    App.addWindow(launcher);
};

// Function to toggle launcher visibility
export const toggleLauncher = () => {
    opened.value = !opened.value;
    if (!opened.value) {
        searchText.value = '';
    }
};
