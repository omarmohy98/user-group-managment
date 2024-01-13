#!/bin/bash

# Function to handle user add feature
addUser() {
    while ((1))
    do
        read -p "Enter New User Name: " uName
        if [ -n "${uName}" ]
        then
            useradd ${uName}
            if [ $? -eq 0 ]
            then
                echo "User Added Succussuflly!"
                break
            else
                echo "Try to use another user Name!"
            fi
        elif [ -z "${uName}" ]
        then
            echo "User Name can not be Empty"
        fi
    done
}

# Function to handle user delete feature
deleteUser() {
    while ((1))
    do
        read -p "Enter User Name you want to delete: " uName
        if [ -n "${uName}" ]
        then
            userdel -r ${uName}
            if [ $? -eq 0 ]
            then
                echo "User Delete Succussuflly!"
                break
            else
                echo "Try to use another user Name!"
            fi
        elif [ -z "${uName}" ]
        then
            echo "User Name can not be Empty"
        fi
    done
}

# Function to handle Modify User Name Feature
modifyUserName() {
    while ((1))
        do
            read -p "Enter User Name you want to change: " oldName
            read -p "Enter New User Name: " newName
            if [ -n "${oldName}" -a -n "${newName}" ]
            then
                usermod -l ${newName} ${oldName}
                if [ $? -eq 0 ]
                then
                    echo "User Name Updated Succussuflly!"
                    break
                else
                    echo "Try to use another User Names!"
                fi
            elif [ -z "${oldName}" -o -z "${newName}" ]
            then
                echo "User Names can not be Empty"
            fi
        done
}

# Function to handle Modify User Id Feature
modifyUserId() {
    while ((1))
        do
            read -p "Enter User Name you want to change: " oldName
            read -p "Enter New User ID: " newId
            if [ -n "${oldName}" -a -n "${newId}" ]
            then
                usermod -u ${newId} ${oldName}
                if [ $? -eq 0 ]
                then
                    echo "User ID Updated Succussuflly!"
                    break
                else
                    echo "Try to use another User IDs!"
                fi
            elif [ -z "${oldName}" -o -z "${newId}" ]
            then
                echo "User IDs can not be Empty"
            fi
        done
}

# Function to handle User password change
modifyUserPassword() {
    while ((1))
        do
            read -p "Enter User Name you want to change its password: " uName
            if [ -n "${uName}" ]
            then
                passwd ${uName}
                if [ $? -eq 0 ]
                then
                    echo "User Password Updated Succussuflly!"
                    break
                else
                    continue
                fi
            elif [ -z "${uName}" ]
            then
                echo "User Name can not be Empty"
            fi
        done
}

# Function to handle modify user primary group feature
modifyUserPrimaryGroup() {
    while ((1))
        do
            read -p "Enter User Name you want to change its primary Group: " uName
            read -p "Enter New Primary Group Name: " pGroup
            if [ -n "${uName}" -a -n "${pGroup}" ]
            then
                usermod -g ${pGroup} ${uName}
                if [ $? -eq 0 ]
                then
                    echo "User Primary Group Updated Succussuflly!"
                    break
                else
                    continue
                fi
            elif [ -z "${uName}" -o -z "${pGroup}" ]
            then
                echo "User Name or Primary Group can not be Empty"
            fi
        done
}

# Function to handle add user to secondry group feature
modifyUserSecondaryGroup() {
    while ((1))
        do
            read -p "Enter User Name you want to add it to new secondary group: " uName
            read -p "Enter New Secondary Group Name: " sGroup
            if [ -n "${uName}" -a -n "${sGroup}" ]
            then
                usermod -aG ${sGroup} ${uName}
                if [ $? -eq 0 ]
                then
                    echo "User Secondary Groups Updated Succussuflly!"
                    break
                else
                    continue
                fi
            elif [ -z "${uName}" -o -z "${sGroup}" ]
            then
                echo "User Name or Secondary Group can not be Empty"
            fi
        done
}

# Function to handle remove user from a group feature
removeUserFromGroup() {
    while ((1))
        do
            read -p "Enter User Name you want to remove it from a group: " uName
            read -p "Enter Group Name: " groupName
            if [ -n "${uName}" -a -n "${groupName}" ]
            then
                gpasswd -d ${uName} ${groupName}
                if [ $? -eq 0 ]
                then
                    echo "User remove from the Group Succussuflly!"
                    break
                else
                    continue
                fi
            elif [ -z "${uName}" -o -z "${groupName}" ]
            then
                echo "User Name or Group Name can not be Empty"
            fi
        done
}

