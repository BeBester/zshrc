# Setting PATH for JAVA 使用jenv后可以注释
# export JAVA_8_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home"
# export JAVA_12_HOME="/Library/Java/JavaVirtualMachines/jdk-12.0.1.jdk/Contents/Home"
# export JAVA_11_HOME="/usr/local/opt/openjdk@11"
# export JAVA_HOME=$JAVA_8_HOME
# alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
# alias jdk12="export JAVA_HOME=$JAVA_12_HOME"
# alias jdk11="export JAVA_HOME=$JAVA_11_HOME"

#anaconda3 Path  --Python
export ANACONDA_HOME="/usr/local/anaconda3"
export PATH=$PATH:$ANACONDA_HOME/bin
alias python="/usr/local/anaconda3/bin/python3"

# Setting PATH for TOMCAT 7
export CATALINA_HOME="/usr/local/apache-tomcat-7.0.96"
export PATH=$PATH:$TOMCAT_HOME/bin

#编译Hadoop源码配置
export PATH="/usr/local/Cellow/protoc/2.5/bin:$PATH"
export OPENSSL_ROOT_DIR="/usr/local/Cellar/openssl/1.0.2s"
export OPENSSL_INCLUDE_DIR="/usr/local/Cellar/openssl/1.0.2s/include"
export OPENSSL_LIBRARIES="/usr/local/Cellar/openssl/1.0.2s/lib"
#Setting PATH for Hadoop
export HADOOP_HOME="/usr/local/hadoop-2.7.2"
export PATH=$PATH:$HADOOP_HOME/bin

#Scala_HOME
export Scala_HOME=/usr/local/opt/scala@2.11
export PATH="/usr/local/opt/scala@2.11/bin:$PATH"

#go 工作空间非安装目录
export GOPATH=/Users/fei/go
export PATH=$PATH:$GOPATH
export GOPROXY=https://mirrors.aliyun.com/goproxy/

export PATH="/usr/local/opt/node@16/bin:$PATH"
export PATH="/Users/fei/bin:$PATH"

export PY_SITE_PACK="/usr/local/anaconda3/lib/python3.10/site-packages"

# java版本管理
export PATH="$HOME/.jenv/bin:$PATH"

# 具有linux功能的常用命令 替换mac原生的 如sed
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
