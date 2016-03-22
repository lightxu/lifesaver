# http://stackoverflow.com/questions/10067848/remove-folder-and-its-contents-from-git-githubs-history
# This is an example which removes node_modules from history
git filter-branch --tree-filter 'rm -rf node_modules' --prune-empty HEAD
echo node_modules/ >> .gitignore
git add .gitignore
git commit -m 'Removing node_modules from git history'
git gc
git push origin master --force


# http://stackoverflow.com/questions/21230090/remove-a-deleted-folder-form-git-history
# Another command that remove folder from histroy
git filter-branch --index-filter \
                  'git rm -r --cached --ignore-unmatch path/to/directory' HEAD
