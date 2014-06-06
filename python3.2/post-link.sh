# anaconda links python to python3, so do that...
ln -s $PREFIX/bin/python3 $PREFIX/bin/python

echo "Created link $PREFIX/bin/python" >> $PREFIX/.messages.txt
