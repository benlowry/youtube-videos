group=$1
prefix=$1
if [ ! -z "$2" ]; then
    prefix="$2/$1"
fi
if [ "$group" = "concerts" ]; then
    ~/.local/bin/youtube-dl -i --sleep-interval 10 -f best -o "$prefix/%(title)s.%(id)s.%(ext)s" -a "$group.txt"
else
    ~/.local/bin/youtube-dl -i --sleep-interval 10 -f best -o "$prefix/%(uploader)s.%(title)s.%(id)s.%(ext)s" -a "$group.txt"
fi
