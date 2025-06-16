#!/bin/bash

# 🤖 AI Agent System Prompts - New Prompt Creator
# Usage: ./tools/create-prompt.sh <category> <prompt-name>

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_color() {
    printf "${1}${2}${NC}\n"
}

# Function to show usage
show_usage() {
    print_color $BLUE "🤖 AI Agent System Prompts - New Prompt Creator"
    echo ""
    print_color $YELLOW "Usage:"
    echo "  ./tools/create-prompt.sh <category> <prompt-name>"
    echo ""
    print_color $YELLOW "Categories:"
    echo "  development  - Software development prompts"
    echo "  data-science - Data science and analysis"
    echo "  writing      - Content creation and writing"
    echo "  research     - Research and analysis tasks"
    echo "  general      - General-purpose prompts"
    echo ""
    print_color $YELLOW "Example:"
    echo "  ./tools/create-prompt.sh development python-web-scraping"
    echo ""
}

# Check if correct number of arguments
if [ $# -ne 2 ]; then
    show_usage
    exit 1
fi

CATEGORY=$1
PROMPT_NAME=$2

# Validate category
case $CATEGORY in
    development|data-science|writing|research|general)
        ;;
    *)
        print_color $RED "❌ Invalid category: $CATEGORY"
        echo ""
        show_usage
        exit 1
        ;;
esac

# Create the prompts directory if it doesn't exist
PROMPTS_DIR="prompts/$CATEGORY"
mkdir -p "$PROMPTS_DIR"

# Define the new prompt file path
NEW_PROMPT_FILE="$PROMPTS_DIR/$PROMPT_NAME.md"

# Check if file already exists
if [ -f "$NEW_PROMPT_FILE" ]; then
    print_color $RED "❌ Prompt already exists: $NEW_PROMPT_FILE"
    exit 1
fi

# Copy template and customize
if [ ! -f "templates/prompt-template.md" ]; then
    print_color $RED "❌ Template file not found: templates/prompt-template.md"
    exit 1
fi

print_color $BLUE "🚀 Creating new prompt: $NEW_PROMPT_FILE"

# Copy template
cp "templates/prompt-template.md" "$NEW_PROMPT_FILE"

# Basic customization (replace title placeholder)
TITLE=$(echo "$PROMPT_NAME" | sed 's/-/ /g' | sed 's/\b\w/\U&/g')
sed -i.bak "s/{PROMPT_TITLE}/$TITLE/g" "$NEW_PROMPT_FILE"

# Remove backup file
rm "$NEW_PROMPT_FILE.bak" 2>/dev/null || true

print_color $GREEN "✅ Prompt created successfully!"
echo ""
print_color $YELLOW "Next steps:"
echo "1. Edit $NEW_PROMPT_FILE"
echo "2. Fill in all the {PLACEHOLDER} values"
echo "3. Test your prompt in a real AI agent environment"
echo "4. Update the main README.md to reference your new prompt"
echo ""
print_color $BLUE "💡 Pro Tip: Use the example in examples/ as a reference for customization"