# NTP 설치 모듈 입니다.
## 사전 준비 사항
* Ansible을 이용한 배포 템플릿 입니다.
* Ansible을 설치하고 /etd/ansible/hosts에 노드그룹 구성이 되어있어야합니다.
```sh
# example
[ntp]
192.168.45.41
```

1. ntp-install.yaml 파일의 'lineinfile'항목의 cidr을 알맞게 수정합니다.
* allow 192.168.45.0/24

2. ntp-install.yaml 파일의 'copy' 항목의 src경로를 알맞게 수정합니다.
* 복사하는 위치경로를 맞게 수정합니다.

3. ansible playbook을 이용하여 ntp서버를 배포합니다.
```sh
ansible-playbook ntp-install.yaml -k
```