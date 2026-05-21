import Widget from 'resource:///com/github/Aylur/ags/widget.js';
import * as Utils from 'resource:///com/github/Aylur/ags/utils.js';
import { services } from '../../../services.js';

const systemtray = () => {
    return Widget.Box({
        class_name: 'systray',
        setup: self => {
            // Add empty class by default
            self.toggleClassName('systray-empty', true);
            
            // Update class and items when systray changes
            self.hook(services.systray, () => {
                const hasItems = services.systray.items.length > 0;
                self.toggleClassName('systray-empty', !hasItems);
            });
        },
        children: services.systray.bind('items').transform(items => {
            return items.map(item => Widget.Button({
                child: Widget.Icon({ icon: item.bind('icon') }),
                on_primary_click: (button, event) => item.activate(event),
                on_secondary_click: (button, event) => item.openMenu(event),
            }));
        }),
    });
};

const quicksettings = () => {
    const VOLUME_ICONS = [
        { threshold: 101, class: 'volume-icon-overamplified' },
        { threshold: 67, class: 'volume-icon-high' },
        { threshold: 34, class: 'volume-icon-medium' },
        { threshold: 1, class: 'volume-icon-low' },
        { threshold: 0, class: 'volume-icon-muted' },
    ];

    const getVolumeIconClass = (volume, isMuted) => {
        if (isMuted) return 'volume-icon-muted';
        const volumePercent = volume * 100;
        const { class: iconClass } = VOLUME_ICONS.find(({ threshold }) => 
            threshold <= volumePercent) || VOLUME_ICONS[VOLUME_ICONS.length - 1];
        return iconClass;
    };

    const volumeControl = Widget.Box({
        class_name: 'volume-control',
        children: [
            Widget.Icon({
                class_name: 'volume-icon',
                setup: self => self.hook(services.audio.speaker, () => {
                    const iconClass = getVolumeIconClass(
                        services.audio.speaker.volume,
                        services.audio.speaker.is_muted
                    );
                    self.class_name = `volume-icon ${iconClass}`;
                }),
            }),
            Widget.Label({
                class_name: 'volume-label',
                setup: self => self.hook(services.audio.speaker, () => {
                    const volume = Math.round(services.audio.speaker.volume * 100);
                    self.label = `${volume}%`;
                }),
            }),
        ],
    });

    const powerButton = Widget.Icon({
        class_name: 'power-button',
    });

    return Widget.Button({
        class_name: 'quick-settings',
        child: Widget.Box({
            class_name: 'quick-settings-inner-box',
            spacing: 3,
            children: [
                volumeControl,    
                powerButton,
            ],
        }),
        on_primary_click: (button) => {
            button.toggleClassName('clicked');
            Utils.timeout(200, () => button.toggleClassName('clicked'));
        },
    });
};

export const systray = () => Widget.Box({
    class_name: 'systray',
    children: [
        systemtray(),
        quicksettings(),
    ],
});
