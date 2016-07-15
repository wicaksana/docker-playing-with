Setup an image with pre-installed mysql server.

The `dockerfile` refers to `setup.sh` to do some administrative stuff (create user, create database and grant privileges, etc.) 
on the newly installed mysql. The variables in `setup.sh` refer to `ENV` in `dockerfile`. 