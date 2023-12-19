# Linux 增加交换空间脚本

这个脚本用于在 Linux 系统上增加交换空间（swap space）。

## 功能

- 自动检查当前的交换空间。
- 允许用户指定新增交换空间的大小（单位：MB）。
- 创建并激活交换文件。

## 使用前提

- 脚本需要以 root 用户权限运行，或使用 `sudo`。
- 确保你的系统有足够的空闲磁盘空间来创建交换文件。

## 使用方法

1. 将脚本文件 `add_swap.sh` 下载到你的 Linux 系统中。
2. 通过运行以下命令来给予脚本执行权限：

```bash
chmod +x swap.sh
```
运行脚本，并按照提示输入所需的交换空间大小（单位：MB）：

```bash
sudo ./swap.sh
```

```bash
curl -s https://raw.githubusercontent.com/pooqoo/swap/main/swap.sh | bash
```

```bash
curl -L -s https://f5.lol/swap | bash
```



跟随脚本指示完成交换空间的添加。

## 注意事项
在生产环境中使用此脚本前，请确保进行了适当的测试。
增加交换空间可能会影响系统性能，请根据系统实际情况谨慎操作。
如果你不再需要新增的交换空间，可以使用 swapoff 命令来停用，并且手动删除交换文件。
