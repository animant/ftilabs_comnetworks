curl -i -s -k  -X $'POST' \
    -H $'Host: ftilabs.com' -H $'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:85.0) Gecko/20100101 Firefox/85.0' -H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H $'Accept-Language: en-US,en;q=0.5' -H $'Accept-Encoding: gzip, deflate' -H $'Referer: https://ftilabs.com/wp-login.php?redirect_to=https%3A%2F%2Fftilabs.com%2Fwp-admin%2F&reauth=1' -H $'Content-Type: application/x-www-form-urlencoded' -H $'Content-Length: 103' -H $'Origin: https://ftilabs.com' -H $'Connection: close' -H $'Cookie: wordpress_test_cookie=WP%20Cookie%20check' -H $'Upgrade-Insecure-Requests: 1' \
    -b $'wordpress_test_cookie=WP%20Cookie%20check' \
    --data-binary $'log=fti&pwd=qwerty123&wp-submit=Log+In&redirect_to=https%3A%2F%2Fftilabs.com%2Fwp-admin%2F&testcookie=1' \
    $'https://ftilabs.com/wp-login.php'
