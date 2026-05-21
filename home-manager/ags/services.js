import Service from 'resource:///com/github/Aylur/ags/service.js';
import Variable from 'resource:///com/github/Aylur/ags/variable.js';

export const services = {
    hyprland: await Service.import('hyprland'),
    audio: await Service.import('audio'),
    systray: await Service.import('systemtray'),
};

export const variables = {
    clock: Variable('', {
        poll: [1000, 'date "+%H:%M"'],
    }),
};

export const setupServices = async () => {
    return Promise.resolve();
};
