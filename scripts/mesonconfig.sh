SPATH=$(dirname $(readlink -f "$0"))

cd $SPATH/..
export LOCHNESSDIR=$(pwd)

cd ../LibC
rm -r build
meson setup build --cross $SPATH/lochness-crossfile.txt

cd ../applications
rm -r build
meson setup build --cross $SPATH/lochness-crossfile.txt

cd ../system
rm -r build
meson setup build --cross $SPATH/lochness-crossfile.txt

cd ../kernel
rm -r build
meson setup build --cross $SPATH/lochness-crossfile.txt
