#!/bin/bash

# Ch X Gravity Theme Installer
# Timeless, minimal, and intent-driven styling.

echo "=========================================="
echo "Installing Ch X Gravity Theme & Branding..."
echo "=========================================="

# 1. Paths
GLOBAL_DIR="/Users/chamaththiwanka/.gemini/antigravity-ide"
USER_SETTINGS_DIR="/Users/chamaththiwanka/Library/Application Support/Ch X Gravity/User"
APP_DIR="/Applications/Antigravity IDE.app"

# Ensure global dir exists
mkdir -p "$GLOBAL_DIR"

# 2. Copy Custom Styles & JS
echo "-> Copying custom CSS/JS to global app data directory..."
cp "./custom.css" "$GLOBAL_DIR/custom.css"
cp "./custom.js" "$GLOBAL_DIR/custom.js"

# 3. Backup & Apply settings.json
echo "-> Backup and applying settings.json..."
if [ -f "$USER_SETTINGS_DIR/settings.json" ]; then
    cp "$USER_SETTINGS_DIR/settings.json" "$USER_SETTINGS_DIR/settings.json.bak"
    echo "   (Backup created at settings.json.bak)"
fi
cp "./settings.json" "$USER_SETTINGS_DIR/settings.json"

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
    
    # Copy branding resources
    echo "-> Applying native logo & configuration..."
    if [ -f "$APP_DIR/Contents/Resources/app/out/media/jetski-logo-white.svg" ]; then
        cp "$APP_DIR/Contents/Resources/app/out/media/jetski-logo-white.svg" "$APP_DIR/Contents/Resources/app/out/media/jetski-logo-white.svg.bak"
    fi
    if [ -f "$APP_DIR/Contents/Resources/app/product.json" ]; then
        cp "$APP_DIR/Contents/Resources/app/product.json" "$APP_DIR/Contents/Resources/app/product.json.bak"
    fi
    
    cp "./jetski-logo-white.svg" "$APP_DIR/Contents/Resources/app/out/media/jetski-logo-white.svg"
    cp "./product.json" "$APP_DIR/Contents/Resources/app/product.json"
    
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
