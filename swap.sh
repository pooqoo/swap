#!/bin/bash

# 提示用户输入交换文件的大小（单位：MB）
echo -n "请输入交换文件的大小（单位：MB）: "
read SWAP_SIZE_MB

# 将输入的MB转换为字节，以便fallocate使用
SWAP_SIZE=${SWAP_SIZE_MB}M

# 设置交换文件的路径
SWAP_FILE=/swapfile

# 检查当前的交换空间
echo "当前交换空间："
swapon --show

# 创建交换文件
fallocate -l $SWAP_SIZE $SWAP_FILE || dd if=/dev/zero of=$SWAP_FILE bs=1M count=$SWAP_SIZE_MB

# 设置交换文件权限
chmod 600 $SWAP_FILE

# 格式化为交换空间
mkswap $SWAP_FILE

# 启用交换空间
swapon $SWAP_FILE

# 显示交换空间信息
echo "交换空间已增加："
swapon --show

# 可选：使配置永久生效
echo "$SWAP_FILE none swap sw 0 0" >> /etc/fstab
