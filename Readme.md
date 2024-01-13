# User and Group Management Script

This Bash script provides a simple and interactive command-line interface for managing users and groups on a Unix-like operating system. The script offers functionality for adding, deleting, and modifying users and groups.

## Usage

1. **Add a New User**

   - Select option 1 to add a new user.
   - Enter the desired username when prompted.
   - The script will create the user, and a success message will be displayed.

2. **Delete a User**

   - Select option 2 to delete an existing user.
   - Enter the username you want to delete when prompted.
   - The script will remove the user, and a success message will be displayed.

3. **Modify an User**

   - Select option 3 to modify user properties.
   - Choose from various modifications, such as changing the username, user ID, password, primary group, adding to secondary groups, or removing from a group.

4. **Add a New Group**

   - Select option 4 to add a new group.
   - Enter the desired group name when prompted.
   - The script will create the group, and a success message will be displayed.

5. **Delete a Group**

   - Select option 5 to delete an existing group.
   - Enter the group name you want to delete when prompted.
   - The script will remove the group, and a success message will be displayed.

6. **Modify a Group**
   - Select option 6 to modify group properties.
   - Choose from modifying the group name or group ID.

## How to Run

1. Ensure you have the necessary permissions to execute the script (`chmod +x script_name.sh`).
2. Run the script by executing `./script_name.sh` in the terminal.

## Notes

- Usernames, group names, and IDs cannot be empty.
- The script provides interactive feedback and prompts users to try different inputs in case of failures.
- For security reasons, modifying user passwords is handled through the system's `passwd` command, ensuring a secure password change process.

Feel free to contribute, report issues, or suggest improvements!
