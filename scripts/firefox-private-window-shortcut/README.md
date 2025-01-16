# Firefox Private Browsing Shortcut

This script automates the process of creating and managing a desktop shortcut for launching Firefox in Private Browsing mode. It also allows users to uninstall the shortcut and remove the associated icon if desired.

---

## Features

- **Create a Firefox Private Browsing shortcut**: Installs a shortcut for launching Firefox in Private Browsing mode in the application menu.
- **Download and set an icon**: Downloads a Firefox icon and associates it with the shortcut.
- **Uninstall the shortcut and icon**: Allows users to remove the shortcut and the icon associated with it.
- **Interactive menu**: Provides an easy-to-use menu for installing or uninstalling the shortcut.

---

## Prerequisites

- A Linux-based system.
- `wget` is required to download the icon image (this is typically pre-installed on most systems).

---

## Installation

1. Clone or download the script to your desired folder.

2. Make the script executable:
   ```bash
   chmod +x manage_firefox_shortcut.sh
   ```

---

## Usage

To run the script and manage the Firefox Private Browsing shortcut, use the following command:

```bash
./manage_firefox_shortcut.sh
```

---

## Example Output

When you run the script and select the "Install" option, you should see output like:

```
Creating the shortcut file...
Shortcut file created successfully.
Creating (if it doesn't exist) the icons directory...
Icons directory created successfully.
Downloading the shortcut image...
Shortcut image downloaded successfully.
Firefox Private Browsing shortcut created successfully!
You can find it in your application menu.
```

If you choose the "Uninstall" option, the output will look like:

```
The Firefox Private Browsing shortcut is not installed.
The Firefox Private Browsing icon is not installed.
```

---

## Customization

The following can be customized:
- **Icon URL**: The URL for the Firefox icon is currently set to a Mozilla-specific URL. You can change the URL to any other valid image URL if you prefer a different icon.

The desktop entry file and icon file paths are set to default locations in the script. You can modify the paths by changing the `DESKTOP_FILE` and `ICON_PATH` variables in the script.

---

## Important Notes

- The script requires the `wget` tool to download the icon. Make sure `wget` is installed on your system.
- The script assumes the user has Firefox installed on the system.

---

## Contributing

Contributions are welcome! If you have ideas for improvements or new features, feel free to submit a pull request or open an issue.
