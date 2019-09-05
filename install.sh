dir="$HOME/Code"
mkdir -p $dir
cd $dir
git clone --recursive https://github.com/m4n1ok/osx-bootstrap.git osx-bootstrap
cd osx-bootstrap
bash bootstrap.sh
