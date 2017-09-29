
echo Zshellインスコするよ
'ここでいろいろ聞く'
'Centならyumでの設定Ubuntuならaptでの設定'
'' 
echo
sleep 5
clear
echo file setting ...
sleep 2
cd ~ 
mkdir git
cd git
echo git clone smrtools
git clone github.com/s4m0r1/smr
cd smr
git pull

'os ubuntu'

declare -a info=($(./bin/get_os_info))

case ${info[0]} in
ubuntu)
    echo "ubuntu"

    if [[ ${info[1]} == "x86_64" ]]; then
        echo x86_64
    fi
    ;;
*)
    echo "unsupported"
    ;;
esac
