if [ "$TRAVIS_BRANCH" != "swagger" ]; then
  exit 0; 
fi
    
export GIT_COMMITTER_EMAIL=i"mariodeng@googlemail.com"
export GIT_COMMITTER_NAME="Mario Deng"

git init || exit
git config user.name "Travis CI" || exit
git config user.email "mariodeng@googlemail.com" || exit
git add . || exit
git commit -m "auto deploy from travis after update" || exit
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" swagger:master > /dev/null 2>&1}} || exit
