#import requests<F3>
#wp_login = 'https://ftilabs.com/wp-login.php'
#wp_admin = 'https://ftilabs.com/wp-admin/'
#username = 'fti'
#password = 'qwerty123'

#with requests.Session() as s:
#    headers1 = { 'Cookie':'wordpress_test_cookie=WP Cookie check' }
#    datas={ 
#        'log':username, 'pwd':password, 'wp-submit':'Log In', 
#        'redirect_to':wp_admin, 'testcookie':'1'  
#    }
#    s.post(wp_login, headers=headers1, data=datas, verify=False)
#    resp = s.get(wp_admin)
#    print(resp.text)


#headers1 = { 'Cookie':'wordpress_test_cookie=WP Cookie check' }
#datas={ 
    #'log':username, 'pwd':password, 'wp-submit':'Log In', 
    #'redirect_to':wp_admin, 'testcookie':'1'  
#}
import requests; print(requests.post('https://ftilabs.com/wp-login.php', headers={'Cookie':'wordpress_test_cookie=WP Cookie check'}, data={'log':'fti', 'pwd':'qwerty123', 'wp-submit':'Log In','redirect_to':'https://ftilabs.com/wp-admin/', 'testcookie':'1'}, verify=False).text)
