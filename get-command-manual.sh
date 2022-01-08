a="ls"
echo "Enter the command you want details about:"
read a
echo "this is --help results:"
$a --help
echo "this is the manual for command:"
man $a
