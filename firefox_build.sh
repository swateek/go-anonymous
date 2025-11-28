#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Building Firefox Add-on ===${NC}"

PROJECT_ROOT=$(pwd)
DIST_DIR="$PROJECT_ROOT/dist"
SOURCE_DIR="$PROJECT_ROOT/firefox_addon"
OUTPUT_ZIP="go_anonymous_firefox.zip"
OUTPUT_PATH="$DIST_DIR/$OUTPUT_ZIP"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo -e "${RED}Error: Source directory '$SOURCE_DIR' not found.${NC}"
    exit 1
fi

# Prepare dist directory
echo -e "${BLUE}Preparing dist directory...${NC}"
mkdir -p "$DIST_DIR"
# Remove specific output file if it exists, instead of wiping the whole directory
if [ -f "$OUTPUT_PATH" ]; then
    rm "$OUTPUT_PATH"
fi

# Create the zip file
echo -e "${BLUE}Zipping add-on files...${NC}"
cd "$SOURCE_DIR"
# -q for quiet (we'll show result at end), -r for recursive
# Excluding common unnecessary files
zip -q -r "$OUTPUT_PATH" . -x "*.git*" -x "*.DS_Store*"
cd "$PROJECT_ROOT"

echo -e "${GREEN}Build complete!${NC}"
echo -e "Output file: ${OUTPUT_PATH}"
echo -n "File size: "
du -h "$OUTPUT_PATH" | cut -f1
