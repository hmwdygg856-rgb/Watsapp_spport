
import http.client
import time
import sys 
import os


Y = '\033[1;32m'
M = '\033[31m'
K = '\033[91m'
B = '\033[37m'
E = '\033[1;31m'
B = '\033[2;36m'
G = '\033[1;32m'
S = '\033[1;33m'
R = '\033[1;31m' 
X = '\033[1;33m' 
R2 = '\033[2;31m' 
G = '\033[2;32m' 
B = '\033[2;34m'#ازرق
P = '\033[2;35m' #وردي
B2 = '\033[2;36m'#سمائي
B3 = '\033[1;34m' #ازرق فاتح



def print_separator():
    print("=" * 50)

def loading_message(message, delay=0.5):
    for char in message:
        sys.stdout.write(char)
        sys.stdout.flush()
        time.sleep(delay)
    print()
    
    
    
loading_message(f"""{R}██████████████████{R}█████████
{R}███████▀▀▀{B}░░░░░░░{R}▀▀▀███████
████▀{B}░░░░░░░░░░░░░░░░░{R}▀████          ███│░░░░░░░░░░░░░░░░░░░│███
██▌{B}│░░░░░░░░░░░░░░░░░░░{R}│▐██        ██{B}░└┐░░░░░░░░░░░░░░░░░{R}┌┘░██
██{B}░░└┐░░░░░░░░░░░░░░░┌┘{R}░░██
██{B}░░┌┘{G}▄▄▄▄▄{R}░░░░░{G}▄▄▄▄▄└┐{R}░░██
██▌{B}░│{G}██████{R}▌░░░{G}▐██████{R}│░▐██
███{B}░│{G}▐███▀▀{R}░░▄░░{G}▀▀███▌{R}│░███
██▀─{B}┘░░░░░░░▐█▌░░░░░░░{R}└─▀██
██▄{B}░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░{R}▄██
████{B}▄─┘██▌░░░░░░░▐██└─▄{R}████
█████{B}░░▐█{P}─┬┬┬┬┬┬┬─{R}█▌░░█████
████▌{B}░░░▀{P}┬┼┼┼┼┼┼┼┬{R}▀░░░▐████
█████▄{B}░░░{P}└┴┴┴┴┴┴┴┘{R}░░░▄█████
███████▄{B}░░░░░░░░░░░{R}▄███████
██████████{B}▄▄▄▄▄▄▄{R}██████████
███████████████████████████
""", delay=0.01)







print(f'''
{G}Whats{R}App{P} reports{B2} Number

''')


on = input(f'''
{G}phone {P} number{R} : '''

)


apikey = "20cee301f6msh5d883ac176f70f2p193bf3jsn0559546bf677"
apihost = "whatsauth-whatsapp-otp.p.rapidapi.com"

headers = {
    'x-rapidapi-key': apikey,
    'x-rapidapi-host': apihost
}

for rito in range(50):
    gdlss = http.client.HTTPSConnection(apihost)
    
    try:
        gdlss.request("GET", f"/send-otp/?phone={no}&length=5&expiry=2&company=test-name", headers=headers)
        response = gdlss.getresponse()
        data = response.read()
        print(Y+f"Gonderildi {rito + 1}:", data.decode("utf-8"))
    except Exception as e:
        print(K+f"Gonderme {rito + 1} hatası:", str(e))
    finally:
        gdlss.close()
    
    time.sleep(2)
