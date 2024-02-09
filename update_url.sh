#!/bin/bash

# Set the new workspace URL
echo $GITPOD_WORKSPACE_URL
NEW_WORKSPACE_URL=$GITPOD_WORKSPACE_URL
echo $NEW_WORKSPACE_URL
#!/bin/bash




ENV_FILE_PATH="$PWD/frontend/src/environment.js"
echo $ENV_FILE_PATH
# print(PROJECT_NAME)
# Replace the value of fastAPIUrl in the environment.js file
sed -i "s|fastAPIUrl: '.*'|fastAPIUrl: '$NEW_WORKSPACE_URL'|g" $ENV_FILE_PATH

echo "Updated fastAPIUrl in $ENV_FILE_PATH to $NEW_WORKSPACE_URL"
