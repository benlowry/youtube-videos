A curated list of YouTube videos on topics that interest me.

Downloading the videos requires "youtube-dl" be installed, the python version is preferred:

    sudo apt-get install -y python3 python3-pip
    python3 -m pip install youtube-dl --upgrade

Add new videos to concerts/artist-name/id

    touch concerts/right-said-fred/abcd12345890

Add new workouts to workouts/id

    touch workouts/abcd12345890

First run "prepare-batches.sh" which will scan the folders to determine which videos are not downloaded and then it will write a batch text file with all the missing videos to `concerts.txt` and `workouts.txt`.  Then use `youtube-dl concerts` or `youtube-dl workouts` to fetch the missing videos.