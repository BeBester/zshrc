# env
export PATH=${HOME}/bin:${PATH}
export CUDA_HOME=/usr/local/cuda-11.0
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64
export PATH=${CUDA_HOME}/bin:${PATH}
#poetry
export PATH="/home/fei/.local/bin:$PATH"
export ZSH="/root/.oh-my-zsh"
#java
export JAVA_HOME=/usr/lib/java/jdk1.8.0_311 ## 这里要注意目录要换成自己解压的jdk 目录
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:$PATH

#gradle
export GRADLE_HOME=/home/opt/env/java/gradle-4.10
export PATH=${GRADLE_HOME}/bin:${PATH}
# pnpm
export PNPM_HOME="/home/fei/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
