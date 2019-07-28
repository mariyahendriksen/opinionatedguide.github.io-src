make html
make publish
cd output
git add .
git commit -m autoupdated
cd ..
git add .
git commit -m autoupdated
git push -u origin master