echo "below is the list of all user in the system"
awk -F: '{ print $1}' /etc/passwd
#-F stands for Field separator. Since the colon character is the delimiter in the /etc/passwd file, we pass the colon as the separator in the awk command.
#{ print $1} instructs the system to print the first field. In this case, the first field is the username of the users.
#/etc/passwd file contains the data related to the users.
#alternate:
#cut -d: f1 /etc/passwd
#cut -d: f5 /etc/passwd
#getent passwd
#getent passwd | awk -F: '{print $1}'
#getent passwd | cut -d: -f1

echo "choose the username for your user"
while [ -z "$namee" ]
#The -z flag causes test to check whether a string is empty. Returns true if the string is empty, false if it contains something.
do
  echo "please enter a not null value"
  read namee
done
echo "creating user with name ${namee}"
sudo useradd ${namee}
echo "user created with name ${namee}"
echo "add password for the user"
sudo passwd ${name}
awk -F: '{ print $1}' /etc/passwd