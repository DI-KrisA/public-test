​​​echo "Creating repository..."

mkdir .git
attrib +h .git
git init >> .git/git_init_log.txt

echo "Creating default gitignore file..."
printf "*.doc*\n*.xls*\n*ppt*\n*.csv\n*.jpg\n*.png\n*.bmp\n*.tif\n*.tiff" > .gitignore
attrib +h .gitignore

echo "Adding files to git repo..."
git add . >> .git/git_init_log.txt

echo "Initial commit..."
git commit -m "Initial commit" >> .git/git_init_log.txt

echo "Compressing objects database..."
git gc >> .git/git_init_log.txt

echo "Removing initialisation script..."
rm create_new_git_repo.sh

echo "Done"
exit
