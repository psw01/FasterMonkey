# FasterMonkey

FasterMonkey is a repository containing scripts and commands that can make CTF/pentesting faster and easier. The tools included in this repository are:

## Tools
`ft` is a script that provides a faster way to transfer files between two machines using netcat. This tool is currently work in progress.

`rvsh` is a script that starts a reverse shell in one command. This tool can be used to quickly gain access to a remote system.

`sv` is a script that starts a python web server and displays the URL. This tool can be used to quickly serve files locally and share them with others.

`i` is a script that shows interface IP addresses. This tool can be used to quickly find the IP addresses of all interfaces on a system.

`vpn` is a script that opens the OpenVPN browser. This tool can be used to quickly connect to a VPN server.

## Usage
To use any of the tools in this repository, simply clone the repository to your local machine and navigate to the directory containing the tool you want to use or add this folder to $PATH variable. Then, run the script using the appropriate command.

One-Liner
```bash
git clone https://github.com/psw01/FasterMonkey.git && echo 'export PATH=$PATH:'`pwd`'/FasterMonkey' >> ~/.bashrc && source ~/.bashrc
```
## Disclaimer

These tools are provided for educational and research purposes only. The author is not responsible for any illegal or unethical use of these tools. Use at your own risk.
