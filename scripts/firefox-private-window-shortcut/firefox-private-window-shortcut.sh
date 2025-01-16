#!/bin/bash

DESKTOP_FILE=~/.local/share/applications/firefox-private.desktop
ICON_FOLDER=~/.local/share/icons/
ICON_PATH=~/.local/share/icons/firefox-private-icon.png
ICON_URL=https://searchfox.org/mozilla-central/source/browser/branding/nightly/default256.png

create_shortcut() {
	printf "Creating the shortcut file...\n"
	touch "$DESKTOP_FILE"
	chmod +x "$DESKTOP_FILE"

	if [ $? -eq 0 ]; then
		printf "Shortcut file created successfully.\n"
	else
		printf "Failed to create the shortcut file.\n"
		return 1
	fi

	printf "Creating (if it doesn't exist) the icons directory...\n"
	mkdir -p "$ICON_FOLDER"

	if [ $? -eq 0 ]; then
		printf "Icons directory created successfully.\n"
	else
		printf "Failed to create the icons directory.\n"
		return 1
	fi

	printf "Downloading the shortcut image...\n"
	wget -q -O "${ICON_PATH}" "${ICON_URL}"

	if [ $? -eq 0 ]; then
		printf "Shortcut image downloaded successfully.\n"
	else
		printf "Failed to download the shortcut image.\n"
		return 1
	fi

	cat <<EOF > "$DESKTOP_FILE"
[Desktop Entry]
Version=1.0
Name=Firefox Private Browsing
GenericName=Web Browser
Comment=Browse the web in private mode
Exec=firefox --private-window %u
Icon=$ICON_PATH
Terminal=false
Type=Application
Categories=Network;WebBrowser;
StartupNotify=true
EOF

	if [ $? -eq 0 ]; then
		printf "Firefox Private Browsing shortcut created successfully!\n"
		printf "You can find it in your application menu.\n"
	else
		printf "Failed to create the desktop entry file.\n"
		return 1
	fi
}

uninstall_shortcut() {
	if [ -f "$DESKTOP_FILE" ]; then
		rm "$DESKTOP_FILE"
		printf "Firefox Private Browsing shortcut removed successfully!\n"
	else
		printf "The Firefox Private Browsing shortcut is not installed.\n"
	fi

	if [ -f "$ICON_PATH" ]; then
		rm "$ICON_PATH"
		printf "The Firefox Private Browsing icon removed successfully!\n"
	fi
}

show_menu() {
	clear
	echo "=================================="
	echo "     Firefox Private Browsing     "
	echo "=================================="
	echo "1. Install Firefox Private Browsing shortcut"
	echo "2. Uninstall Firefox Private Browsing shortcut"
	echo "3. Exit"
	echo "=================================="
	read -p "Choose an option: " choice
	case $choice in
		1)
			create_shortcut
			;;
		2)
			uninstall_shortcut
			;;
		3)
			exit 0
			;;
		*)
			echo "Invalid option, please try again."
			sleep 1
			show_menu
			;;
	esac
}

show_menu
