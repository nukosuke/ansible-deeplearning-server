# deeplearning-server
ansible DeepLearning GPUサーバ構築 playbook

- CUDA
- chainer
- caffe
- pylearn2

## 環境
ubuntu server 14.04 LTS

## インストール
インストール先の情報を書いた `hosts` ファイルを用意する。

```
[all]
192.168.0.100
192.168.0.101
192.168.0.102
192.168.0.103

[all:vars]
ansible_sudo_pass='_password'
```

インストールする。

```sh
$ ./install.sh
```

### パッケージを個別にインストールする場合

```sh
$ ansible-playbook -i hosts cuda/cuda.yml
```
