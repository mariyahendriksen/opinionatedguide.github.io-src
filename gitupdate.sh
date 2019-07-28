make html
make publish
cd output
git add .
git commit -m autoupdated
git push -u origin master
cd ..
git add .
git commit -m autoupdated
git push -u origin master