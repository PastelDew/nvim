# Setup

1. fd, ripgrep 설치

```sh
apt-get install fd-find ripgrep
```

2. npm, unzip 설치 (언어 서버 및 도구 설치에 필요)

```sh
# npm 설치 (Node.js 설치 시 포함)
# 예시: Ubuntu/Debian
sudo apt update
sudo apt install nodejs npm

# unzip 설치
# 예시: Ubuntu/Debian
sudo apt install unzip
```

3. neovim 설치
- from github release page

3. `.tmux.conf, .zshrc`와 `.config/nvim`을 Host의 `~` 로 옮기기

```sh
cp -r .tmux.conf .zshrc .config ~
```
