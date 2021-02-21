#!/bin/bash

mode=$1
target=$2

case $mode in
    ftpp)
        cd /tmp
        for i in quia minus debitis expedita qui ab non amet fugit teneturroot; do lorem -p 5 > ${i}.txt ; done
        while true ; do for i in quia minus debitis expedita qui ab non amet fugit teneturroot; do sleep 5; busybox ftpput -u administrator -p Chogory2002 $target ./${i}.txt; done ; done &
    ;;
    ftpg)
        cd /tmp
        while true ; do for i in quia minus debitis expedita qui ab non amet fugit teneturroot; do sleep 5; busybox ftpget -u administrator -p Chogory2002 $target ./${i}.txt; done ; done &
    ;;
    wpa)
       while true; do
           python3 -c "import requests; print(requests.post('https://$target/wp-login.php', headers={'Cookie':'wordpress_test_cookie=WP Cookie check'}, data={'log':'fti', 'pwd':'qwerty123', 'wp-submit':'Log In','redirect_to':      'https://$target/wp-admin/', 'testcookie':'1'}, verify=False).text)"
           sleep 5
        done &
    ;;
    wp)
        while true; do
            curl -k https://$target/
            sleep 5
        done &
    ;;
    http)
        cd /tmp
        while true ; do
            sleep 5
            wget --spider $target -w 5 --random-wait -r
        done &
    ;;
esac
