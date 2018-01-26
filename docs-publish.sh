# add, commit recent changes
git add .
git commit -m 'building'
git checkout master
# pull other changes
git pull origin master
# enter gitbook source
cd src
# build new gitbook
gitbook build
# copy it out of the way for branch change
# f to overwirte last publication
cp -rf ./_book/. ../docs/ 
# return to parent directory
cd ..
# commit recent build
git add .
git commit -m 'publishing'
# publish changes
git push origin master

# to execute this file run this command in terminal:
# chmod a+x ./publish.sh