if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Zinan100/00.git /00
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /00
fi
cd /deleterobot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
