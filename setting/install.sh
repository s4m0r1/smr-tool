echo '初期設定します'
echo 'このツールではさもり(twitter.com/s4m0r1)がいつも使っているツールを簡単にインストールするためのツールです。'
echo 'なにか不具合があるかもしれないので仮想環境で実行する場合はしっかりと仮想環境をコピーするなりなんなりしましょう。'
echo '実行される場合の内容です。'
echo 'zshell'
echo 'vim'
echo 'apt:yumそれぞれリポジトリ追加'
echo 'centosであればhttpd ubuntuであればenginx'
echo　'PHP7'
echo  'pythonがインストールされます'
echo '実行される場合'
echo $HOME 'にgit/smr/というディレクトリが追加されます。'
'ここでいろいろ聞く cuiだけならターミネータとかいらねぇよな的な'
'メモ
zshell nginx php7.0
Centならyumでの設定Ubuntuならaptでの設定
どちらにしろリポジトリは追加しておく。'
echo
sleep 5
clear
echo file setting ...
sleep 2
'どうせならちゃんとディレクトリを合わせておきたいので~/git/smr/に配置'
cd ~
mkdir git
cd git
echo git clone smrtools
git clone github.com/s4m0r1/smr
cd smr
