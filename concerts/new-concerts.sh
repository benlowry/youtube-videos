mkdir -p artist
for x in https://www.youtube.com/watch?v=video1 \
https://www.youtube.com/watch?v=video2 \
https://www.youtube.com/watch?v=video3; do
    echo "" > artist/${x/https:\/\/www.youtube.com\/watch?v=/}
done