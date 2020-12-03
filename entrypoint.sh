#!/bin/bash
TEAMS_PATH="/usr/share/teams/teams"
TEAMS_CONFDIR="$HOME/.config/Microsoft/Microsoft Teams"
TEAMS_LOGS="$TEAMS_CONFDIR/logs"
trap "rm -f '$TEAMS_CONFDIR/SingletonLock'" exit
mkdir -p "$TEAMS_LOGS"
"$TEAMS_PATH" "$@"
cat ~/.config/Microsoft/Microsoft\ Teams/logs.txt
exit 0
