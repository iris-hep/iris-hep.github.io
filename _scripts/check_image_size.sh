#!/bin/bash

MAX_FILE_SIZE_BYTES=$((150 * 1024))  # 150 KB

# Get added and modified staged files
STAGED_FILES=$(git diff --cached --name-only --diff-filter=AM | sort -u)

if [ -z "$STAGED_FILES" ]; then
    echo "No added or modified files staged."
    exit 0
fi

echo "Running file size check on staged files:"
echo "$STAGED_FILES"

HAS_ERROR=0

# Set IFS to newline to safely loop over filenames with spaces
OLD_IFS="$IFS"
IFS=$'\n'

for FILE in $STAGED_FILES; do
    echo "Processing: $FILE"

    if [[ -f "$FILE" ]]; then
        FILE_SIZE=$(wc -c < "$FILE" | tr -d ' ')
        if (( FILE_SIZE > MAX_FILE_SIZE_BYTES )); then
            SIZE_KB=$(echo "scale=2; $FILE_SIZE/1024" | bc)
            MAX_KB=$(echo "scale=2; $MAX_FILE_SIZE_BYTES/1024" | bc)
            echo "❌ Error: '$FILE' exceeds the size limit (${MAX_KB} KB). Current: ${SIZE_KB} KB."
            HAS_ERROR=1
        fi
    else
        echo "⚠️ Warning: '$FILE' does not exist or is not a regular file."
    fi
done

IFS="$OLD_IFS"  # Restore original IFS

if (( HAS_ERROR )); then
    echo "❌ Commit aborted due to oversized files."
    exit 1
else
    echo "✅ All staged files are within size limits."
fi

exit 0
