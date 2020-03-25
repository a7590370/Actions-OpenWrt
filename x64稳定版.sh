＃！/ bin / bash
＃修改默认IP
＃ SED -i的/ 192.168.1.1 / 192.168.50.5 / G'包/基层-文件/文件/ bin中/ config_generate
＃修改版本号
SED -i ' S /的OpenWrt /滨的AutoBuild $（日期“+％Y.％米。％d”）@的OpenWrt /克'包/贫/默认的设置/文件/ ZZZ-默认的设置
＃可移除不可用    
rm -rf包/ lean / luci-app-dockerman
＃添加额外预算
git clone https://github.com/tty228/luci-app-serverchan.git包/ luci-app-serverchan
git clone https://github.com/KFERMercer/luci-app-dockerman.git包/ luci-app-dockerman
git clone https://github.com/bin20088/luci-app-koolddns.git包/ luci-app-koolddns
git clone https://github.com/bin20088/luci-theme-butongwifi.git包/ luci-theme-butongwifi
＃添加神秘代码
svn co https://github.com/bin20088/lede/trunk/files
./scripts/feeds更新-a
./scripts/feeds install -a
＃授予koolddns权限
chmod 0755软件包/luci-app-koolddns/root/etc/init.d/koolddns
chmod 0755软件包/ luci-app-koolddns / root / usr / share / koolddns / aliddns
