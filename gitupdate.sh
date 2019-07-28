#/bin/bash

#Build Chapters
cat ./content/chapters/p?-* > ./content/chapters/x1.md
wait
sleep 1
echo "prefix done"
# merge chapter files, done in groups of 10 because 10 before 1 lexiograhpically
cat ./content/chapters/?-* > ./content/chapters/x2.md
sleep 1
wait
cat ./content/chapters/1?-* >> ./content/chapters/x2.md
sleep 1
wait
cat ./content/chapters/2?-* >> ./content/chapters/x2.md
sleep 1
wait
cat ./content/chapters/3?-* >> ./content/chapters/x2.md
echo "chapters done"
# merge appendix files
cat ./content/chapters/a?-* > ./content/chapters/x3.md
sleep 1
wait
echo "appendix done"
# merge prefix, chapter, and appendix
cat ./content/chapters/x1.md ./content/chapters/x2.md ./content/chapters/x3.md > ./content/chapters/y.md
wait
echo "merged, removing temp files"
rm ./content/chapters/x?.md
echo "removed temp files"
# fix image paths (replace ../imgs/ with ./imgs/ )
sed 's/.\/imgs\//..\/imgs\//g' ./chapters/y.md > ./chapters/indev.md
echo "indev file generated"
mv ./content/chapters/y.md ./content/opinionatedeng.md
echo "opininionatedeng.md replaced"

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