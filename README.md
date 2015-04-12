# RSS-JPCERT

スクレイピングとクーロンでJPCERTのRSS情報をメール配信する

ファイルを任意のディレクトリに設置する  
```
$ ls /home/hogehoge/bin/
jpcert_rss.rb     jpcert_vulnerability_rss.rb
```

```
$ crontab -l
#JPCERT_RSS
0 0-23/4 * * * cd /home/hogehoge/bin && /usr/local/bin/ruby jpcert_rss.rb
01 0-23/4 * * * /root/bin/jpcert.sh >/dev/null 2>&1
02 0-23/4 * * * /root/bin/jpcert_backup.sh >/dev/null 

#JPCERT_V_RSS
0 0-23/4 * * * cd /home/hogehoge/bin && /usr/local/bin/ruby jpcert_vulnerability_rss.rb
01 0-23/4 * * * /root/bin/jpcert_vulnerability.sh >/dev/null 2>&1
02 0-23/4 * * * /root/bin/jpcert_vulnerability_backup.sh >/dev/null

```

