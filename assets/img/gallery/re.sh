echo "Filename: $1"
echo "Width: $2"
ext="${1#*.}"
file="${1%%.*}"
mv $1 $file-full.$ext
convert -strip -interlace Plane -gaussian-blur 0.05 -quality 85% $file-full.$ext -resize $2x $1
wc -c $file-full.$ext
wc -c $1