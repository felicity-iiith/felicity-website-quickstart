echo "
export {http,https,ftp}_proxy=http://proxy.iiit.ac.in:8080/
export {HTTP,HTTPS,FTP}_PROXY=http://proxy.iiit.ac.in:8080/
export no_proxy=localhost,127.0.0.1,.iiit.ac.in
export NO_PROXY=localhost,127.0.0.1,.iiit.ac.in
" | cat >>~/.bashrc

source ~/.bashrc