# Function to handle user modify feature
modifyUser() {
    echo "----------------------------------------------"
    echo "             Select Your Operation"
    echo "----------------------------------------------"
    echo "1- Modify user Name"
    echo "2- Modify user id"
    echo "3- Modify user password"
    echo "4- Modify User Primary Group"
    echo "5- Add User to a new Group"
    echo "6- Remove user from a Group"
    while ((1))
    do
        read ops
        case ${ops} in
        1)
            modifyUserName
            break
        ;;
        2)
            modifyUserId
            break
        ;;
        3)
            modifyUserPassword
            break
        ;;
        4)
            modifyUserPrimaryGroup
            break
        ;;
        5)
            modifyUserSecondaryGroup
            break
        ;;
        6)
            removeUserFromGroup
            break
        ;;
        *)
            echo "Invalid Choise, Valid choises is [1,2,3,4,5,6]"
        ;;
        esac
    done

}

# Function to handle group add feature
addGroup() {
    while ((1))
    do
        read -p "Enter New Group Name: " gName
        if [ -n "${gName}" ]
        then
            groupadd ${gName}
            if [ $? -eq 0 ]
            then
                echo "Group Added Succussuflly!"
                break
            else
                echo "Try to use another Group Name!"
            fi
        elif [ -z "${gName}" ]
        then
            echo "Group Name can not be Empty"
        fi
    done
}

# Function to handle group delet feature
deleteGroup() {
    while ((1))
    do
        read -p "Enter Group Name you want to delete: " gName
        if [ -n "${gName}" ]
        then
            groupdel ${gName}
            if [ $? -eq 0 ]
            then
                echo "Group Delete Succussuflly!"
                break
            else
                echo "Try to use another Group Name!"
            fi
        elif [ -z "${gName}" ]
        then
            echo "Group Name can not be Empty"
        fi
    done
}

# Function to handle Modify Group Name Feature
modifyGroupName() {
    while ((1))
        do
            read -p "Enter Group Name you want to change: " oldName
            read -p "Enter New Group Name: " newName
            if [ -n "${oldName}" -a -n "${newName}" ]
            then
                groupmod -n ${newName} ${oldName}
                if [ $? -eq 0 ]
                then
                    echo "Group Name Updated Succussuflly!"
                    break
                else
                    echo "Try to use another Group Names!"
                fi
            elif [ -z "${oldName}" -o -z "${newName}"]
            then
                echo "Group Names can not be Empty"
            fi
        done
}

# Function to handle Modify Group Id Feature
modifyGroupId() {
    while ((1))
        do
            read -p "Enter Group Name you want to change: " oldName
            read -p "Enter New Group ID: " newId
            if [ -n "${oldName}" -a -n "${newId}" ]
            then
                groupmod -g ${newId} ${oldName}
                if [ $? -eq 0 ]
                then
                    echo "Group ID Updated Succussuflly!"
                    break
                else
                    echo "Try to use another Group IDs!"
                fi
            elif [ -z "${oldName}" -o -z "${newId}" ]
            then
                echo "Group IDs can not be Empty"
            fi
        done
}

# Function to handle group modify feature
modifyGroup() {
    echo "----------------------------------------------"
    echo "             Select Your Operation"
    echo "----------------------------------------------"
    echo "1- Modify group Name"
    echo "2- Modify group id"
    while ((1))
    do
        read ops
        case ${ops} in
        1)
            modifyGroupName
            break
        ;;
        2)
            modifyGroupId
            break
        ;;
        *)
            echo "Invalid Choise, Valid choises is [1,2]"
        ;;
        esac
    done

}

# main script Function
main() {
    echo "----------------------------------------------"
    echo "             Select Your Operation"
    echo "----------------------------------------------"
    echo "1- Add a new user"
    echo "2- Delete an user"
    echo "3- Modify an user"
    echo "4- Add a new Group"
    echo "5- Delete a Group"
    echo "6- Modify a Group"
    while ((1))
    do
        read ops
        case ${ops} in
        1)
            addUser
            break
        ;;
        2)
            deleteUser
            break
        ;;
        3)
            modifyUser
            break
        ;;
        4)
            addGroup
            break
        ;;
        5)
            deleteGroup
            break
        ;;
        6)
            modifyGroup
            break
        ;;
        *)
            echo "Invalid Choise, Valid choises is [1,2,3,4,5,6]"
        ;;
        esac
    done
}
main
