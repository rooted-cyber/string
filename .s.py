# I don't know credit
from telethon.sync import TelegramClient
from telethon.sessions import StringSession
import os
os.system("cd ~/string;bash a.sh")

print("""
\n\n\033[1;96m Method of Get APP_ID and API_Hash
\033[0mPlease go-to my.telegram.org
Login using your Telegram account
Click on API Development Tools
Create a new application, by entering the required details
If you face any problem then contact us at @thunderuserbot on telegram

""")
APP_ID = int(input("\033[1;93m Enter APP ID here: \033[0m"))
API_HASH = input("\033[1;96m Enter API HASH here: \033[0m")

with TelegramClient(StringSession(), APP_ID, API_HASH) as client:
    print(client.session.save())
