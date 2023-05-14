# NFS 서버 설치 모듈 입니다.
## 사전 준비 사항
* Ansible을 이용한 배포 템플릿 입니다.
* Ansible을 설치하고 /etd/ansible/hosts에 노드그룹 구성이 되어있어야합니다.
```sh
# example
[nfs]
192.168.45.42
```


. ansible playbook을 이용하여 nfs서버를 배포합니다.
```sh
ansible-playbook nfs-install.yaml -k
```