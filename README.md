# Go Anonymous!

**Go Anonymous!** is a simple yet powerful browser extension that allows you to open your current tab in a new Incognito (Chrome) or Private (Firefox) window with just a single click.

> "When you want an uninterrupted place to be."

## Features

- **One-Click Privacy**: Instantly open the current URL in a new private window.
- **Cross-Browser Support**: Available for both Google Chrome and Mozilla Firefox.
- **Lightweight**: Minimal resource usage with no background tracking.

## Installation

### Google Chrome

1.  **Build from source** (see [Build Instructions](#build-instructions)) or download the source code.
2.  Open Chrome and navigate to `chrome://extensions`.
3.  Enable **Developer mode** by toggling the switch in the top-right corner.
4.  Click on the **Load unpacked** button.
5.  Select the `chrome_extension` directory from this repository.
    *   *Alternatively, if you built the project, you can unzip `dist/go_anonymous_chrome.zip` and load that folder.*

### Mozilla Firefox

1.  **Build from source** (see [Build Instructions](#build-instructions)) or download the source code.
2.  Open Firefox and navigate to `about:debugging#/runtime/this-firefox`.
3.  Click on **Load Temporary Add-on...**.
4.  Navigate to the `firefox_addon` directory and select the `manifest.json` file.
    *   *Alternatively, if you built the project, you can select the `dist/go_anonymous_firefox.zip` file directly.*

## Build Instructions

To package the extensions for distribution or personal use, you can use the provided build scripts.

### Prerequisites

- A Unix-like environment (macOS, Linux, or WSL on Windows).
- `bash` shell.
- `zip` command-line utility.

### Building for Chrome

Run the following command in the project root:

```bash
./chrome_build.sh
```

This will create a `dist/go_anonymous_chrome.zip` file containing the packed extension.

### Building for Firefox

Run the following command in the project root:

```bash
./firefox_build.sh
```

This will create a `dist/go_anonymous_firefox.zip` file containing the packed add-on.

## Project Structure

- `chrome_extension/`: Source code for the Chrome extension.
- `firefox_addon/`: Source code for the Firefox add-on.
- `chrome_build.sh`: Script to package the Chrome extension.
- `firefox_build.sh`: Script to package the Firefox add-on.
- `dist/`: Directory where built extension packages are saved (created during build).
