#!/usr/bin/env python3
import os
import ftplib

def upload_directory(ftp, path, remote_path):
    for item in os.listdir(path):
        local_path = os.path.join(path, item)
        remote_item_path = os.path.join(remote_path, item)

        if os.path.isdir(local_path):
            # Create directory on remote server if it doesn't exist
            if remote_item_path not in ftp.nlst(remote_path):
                ftp.mkd(remote_item_path)
            
            # Recursively upload everything in this directory
            upload_directory(ftp, local_path, remote_item_path)
        else:
            # Upload files
            with open(local_path, 'rb') as file:
                ftp.storbinary(f'STOR {remote_item_path}', file)

def main():
    ftp_server = '103.136.60.142'
    username = 'admin'
    password = 'd93jls@9'
    local_directory = '/var/www/html/wordpress/wp-content/uploads'
    remote_directory = '/ip'

    ftp = ftplib.FTP(ftp_server)
    ftp.login(username, password)

    if remote_directory not in ftp.nlst():
        ftp.mkd(remote_directory)

    upload_directory(ftp, local_directory, remote_directory)

    ftp.quit()

if __name__ == "__main__":
    main()

