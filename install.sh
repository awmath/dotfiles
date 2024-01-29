echo "Add remotes"

for remote in $(env |grep CUSTOM_GIT_REMOTE_); do
    truncated=${remote#"CUSTOM_GIT_REMOTE_"}
    remote_name=$(echo $truncated | cut -f1 -d"=" | awk '{print tolower($0)}')
    remote_url=$(echo $truncated | cut -f2 -d"=")
    git -C $CODESPACE_VSCODE_FOLDER remote add $remote_name $remote_url
done

echo "Set noreply email"
git config user.email github.noreply@sparse-space.de
