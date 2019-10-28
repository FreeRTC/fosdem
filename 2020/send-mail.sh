#!/bin/bash

set -e

MSG_BODY=cfp.txt
#MSG_BODY=talk-reminder.txt
SUBJECT="[CFP] FOSDEM 2020, RTC devroom, speakers, volunteers neeeded"
#SUBJECT="[CFP] reminder! FOSDEM RTC dev-room talks: deadline Sunday"

THE_UUID=`uuidgen`
MESSAGE_ID="<${THE_UUID}@freertc.org>"

cat $MSG_BODY | \
    mail -s "$SUBJECT" \
        -r "fosdem-rtc-admin@freertc.org" \
        -a "From: FOSDEM RTC Team <fosdem-rtc-admin@freertc.org>" \
        -a "Content-Type: text/plain; charset=UTF-8" \
        -a "Message-Id: ${MESSAGE_ID}" \
        discuss@lists.freertc.org

cat mailing-lists.txt | cut -f1 -d, | while read ;
do

  cat $MSG_BODY | \
    mail -s "Fwd: $SUBJECT" \
        -r "fosdem-rtc-admin@freertc.org" \
        -a "From: FOSDEM RTC Team <fosdem-rtc-admin@freertc.org>" \
        -a "Content-Type: text/plain; charset=UTF-8" \
        -a "References: ${MESSAGE_ID}" \
        "$REPLY"

done

