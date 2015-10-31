#!/bin/bash

MSG_BODY=fosdem-cfp.txt
SUBJECT="[CFP] FOSDEM 2016, RTC devroom, speakers, volunteers neeeded"

cat fosdem-lists.txt | while read ;
do

  cat $MSG_BODY | \
    mail -s "$SUBJECT" \
        -a "From: Daniel Pocock <daniel@pocock.pro>" \
        "$REPLY"

done

