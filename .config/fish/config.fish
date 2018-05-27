
set -U fish_greeting ""
set txt (cat (dirname (status -f))"/fish.txt")

for line in $txt
	set -U fish_greeting $fish_greeting$line\n
end

set -U fish_greeting $fish_greeting\nWelcome to fish, the friendly interactive shell\n

