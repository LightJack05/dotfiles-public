WALLPAPER_DIR="$HOME/dotfiles/Wallpapers/Kurzgesagt-Wallpapers"

while true; do
    # Select a random wallpaper from the directory
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

    # Set the wallpaper using Hyprland's command
    hyprctl hyprpaper wallpaper ", $WALLPAPER"

    # Wait for 10 minutes before changing the wallpaper again
    sleep 600
done
