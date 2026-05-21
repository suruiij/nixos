// /etc/nixos/home-manager/ags/config.js
import App from 'resource:///com/github/Aylur/ags/app.js';
import { Bar } from './widgets/bar/index.js';
import { setupServices } from './services.js';
import { setupLauncher } from './widgets/launcher/launcher.js';

// Setup all services and components
await setupServices();
await setupLauncher();

App.config({
    style: './style.css',
    windows: [Bar()],
});
