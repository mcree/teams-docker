#!/bin/bash
TEAMS_PATH="/usr/share/teams/teams"
TEAMS_LOGS="$HOME/.config/Microsoft/Microsoft Teams/logs"
mkdir -p "$TEAMS_LOGS"
"$TEAMS_PATH" "$@"
cat ~/.config/Microsoft/Microsoft\ Teams/logs.txt
exit 0
