#!/bin/bash
echo "時刻調整スクリプト"
sleep 2

#管理者権限を持っているか確認
if [ "`whoami`" != "root" ]; then
  echo "rootでこのスクリプトは動かしてください><"
  exit 1
fi

#ファイルの存在からNTPがインストールされているか確認
#されていない場合インストールするか確認

echo "ntpのインストールされているか確認をします"
sleep 2

LOCK_FILE="/etc/ntp.conf"

if [ -f ${LOCK_FILE} ]; then
  echo "インストールされています"

else
  echo "ntpがインストールされていませんntpをインストールしますか？[Y/n]"
  read ANSWER
    case $ANSWER in
      "" | "Y" | "y" | "yes" | "Yes" | "YES" )
      apt install ntp ;;* )
      echo "スクリプトを終了します。" & exit 0;;
    esac
fi

echo "自動で時刻を調整してもよろしいですか[Y/n]"
  read ANSWER
  case $ANSWER in
    "" | "Y" | "y" | "yes" | "Yes" | "YES" )
    echo "a" ;;* )
    echo "スクリプトを終了します。" & exit 1;;
  esac

echo "タイムゾーンの設定を日本にします。"
unset TZ
export TZ=Asia/Tokyo

echo "コンピューターの設定前の時刻です"
date
ntpdate clock.nc.fukuoka-u.ac.jp

echo "調整後の時刻です"
date

echo "ntpによる自動時刻調整機能をONにしますか[Y/n]"
  read ANSWER
  case $ANSWER in
    "" | "Y" | "y" | "yes" | "Yes" | "YES" )
    echo "自動調整をONにしました。" ;;* )
    echo "自動調整機能はそのままになります。";;
  esac
fi

cat << EOT
スクリプトを終了します
      ∧,,∧
　　 (・ω・｀) /|　
　／くＴ￣￣二=二] 三二─
　￣￣￣＼二＼
http://github.com/s4m0r1/
EOT
