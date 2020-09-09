# teams-docker
Run multiple Microsoft Teams instances under (Ubuntu) Linux

Usage:

`./teams-docker NAME [ARGS]`

Where NAME is a uniqe identifier of the Teams instance.

General steps taken by the `teams-docker` script:

1. Check for dependencies (docker, git, sed, curl, desktop-file-install)
1. Check for work dir under `$HOME/.config/teams-docker-NAME` and do a setup if necessary:
    * Build the Docker container image
    * Create a .desktop file in `$HOME/.local/share/applications`
    * Copy the same .desktop file to `$HOME/.config/autostart`
    * Download a copy of [x11docker](https://github.com/mviereck/x11docker) into `$HOME/.local/bin`
    * Also place a copy of teams-docker script into `$HOME/.local/bin`
1. Check whether the specified instance is already running:
    * If it is not running: start it in a new Docker container
    * If it is running already: execute `teams [ARGS]` command in the running container - this allows for opening URLS and such
    
Arguments passed to `x11docker` can be checked in the script itself. YMMV, it works for me, tested under Ubuntu 20.04.
