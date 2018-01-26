# add, commit recent changes
git add .
git commit -m 'building'
git checkout master
# pull other changes
git pull janke master
# build new gitbook
gitbook build
# f to overwirte last publication
# copy into /docs
cp -rf ./_book/. ./docs/ 
# commit recent build
git add .
git commit -m 'publishing'
# publish changes
git push janke	 master

# to execute this file run this command in terminal:
# chmod a+x ./publish.sh