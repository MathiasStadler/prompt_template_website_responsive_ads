# Guide to Set Up Remote Desktop (RDP) with Xrdp on Debian 12 [![alt text][1]](https://www.howtoforge.com/guide-to-set-up-remote-desktop-with-xrdp-on-debian-12/)
<!-- Link sign - Don't Found a better way :-( - If you know a better method? - send me a email -->
[1]: ./img/link_symbol.svg

## on raspberry pi

```bash
2005  sudo apt update
 2006  sudo apt upgrade
 2007  sudo apt install tasksel
 2008  sudo tasksel
 2009  sudo apt install xrdp
 2010  sudo systemctl is-enabled xrdp
 2011  sudo systemctl status xrdp
 2012  mkdir -p /etc/xrdp/certs; cd /etc/xrdp/certs
 2013  ls /etc/xrdp/cert.pem 
 2014  cd  /etc/xrdp/cert.pem 
 2015  cat  /etc/xrdp/cert.pem 
 2016  pwd
 2017  cd /etc/xrdp/
 2018  ls -la
 2019  ls -ltra
 2020  sudo systemctl restart xrdp
 2021  sudo ufw allow OpenSSH
 2022  ufw --help
 2023  sudo apt install ufw
 2024  ufw --help
 2025  sudo ufw enable
 2026  sudo ufw allow 3389
```

## Local client

```bash
1907  sudo systemctl status xrdp
 1908  sudo apt-get update
 1909  sudo apt-get install xrdp
 1910  sudo systemctl status xrdp

```

## xrdp error log  [![alt text][1]](https://github.com/neutrinolabs/xrdp/issues/2512)

cat /var/log/xrdp.log
