freespace=$(df -h / | awk 'NR==2 {print $4}')
freemem=$(free -h | awk 'NR==2 {print $4}')
karnel_version=$(uname -r)

green="\033[32m"
bold="\033[1m"
norm="\033[0m"

printf -v logdate "%(%Y-%m-%d)T"

echo "${bold}Quick system report for ${green}${HOSTNAME}${norm}"
printf "\tKernel Release:\t%s\n" ${karnel_version}
printf "\tBash version:\t%s\n" $BASH_VERSION
printf "\tFree Storage:\t%s\n" $freespace
printf "\tfree Memory:\t%s\n" $freemem
printf "\tYour Username:\t%s\n" $(whoami)
printf "\tCurrent Date of system is:\t%s\n" $(date +%d/%m/%Y)
printf "\tCurrent time of system is:\t%s\n" $(date +%H:%M:%S)
