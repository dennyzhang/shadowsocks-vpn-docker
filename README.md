# Basic Intro
<a href="https://github.com/DennyZhang?tab=followers"><img align="right" width="200" height="183" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/fork_github.png" /></a>

Docker shadowsocks VPN via docker

Shadowsocks: https://shadowsocks.org/en/index.html

Read above link to understand Shadowsocks VPN service.

- Deploy Shadowsocks server in your VM via docker-compose.

```
git clone https://github.com/DennyZhang/shadowsocks-vpn-docker.git
cd shadowsocks-vpn-docker
docker-compose up -d
```

Connect to your VPN server from client machines

```
 Server: $YOUR_SERVER_IP
 Port: 6187
 Password: DamnGFW
```

Default configuration is [shadowsocks.json](./shadowsocks.json)

Screenshot:

![](images/ss_config.png)

- [![LinkedIn](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/linkedin.png)](https://www.linkedin.com/in/dennyzhang001) [![Github](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/github.png)](https://github.com/DennyZhang) [![Twitter](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/twitter.png)](https://twitter.com/dennyzhang001) [![Slack](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/slack.png)](https://goo.gl/ozDDyL)

- [![Docker](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/docker.png)](https://hub.docker.com/r/denny/shadowsocks-vpn-docker/) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

- File me [tickets](https://github.com/DennyZhang/shadowsocks-vpn-docker/issues) or star [the repo](https://github.com/DennyZhang/shadowsocks-vpn-docker).

# License
- Code is licensed under [MIT License](https://www.dennyzhang.com/wp-content/mit_license.txt).
