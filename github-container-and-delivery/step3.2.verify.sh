URL=$(<URL.txt)
curl -s "$URL"

if [[ ! "$URL" =~ ^(https?://)?ghcr\.io ]]; then
    # URL does not start with 'ghcr.io'
    echo "URL does not start witg ghcr.io"
    exit 1
fi

if [[ $? -ne 0 ]]; then
    # Failed to retrieve contents from the URL
    echo "No response from URL"
    exit 1
fi