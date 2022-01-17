# I don't know credit
from telethon.sync import TelegramClient
from telethon.sessions import StringSession
import os
os.system("cd ~/string;bash a.sh")


APP_ID = 3704772
API_HASH = "b8e50a035abb851c0dd424e14cac4c06"

with TelegramClient(StringSession(), APP_ID, API_HASH) as client:
    print(client.session.save())
