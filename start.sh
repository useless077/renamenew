if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/useless077/renamer.git /renamer
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /renamer
fi
cd /rename 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
