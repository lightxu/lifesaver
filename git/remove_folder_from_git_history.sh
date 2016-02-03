# http://stackoverflow.com/questions/10067848/remove-folder-and-its-contents-from-git-githubs-history
# This is an example which removes node_modules from history
git filter-branch --tree-filter 'rm -rf node_modules' --prune-empty HEAD
echo node_modules/ >> .gitignore
git add .gitignore
git commit -m 'Removing node_modules from git history'
git gc
git push origin master --force
