# RSS-JPCERT

スクレイピングとクーロンでJPCERTのRSS情報をメールで配信する

#### Usage

1.ファイルを任意のディレクトリに設置する  
```
$ ls /home/hogehoge/bin/
jpcert_rss.rb     jpcert_vulnerability_rss.rb     jpcert.sh       jpcert_backup.sh      jpcert_vulnerability_backup.sh        jpcert_vulnerability.sh
```

```
$ crontab -l
#JPCERT_RSS
0 0-23/4 * * * cd /home/hogehoge/bin && /usr/local/bin/ruby jpcert_rss.rb
01 0-23/4 * * * /home/hogehoge/bin/jpcert.sh >/dev/null 2>&1
02 0-23/4 * * * /home/hogehoge/bin/jpcert_backup.sh >/dev/null 

#JPCERT_V_RSS
0 0-23/4 * * * cd /home/hogehoge/bin && /usr/local/bin/ruby jpcert_vulnerability_rss.rb
01 0-23/4 * * * /home/hogehoge/bin/jpcert_vulnerability.sh >/dev/null 2>&1
02 0-23/4 * * * /home/hogehoge/bin/jpcert_vulnerability_backup.sh >/dev/null

```


以下のようにでメール上でRSSの確認ができる。
```
sub:[JPCERT] Recent Vulnerability Notes
TERASOLUNA Server Framework for Java(WEB) の Validator に入力値検査回避の脆弱性
http://jvn.jp/jp/JVN86448949/
2015-04-10 15:00:00

S2Struts の Validator に入力値検査回避の脆弱性
http://jvn.jp/jp/JVN91383083/
2015-04-10 14:00:00

NTP daemon (ntpd) に複数の脆弱性
http://jvn.jp/vu/JVNVU95993136/
2015-04-10 11:45:00

OpenSSL に複数の脆弱性
http://jvn.jp/vu/JVNVU95877131/
2015-04-09 16:00:00

複数の Apple 製品の脆弱性に対するアップデート
http://jvn.jp/vu/JVNVU91828320/
2015-04-09 12:45:00
```


