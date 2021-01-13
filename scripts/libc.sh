
SPATH=$(dirname $(readlink -f "$0"))

cd $SPATH/..
export LOCHNESSDIR=$(pwd)

if ! [ -x "$(command -v lemon-clang)" ]; then
	echo "LochNess cross toolchain not found (Did you forget to build toolchain? Or is it just not in PATH?)"
	exit 1
fi

cd $LOCHNESS/LibC
meson setup build --cross $SPATH/lochness-crossfile.txt

cd $LOCHNESSDIR
make libc
