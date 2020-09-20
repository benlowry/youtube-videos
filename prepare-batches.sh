MEDIA_PATH=$1
if [ -z $MEDIA_PATH ]; then
    MEDIA_PATH=/media/benlowry/MEDIA
fi
echo "$MEDIA_PATH"
for folder in concerts workouts; do
    rm $folder.txt
    echo "folder $folder"
    for entity in `ls $folder/`; do
        echo "person $entity"
        for file in `ls $folder/$entity/`; do
            echo "file $file"
            echo "https://www.youtube.com/watch?v=$file" >> $folder.txt
        done
    done
done
