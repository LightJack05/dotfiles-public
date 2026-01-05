WALLPAPER_DIR="$HOME/Wallpapers/Kurzgesagt-Wallpapers"

WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the wallpaper using Hyprland's command
hyprctl hyprpaper wallpaper ", $WALLPAPER"
