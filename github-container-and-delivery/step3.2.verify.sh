URL=$(<URL.txt)
curl -s "$URL"

if [[ ! "$URL" =~ ^(https?://)?ghcr\.io ]]; then
    # URL does not start with 'ghcr.io'
    echo "URL does not start with ghcr.io"
    exit 1
fi

# Step 1: Pull the image from the registry
echo "Pulling image $URL..."
if ! docker pull $URL; then
  echo "Image $URL not found on the registry."
  exit 1
fi

# Step 2: Run the pulled image in detached mode
echo "Running image in detached mode..."
if ! docker run -d $URL; then
  echo "Failed to start the container."
  exit 1
fi

echo "Container started successfully in detached mode."