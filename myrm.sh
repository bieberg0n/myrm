myrm() {
	case $# in
		0)
			rm -r
			;;
		*)
			args=($@)
			dir=${args[@]:0:$#}
			read -a a -p "是否删除目录:$dir ? [y/n]:"
			if [[ $a == 'y' || $a == 'Y' ]];then
				yes|rm -r $dir
			else
				echo '操作取消'
			fi
			;;
	esac
}

myrm "$@"
