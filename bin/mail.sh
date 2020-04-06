#!/usr/bin/env sh

mailboxes="$HOME/mail/dgrig/dgrig/new $HOME/mail/matrix/INBOX/new"
num_mail=0
for i in $mailboxes; do
    in=$(find $i | wc -l)
    num_mail=$(expr $num_mail + $in)
done
if [ $num_mail -gt 2 ]
then
   echo -n "New mail!"
fi
