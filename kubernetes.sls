kubernetes:

  pkgrepo.managed:
    - humanname: kubernetes
    - name: deb http://apt.kubernetes.io/ kubernetes-xenial main
    - file: /etc/apt/sources.list.d/kubernetes.list
    - gpgcheck: 1
    - key_url: https://packages.cloud.google.com/apt/doc/apt-key.gpg
  pkg:
    - installed
    - pkgs:
      - docker.io
      - apt-transport-https
      - kubeadm
      - kubelet
      - kubectl
"kubeadm join 10.2.3.83:6443 --token qhjufs.7elcxi29fnsky1tg --discovery-token-ca-cert-hash sha256:7ae7be68e8c4a7c66525ffc0269ce3bf2abe818985033e4ee96834034504be44":
  cmd.run