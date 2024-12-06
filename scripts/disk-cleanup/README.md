# Disk Cleanup Script

A simple and interactive Bash script to identify and remove unnecessary files from a Linux-based system, freeing up valuable disk space. The script also supports automation with a `-y` flag and provides help documentation with a `-h` flag.

---

## Features

- **Identifies unnecessary files**:
  - Temporary files in `/tmp`
  - User cache files in `~/.cache`
  - Package manager cache files in `/var/cache/apt`
  - Large log files (greater than 100MB) in `/var/log`
  
- **Interactive Mode**: Displays the files to be deleted and asks for confirmation before proceeding.
- **Automation Mode**: Use the `-y` flag to skip confirmation and clean up directly.
- **Help Documentation**: Use the `-h` flag to display usage instructions.

---

## Prerequisites

- A Linux-based system.
- Bash shell installed (default on most Linux distributions).

---

## Installation

1. Clone this repository or download the `disk_cleanup.sh` script:
   ```bash
   git clone git@github.com:Diogo13Antunes/linux-helper.git
   cd disk-cleanup
   ```

2. Make the script executable:
   ```bash
   chmod +x disk_cleanup.sh
   ```

---

## Usage

Run the script with the desired options:

### Interactive Mode (default)
```bash
./disk_cleanup.sh
```
- Displays the files to be deleted.
- Asks for confirmation before proceeding with the cleanup.

### Automation Mode
```bash
./disk_cleanup.sh -y
```
- Skips the confirmation prompt and directly deletes the unnecessary files.

### Help
```bash
./disk_cleanup.sh -h
```
- Displays the usage instructions and details about the script.

---

## Example Output

### Interactive Mode
```bash
$ ./disk_cleanup.sh
Disk Cleanup Script
-------------------
Identifying unnecessary files...

1. System temporary files (/tmp):
/tmp/file1.tmp
/tmp/file2.tmp

2. User cache files (~/.cache):
/home/user/.cache/file1
/home/user/.cache/file2

3. Apt cache files (/var/cache/apt):
/var/cache/apt/archives/file1.deb
/var/cache/apt/archives/file2.deb

4. Log files larger than 100MB (/var/log):
/var/log/large-log-file.log

Do you want to delete these files? (y/n): y
Deleting files...
Cleanup completed!
```

### Automation Mode
```bash
$ ./disk_cleanup.sh -y
Disk Cleanup Script
-------------------
Identifying unnecessary files...
Deleting files...
Cleanup completed!
```

---

## Customization

You can easily modify the script to include additional directories or file types. Look for the `identify_files` and `delete_files` functions in the script and add your custom logic.

---

## Important Notes

- **Caution**: This script permanently deletes files. Review the list of files before confirming the deletion.
- **Testing**: Test the script in a non-critical environment before using it on production systems.
- **Compatibility**: Designed for Linux-based systems. May require adjustments for non-standard file structures.

---

## Contributing

Contributions are welcome! If you have ideas for improvements or additional features, feel free to submit a pull request or open an issue.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.