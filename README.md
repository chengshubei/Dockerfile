## 官方nodejs模块太大了, 自己做个简易的, 不很标准

|   版本  |  大小  |
|:-------:|:------:|
| 官方node | 943M |
| 自制node | 156M | 

通过拷贝时区文件和安装目录, 省略安装了一系列的工具, 所以可以做成尽可能小的镜像, 当然都是以无副作用为前提

### 注意事项

    1. node目录应该为新下载的tar.xz文件解压出来的目录，保持目录干净，不要使用旧的nodejs目录，以防止不必要的通过
        npm install -g 引入的模块被打包进镜像
    2. 请确保localtime时区文件的正确性
    3. 将localtime和node目录统一放到Dockerfile同级目录下使用