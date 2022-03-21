# Dockerfile kali-rolling + my tools

# Official base image
FROM kalilinux/kali-rolling

# Apt
RUN apt -y update && apt -y upgrade && apt -y autoremove && apt clean

# Tools
RUN apt install crackmapexec crunch curl dirb dirbuster dnsenum dnsrecon dnsutils dos2unix enum4linux exploitdb ftp git gobuster hashcat hping3 hydra impacket-scripts iputils-ping john masscan mimikatz nasm ncat netcat-traditional nikto nmap patator php powersploit proxychains python3-impacket python3-pip python2 python3 recon-ng responder samba samdump2 seclists smbclient smbmap snmp socat sqlmap sslscan sslstrip theharvester vim wfuzz whois wordlists -y --no-install-recommends

# Alias
RUN echo "alias l='ls -al'" >> /root/.bashrc

# Set working directory to /root
WORKDIR /root

# Open shell
CMD ["/bin/bash"]