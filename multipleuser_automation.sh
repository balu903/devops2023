#!bin/bash
if [ $# -gt 0 ] then 
    USERS=$@
    for $USER in ${USERS[@]};do
        EXISITING_USER=$(cat /etc/passwd | grep  -i -w $USER| cut -d ":" -f 1)
        # echo " The EXISITING_USER name is $EXISITING_USER"
        if [ "${USER}" = "${EXISITING_USER}" ]; then
            echo " The user name $USER already exists, Create a different user"
        else
            echo " Lets create a new user $USER"
            useradd -m $USER --shell /bin/bash
            SPEC_CHAR=$(echo '!@#$%&*()' | fold -1 | shuf | head -1)
            PASSWORD = India@${RANDOM}${SPEC_CHAR}
            echo "${USER}:${PASSWORD}" | sudo chpasswd
            # Modify /etc/ssh/sshdconfig file for password login on AWS restartSSH
            passwd -e ${USER}
            echo "User name is ${USER} Password is ${PASSWORD}"
            # echo "${USER} ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers
            echo "${USER} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
        fi
    else
        echo " Please provide a Username to list or create
    fi
done