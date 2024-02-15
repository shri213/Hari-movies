if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone Hari-movies/Hari-movies
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Hari-movies
fi
cd /Hari-movies
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
