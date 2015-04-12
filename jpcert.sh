#!/bin/bash
LC_ALL=en_US.UTF-8
CONTENT_TYPE=text/plain; charset=UTF-8
export LANG=ja_JP.eucJP 

FROM=hogehoge@hoge.hoge
TO=hogehoge@hoge2.hoge
SUBJECT='[JPCERT] Security Alerts & Weekly Report'

cd /home/hogehoge/bin/

if diff jpcert_data.txt jpcert_backup.txt ; then 
true
else
 cat << EOM | /usr/sbin/sendmail -t
From: $FROM
To: $TO
Subject: $SUBJECT

`LANG=C sed -e "s/T\(.*\)+09:00/ \1/g" jpcert_data.txt | nkf -j` 
EOM
fi


