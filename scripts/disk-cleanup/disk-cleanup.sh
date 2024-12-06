#!/bin/bash

show_help() {
    echo "Usage: $0 [-y] [-h]"
    echo
    echo "Options:"
    echo "  -y   Skip confirmation and proceed with cleanup."
    echo "  -h   Display this help message."
    exit 0
}

AUTO_CONFIRM=false

while getopts ":yh" option; do
    case "$option" in
        y)
            AUTO_CONFIRM=true
            ;;
        h)
            show_help
            ;;
        *)
            echo "Invalid option. Use -h for help."
            exit 1
            ;;
    esac
done

identify_files() {
    echo "Identifying unnecessary files..."
    echo
    echo "1. System temporary files (/tmp):"
    find /tmp -type f
    echo

    echo "2. User cache files (~/.cache):"
    find ~/.cache -type f
    echo

    echo "3. Apt cache files (/var/cache/apt):"
    find /var/cache/apt -type f
    echo

    echo "4. Log files larger than 100MB (/var/log):"
    find /var/log -type f -size +100M
    echo
}

delete_files() {
    echo "Deleting files..."
    find /tmp -type f -delete
    find ~/.cache -type f -delete
    find /var/cache/apt -type f -delete
    find /var/log -type f -size +100M -delete
    echo "Cleanup completed!"
}

echo "Disk Cleanup Script"
echo "-------------------"
identify_files

if $AUTO_CONFIRM; then
    echo "Auto-confirmation enabled (-y). Proceeding with cleanup..."
    delete_files
else
    read -p "Do you want to delete these files? (y/n): " choice
    case "$choice" in
        y|Y)
            delete_files
            ;;
        *)
            echo "Cleanup canceled by user."
            exit 0
            ;;
    esac
fi