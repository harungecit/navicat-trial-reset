
# Navicat Premium Trial Reset Script

This script resets the trial period for Navicat Premium on both Windows and Linux platforms. It supports multiple languages and automatically detects the operating system to perform the required actions.

## Features
- **Cross-platform support**: Works on both Windows and Linux.
- **Multi-language support**: Choose between English (default) and Turkish.
- **Automated platform detection**: Runs the appropriate commands for the detected operating system.
- Deletes all temporary and trial-related files for Navicat Premium.

## Usage
1. Download the script (`navicat_trial_reset_multilang.sh`) to your local machine.
2. Make the script executable:
   ```bash
   chmod +x navicat_trial_reset_multilang.sh
   ```
3. Run the script:
   - English (default):
     ```bash
     ./navicat_trial_reset_multilang.sh
     ```
   - Turkish:
     ```bash
     ./navicat_trial_reset_multilang.sh --lang tr
     ```

### For Windows Users
- Use a Bash environment like Git Bash or Cygwin.
- Run the script from the Bash terminal.
- Ensure you have administrator privileges to modify the registry.

### For Linux Users
- Run the script directly in a terminal.
- Ensure you have `dconf-cli` installed:
  ```bash
  sudo apt install dconf-cli
  ```

## Disclaimer
This script is provided for educational purposes only. Use it at your own risk and ensure compliance with all applicable laws and regulations.
