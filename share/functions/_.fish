
#
# Alias for gettext (or a fallback if gettext isn't installed)
#

set -l path (which $i ^/dev/null)
if test -x (echo $path)
	function _ -d "Alias for the gettext command"
		gettext fish $argv
	end
else
	function _ -d "Alias for the gettext command"
		printf "%s" $argv
	end
end
