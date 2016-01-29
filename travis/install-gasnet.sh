set -e
set -x

TRAVIS_ROOT="$1"

if [ ! -d "$TRAVIS_ROOT/gasnet" ]; then
    wget --no-check-certificate -q https://gasnet.lbl.gov/GASNet-1.26.0.tar.gz
    tar -xzf GASNet-1.26.0.tar.gz
    cd GASNet-1.26.0
    mkdir build && cd build
    ../configure --prefix=$TRAVIS_ROOT/gasnet
    make && make install
else
    echo "GASNet installed..."
    find $TRAVIS_ROOT/gasnet
fi
