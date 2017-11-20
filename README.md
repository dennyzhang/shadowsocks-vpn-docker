# Basic Intro
<a href="https://github.com/DennyZhang?tab=followers"><img align="right" width="200" height="183" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/fork_github.png" /></a>

[![LinkedIn](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/linkedin.png)](https://www.linkedin.com/in/dennyzhang001) [![Github](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/github.png)](https://github.com/DennyZhang) [![Slack](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/slack.png)](https://www.dennyzhang.com/slack)

Docker shadowsocks VPN via docker

1. Read and understand basic usage of Shadowsocks: [link](https://shadowsocks.org/en/index.html)
2. Deploy Shadowsocks server in your VM via docker-compose.

```
git clone https://github.com/DennyZhang/shadowsocks-vpn-docker.git
cd shadowsocks-vpn-docker
docker-compose up -d
```

3. Connect to your VPN server from client machines

```
 Server: $YOUR_SERVER_IP
 Port: 6187
 Password: DamnGFW
```

Default configuration is in [shadowsocks.json](./shadowsocks.json)

Screenshot:

<a href="https://www.dennyzhang.com"><img src="https://raw.githubusercontent.com/DennyZhang/shadowsocks-vpn-docker/master/misc/ss_config.png"/> </a>
<a href="https://www.dennyzhang.com"><img src="https://raw.githubusercontent.com/DennyZhang/shadowsocks-vpn-docker/master/misc/ss_activate_server.jpg"/> </a>

- [![Docker](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/docker.png)](https://hub.docker.com/r/denny/shadowsocks-vpn-docker/) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

- File me [tickets](https://github.com/DennyZhang/shadowsocks-vpn-docker/issues) or star [the repo](https://github.com/DennyZhang/shadowsocks-vpn-docker).

# License
- Code is licensed under [MIT License](https://www.dennyzhang.com/wp-content/mit_license.txt).
