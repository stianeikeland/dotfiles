alias ls="ls -hFG"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flushdns="dscacheutil -flushcache"

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Pretty cool HTTP hack: (from @janmoesen)
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "$method"="lwp-request -m '$method'"
done

# Show/hide hidden files in Finder
alias showfinder="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hidefinder="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

alias nano='nano -w';

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get OS X Software Updates, update Homebrew itself, and upgrade installed Homebrew packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade'

# View HTTP traffic
alias sniffhttp="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
# View SIP traffic
alias sniffsip="sudo ngrep -q -W byline -d 'en1' -t '' 'udp port 5060'"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# All the dig info
function digga() {
	dig +nocmd "$1" any +multiline +noall +answer
}