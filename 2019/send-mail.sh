#!/bin/bash

MSG_BODY=cfp.txt
#MSG_BODY=talk-reminder.txt
SUBJECT="[CFP] FOSDEM 2019, RTC devroom, speakers, volunteers neeeded"
#SUBJECT="[CFP] reminder! FOSDEM RTC dev-room talks: deadline Friday"

cat mailing-lists.txt | cut -f1 -d, | while read ;
do

  cat $MSG_BODY | \
    mail -s "$SUBJECT" \
        -a "From: FOSDEM RTC Team <fosdem-rtc-admin@freertc.org>" \
        -a "Content-Type: text/plain; charset=UTF-8" \
        "$REPLY"

done

