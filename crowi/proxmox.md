# さもり的Proxmox使えるメモ


###環境
Thinkpad t470s
CPU:i5-7500u
RAM:20GB
にて動作させた。
メモリ20Gbなんて基本ないと思うんでどうにか調整してみてください

##最終的には
複数のProxMoxを接続しBackUp用などそれぞれ分けていきます。


##仮想環境について
ここでかなり引っかかりました。仕様はよく調べる用にしよう（笑）
Oracle社のVirtualBoxではProxmoxは正常に動作しません。
理由は、VT-x/AMD-Vが有効化できないためです

ProxMox以外でもESXiなどの環境を立ててみたいときはVMWareを使用しましょう。

##ネットワーク環境について
図２こんな形で行っています
node1: xx.xx.xx.1
node2: xx.xx.xx.2


##ダウンロード
ProxMoxのダウンロードはここ

##インストール
その他の環境を立てるときと同じような形で大丈夫です。
メモリは少し多めにしておくとよいです。
またVT-x/AMD-Vを有効化しておきます
図１
インストールはここなどを参考に。

##インストールが終わったら
そのままログインし

apt update
apt upgrade

を実行

後Exitにてログアウト

##ブラウザからの操作
＊Node1での操作です
https://XX.XX.XX.1:8006 へアクセス
注意:httpsでのみ接続できます
エラーでますが各自例外などに追加しましょう

##ブラウザからnoVNCによるクラスター作成からノード追加まで
図
から
図
へ

noVNCが立ち上がります
図

user:root
password:インストール時の設定

##クラスターの作成
pvecm create "exaple"

##初回の状態を確認
pvecm nodes

##ノードを追加
＊この操作はNode2で
pvecm add xx.xx.xx.1

このあとパスワードが求められるのでNode1のパスワードを入力

##クラスターの確認
＊この操作はNode１で
pvecm status
と入力

Menbership infomation
"---------------------
Nodeid       Votes  name
0x00000001       1  xx.xx.xx.1(local)
0x00000002       2  xx.xx.xx.2

となり追加されていることが確認できます

##実際にWeb上から確認
図
やった～～～

##コマンドまとめ

pvecm status
>>クラスターの確認

pvecm nodes
>>ノードの状態確認

pvecm create XX
>>クラスターの作成

pvecm add xx.xx.xx.xx
>>操作中のノードをxx.xx.xx.xxクラスターに参加
