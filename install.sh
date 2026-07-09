#!/bin/bash

# Ch X Gravity Theme Installer
# Timeless, minimal, and intent-driven styling.

echo "=========================================="
echo "Installing Ch X Gravity Theme & Branding..."
echo "=========================================="

# 1. Dynamic Paths
USER_SETTINGS_DIR="$HOME/Library/Application Support/Ch X Gravity/User"
APP_DIR="/Applications/Antigravity IDE.app"
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Ensure user settings dir exists
mkdir -p "$USER_SETTINGS_DIR"

# 2. Copy Custom Styles & JS
echo "-> Copying custom CSS/JS to user configuration directory..."
cp "$DIR/custom.css" "$USER_SETTINGS_DIR/custom.css"
cp "$DIR/custom.js" "$USER_SETTINGS_DIR/custom.js"

# 3. Backup & Apply settings.json (Dynamic Injection)
echo "-> Injecting dynamic paths and applying settings.json..."
if [ -f "$USER_SETTINGS_DIR/settings.json" ]; then
    cp "$USER_SETTINGS_DIR/settings.json" "$USER_SETTINGS_DIR/settings.json.bak"
    echo "   (Backup created at settings.json.bak)"
fi
# Inject the actual home directory path into settings.json
sed "s|{{HOME_DIR}}|$HOME|g" "$DIR/settings.json" > "$USER_SETTINGS_DIR/settings.json"

# 4. Check for App permissions
echo "-> Checking write permissions for the App Bundle..."
if [ -d "$APP_DIR" ]; then
    # Try writing a dummy file to check permissions
    touch "$APP_DIR/Contents/Resources/app/out/media/test_perms" 2>/dev/null
    if [ $? -ne 0 ]; then
        echo "   [WARNING] Write permissions required for application branding files."
        echo "   Please enter your Mac password to grant write access:"
        sudo chown -R $(whoami) "$APP_DIR"
    else
        rm "$APP_DIR/Contents/Resources/app/out/media/test_perms"
    fi
    
    # Apply native logo
    echo "-> Applying native logo..."
    if [ -f "$APP_DIR/Contents/Resources/app/out/media/jetski-logo-white.svg" ]; then
        cp "$APP_DIR/Contents/Resources/app/out/media/jetski-logo-white.svg" "$APP_DIR/Contents/Resources/app/out/media/jetski-logo-white.svg.bak"
    fi
    cp "$DIR/assets/jetski-logo-white.svg" "$APP_DIR/Contents/Resources/app/out/media/jetski-logo-white.svg"
    
    # Dynamically patch product.json for Ch X Gravity branding
    echo "-> Dynamically patching IDE branding in product.json..."
    PRODUCT_JSON="$APP_DIR/Contents/Resources/app/product.json"
    if [ -f "$PRODUCT_JSON" ]; then
        cp "$PRODUCT_JSON" "$PRODUCT_JSON.bak"
        # Use sed to safely replace nameShort and nameLong without overriding the entire file
        sed -i '' 's/"nameShort": "[^"]*"/"nameShort": "Ch X Gravity"/g' "$PRODUCT_JSON"
        sed -i '' 's/"nameLong": "[^"]*"/"nameLong": "Ch X Gravity"/g' "$PRODUCT_JSON"
    fi
    
    echo "=========================================="
    echo "Installation Complete!"
    echo "1. Run the IDE."
    echo "2. Open Command Palette (Cmd+Shift+P) -> run 'Enable Custom CSS and JS'."
    echo "3. Restart/Reload the IDE, and if needed, run 'Reload Custom CSS and JS'."
    echo "4. Restart the IDE once to see the watermark change."
    echo "=========================================="
else
    echo "   [ERROR] Antigravity IDE was not found at $APP_DIR."
    echo "   Watermark branding skipped."
fi
