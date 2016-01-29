set -e
set -x

TRAVIS_ROOT="$1"

if [ ! -d "$TRAVIS_ROOT/legion" ]; then
    cd $TRAVIS_ROOT
    git clone --depth 10 https://github.com/StanfordLegion/legion.git
else
    echo "Legion present..."
    find $TRAVIS_ROOT/legion
fi
