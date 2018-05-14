#CONTIKI_PROJECT值要与其.c文件同名
CONTIKI_PROJECT = cellark-cell-helloworld
all: $(CONTIKI_PROJECT)
#输出详细编译信息:	#或用V=1
#CI=true

TARGET = arm-linux-androideabi

ANDROID_TARGET_PLATFORM=android-24
ANDROID_TARGET_ARCH=arm
ANDROID_EXTERNAL_LIBNCURSES=/mnt/c/Code/contiki/env/android_external_libncurses

#基于contiki项目，并fork后加入对android平台TARGET = arm-linux-androideabi的支持：
CONTIKI = /mnt/c/Code/contiki/env/contiki
include $(CONTIKI)/Makefile.include

#对arkcell分布式系统项目镜像快照使用git仓库作为简单的部署工具，详细说明见Makefile.git-tools
SSH_REPOSITORY_PATH=git@github.com:fightfa/cellark-cell-helloworld.git
include Makefile.git-tools
#TODO 对项目git分支为deployment v1.0或release v1.0的方式，分支只保留可执行文件及其配置文件