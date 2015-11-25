#!/bin/bash

#MSG_BODY=fosdem-cfp.txt
MSG_BODY=talk-reminder.txt
#SUBJECT="[CFP] FOSDEM 2016, RTC devroom, speakers, volunteers neeeded"
SUBJECT="[CFP] reminder! FOSDEM RTC dev-room talks: deadline Friday"

cat fosdem-lists.txt | while read ;
do

  cat $MSG_BODY | \
    mail -s "$SUBJECT" \
        -a "From: Daniel Pocock <daniel@pocock.pro>" \
        -a "Content-Type: text/plain; charset=UTF-8" \
        "$REPLY"

done

