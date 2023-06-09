echo "Copying vim prefrences..."
MY_PATH="$(dirname -- "${BASH_SOURCE[0]}")"
cp -vR $MY_PATH/.vim ~/.vim
cp $MY_PATH/.vimrc ~/.vimrc