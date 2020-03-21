#!/bin/sh
echo "=========================================================================================="
echo "=========================================================================================="
echo " "
echo "                                      Hexo Website Panel"
echo " "
echo "                                         by @lei2rock"
echo " "
echo "=========================================================================================="
echo "=========================================================================================="
HexoPath=$(cd "$(dirname "$0")"; pwd)
cd ${HexoPath}
printf "\033[32mINFO \033[0m Hexo 根目录："${HexoPath};
echo " "
echo " "
echo "[1] 本地预览";
echo "[2] 更新主题";
echo "[3] 新主题提交 GitHub";
echo " "
printf "请选择：";
read answer
if [ "$answer" == "1" ] || [ "$answer" == "" ]; then
	echo " "
	printf "\033[32mINFO \033[0m 启动本地预览...\n";
	echo " "
	hexo clean
	sed -i "" '18s/imageLink/imageLink.replace(\/\![0-9]{3,}x\/,"")/' themes/next/source/js/utils.js
	hexo s
	sed -i "" '18s/.replace(\/\!\[0-9\]{3,}x\/,\"\")//' themes/next/source/js/utils.js
	exec ${HexoPath}/hexo.sh
else
	if [ "$answer" == "2" ]; then
		echo " "
		printf "\033[32mINFO \033[0m 正在更新主题...\n";
		echo " "
		git submodule update --remote
		echo " "
		printf "\033[32mINFO \033[0m 主题更新完毕！\n";
		exec ${HexoPath}/hexo.sh
	else
		if [ "$answer" == "3" ]; then
			echo " "
			printf "\033[32mINFO \033[0m 准备提交 GitHub...\n";
			echo " "
			git add .
			git commit -m "Update next"
			git push origin src
			echo " "
			printf "\033[32mINFO \033[0m 提交 GitHub 完毕！\n";
			exec ${HexoPath}/hexo.sh
		else
			echo " "
			printf "\033[31mERROR \033[0m 输入错误，请返回重新选择...\n";
			exec ${HexoPath}/hexo.sh
		fi
	fi
fi
