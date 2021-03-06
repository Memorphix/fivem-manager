# Introduction
This is just a **simple script** that is supposed to make it easier for you to manage your server without having to write multiple commands, create screens etc. It will not detect crashes, so if your server crashes and the screen still exists - it'll assume that the server is still running, however you'll have the ability to restart it. 

## How to use it  
Clone the repository. You **need to edit two lines** which gives the path to your FiveM server's data (where your ``server.cfg`` file is) and server (where your ``run.sh`` file is) directory.

### To clone the repository:
```bash
cd ~
git clone https://github.com/Memorphix/fivem-manager.git
```

## Adding an alias
To make it easier to use, you should add an alias. Do the following command:

```bash
echo 'alias fivem="bash ~/fivem-manager/fivemanager.sh"' >> ~/.bashrc
exit #You need to relog for affected changes to take place
```

Exit the current session, and log back in. Now you can write ``fivem`` in the console, and the manager prompt will show up. Use numbers to choose the option you want to take in the manager prompt.
