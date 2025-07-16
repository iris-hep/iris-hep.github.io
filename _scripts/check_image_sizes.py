import os
import sys

# Define the maximum allowed image size in bytes
MAX_IMAGE_SIZE_BYTES = 150 * 1024  # 150KB

def check_image_sizes(filenames):
    """
    Checks the file size of image files and exits with an error if any exceed the maximum.
    """
    errors = []
    for filename in filenames:
        file_size = os.path.getsize(filename)
        if file_size > MAX_IMAGE_SIZE_BYTES:
            errors.append(f"Image '{filename}' exceeds the maximum allowed size ({MAX_IMAGE_SIZE_BYTES / 1024:.2f} KB). Current size: {file_size / 1024:.2f} KB.")

    if errors:
        for error in errors:
            print(f"Error: {error}")
        sys.exit(1) # Fail the commit
    else:
        print("All image files are within the allowed size limits.")

if __name__ == "__main__":
    # Get the list of staged files from pre-commit
    staged_files = sys.argv[1:] 
    check_image_sizes(staged_files)
