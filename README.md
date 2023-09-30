# 20230929 Setup
Got a basic setup working. I created a vault_vars.yml files using
```bash
> EDITOR=vim ansible-vault create vault_vars.yml
```
I load the defined var (ansible_become_password) using vars_files clause in ```setup.yml```.
I add ```ansible_become_pass='{{ ansible_become_password }}'``` to the hosts entry for xander. This allows ```become: true``` to work correctly.

I'm now adding docker and while it seems to work, I have lost the entries from the existing Plex homescreen. Not sure how/why. *Addendum: This is back and working the next morning with no fix applied.*

*Installing docker-ce may require a docker.list file in ```/etc/apt/sources.list.d/```. This was present on xander but may have been added manually by me previously.*