---
layout: page
title: Ubuntu 
permalink: /ubuntu/
---

# Ubuntu Laptop Settings and Configurations
Hello! All my ubuntu resources here!

## KDE Setup
### ADD Service Menu Items
- Add files to `/home/<user>/.local/share/kservices5/ServiceMenus/`


## Post Install Setup
1. [Oh-My-Zsh](https://ohmyz.sh/) - a must install for all linux shell users!!!
- Source: https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961
- [Syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [history-substring](https://github.com/zsh-users/zsh-history-substring-search)

2. Disable IPv6
- Add to the end of `/etc/sysctl.conf`
`````
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
`````
- execute `sudo sysctl -p  to restart sysctl`

3. Reduce Swappiness (for SSD) - Sharply reduce the inclination to swap
- To check: `cat /proc/sys/vm/swappiness`
- To change: `sudo vi /etc/sysctl.conf`
- and set `vm.swappiness=10`

4. Fix Search Bar in Synaptic
`````
sudo apt-get install apt-xapian-index
sudo update-apt-xapian-index -vf
`````

5. Set logrotate files to compress by default
- Modify `/etc/logrotate.conf`
- Uncomment "compress"

6. Shut down apport system crash reports
- `sudo gedit /etc/default/apport`
- Set "enabled=1" to "enabled=0"
- `sudo service apport stop`

7. Preload to load apps faster after startup
- Package install: `sudo apt-get install preload`
- To check the config and add your own settings: `sudo gedit  /etc/preload.conf`

8. For **SSD drives** only, do fstrim daily
- `sudo mv -v /etc/cron.weekly/fstrim /etc/cron.daily`


## Coloured Log Files
- Source = [ccze](http://pwet.fr/man/linux/commandes/ccze/)
- Package install: `sudo apt-get install ccze`
- Usage: `tail /var/log/syslog | ccze -A`
- Export to html: `cat /var/log/syslog | ccze -h > ~/Desktop/syslog.html`
- Config options: `sudo vim /etc/cczerc`


## Coloured Man pages
- Package install: `sudo apt install most`
- Add to .bashrc file: `export PAGER="most"`
- Add to .zshrc file `plugins=(last-working-dir colored-man-pages)`

## Dropbox Workaround for ext4 Filesystem
- Source = [how-to](https://www.linuxuprising.com/2018/11/how-to-use-dropbox-on-non-ext4.html)
- Git Repo = [https://github.com/dark/dropbox-filesystem-fix](https://github.com/dark/dropbox-filesystem-fix)

## Enable timestamp in history command
- For bash, add to .bashrc `export HISTTIMEFORMAT="%F %T " `
- For zsh, add to .zshrc `alias history='history -E' `

## OCR your PDF file
- Source = [ocrmypdf](https://ocrmypdf.readthedocs.io/en/latest/cookbook.html)
- Example: `ocrmypdf --output-type pdf --force-ocr input.pdf output.pdf`

## Limit program cpu usage
- Source = [how-to](https://www.addictivetips.com/ubuntu-linux-tips/limit-program-cpu-usage-on-linux/)
`````
ps aux | grep <program-name>
sudo cpulimit -p process-ID -l percentage-number
sudo cpulimit -p 18976 -l 15
`````

### Contact me

[jtibrewala@gmail.com](mailto:jtibrewala@gmail.com)
