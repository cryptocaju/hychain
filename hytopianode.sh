echo -e '\e[1;34m\e[92m'                          
echo -e '                                                                                                                   '
echo -e '       /$$$$$$   /$$$$$$     /$$$$$ /$$   /$$        /$$$$$$  /$$$$$$$  /$$     /$$ /$$$$$$$  /$$$$$$$$  /$$$$$$   '
echo -e '      /$$__  $$ /$$__  $$   |__  $$| $$  | $$       /$$__  $$| $$__  $$|  $$   /$$/| $$__  $$|__  $$__/ /$$__  $$  '
echo -e '     | $$  \__/| $$  \ $$      | $$| $$  | $$      | $$  \__/| $$  \ $$ \  $$ /$$/ | $$  \ $$   | $$   | $$  \ $$  '
echo -e '     | $$      | $$$$$$$$      | $$| $$  | $$      | $$      | $$$$$$$/  \  $$$$/  | $$$$$$$/   | $$   | $$  | $$  '
echo -e '     | $$      | $$__  $$ /$$  | $$| $$  | $$      | $$      | $$__  $$   \  $$/   | $$____/    | $$   | $$  | $$  '
echo -e '     | $$    $$| $$  | $$| $$  | $$| $$  | $$      | $$    $$| $$  \ $$    | $$    | $$         | $$   | $$  | $$  '
echo -e '     |  $$$$$$/| $$  | $$|  $$$$$$/|  $$$$$$/      |  $$$$$$/| $$  | $$    | $$    | $$         | $$   |  $$$$$$/  '
echo -e '      \______/ |__/  |__/ \______/  \______/        \______/ |__/  |__/    |__/    |__/         |__/    \______/   '
echo -e '                                                                                                                   '
echo -e '\e[0m'  

echo  -e  "\e[1;33m===============================SEJA-BENVINDO =============================================V.001===================\e[0m"
sleep 8s
echo  -e  "\e[1;33m===============================INICIANDO EM 5 SEGUNDOS============================================================\e[0m"
sleep 5s
sudo apt update && upgrade -y
echo  -e  "\e[1;33m================================INSTALANDO PACOTES===============================================================\e[0m"
sleep 7s
echo  -e  "\e[1;33m================================INSTALACAO COM SUCESSO==========================================================\e[0m"
sudo apt-get install curl -y
sudo apt install unzip
curl -L https://github.com/HYCHAIN/guardian-node-software/blob/main/cli/linux/guardian-cli-linux -o guardian-clo-linux.zip
unzip guardian-cli-linux.zip
echo -n "Enter with your private key: "
read -s private_key
echo  -e  "\e[1;34m================================RODANDO O NODE=========================================\e[0m"
./guardian-cli-linux guardian run "$private_key" --loop-interval-ms 3600000
sleep 5s
echo  -e  "\e[1;33m============================INSTALACAO COMPLETA=======================================\e[0m"

