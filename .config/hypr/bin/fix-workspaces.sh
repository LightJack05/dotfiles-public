#!/usr/bin/env zsh

# Get all workspace rules from Hyprland that have a monitor assignment
# Output format: "workspace_id monitor_name"
hyprctl -j workspacerules | jq -r '.[] | select(.monitor != "") | "\(.workspaceString) \(.monitor)"' | while read -r workspace monitor; do
    # Dispatch the move command for each rule found
    hyprctl dispatch moveworkspacetomonitor "$workspace $monitor"
done
