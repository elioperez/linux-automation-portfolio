import paramiko

servers = ["192.168.56.118", "192.168.56.122", "192.168.56.123", "192.168.56.124"]
username = "elio"
password = "2634"

for server in servers:
    print(f"\n========== {server} ==========\n")

    try:
        client = paramiko.SSHClient()
        client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

        client.connect(server, username=username, password=password, timeout=5)

        stdin, stdout, stderr = client.exec_command('df -h')
        print(stdout.read().decode())

        client.close()

    except Exception as e:
        print(f"[ERROR] {server}: {e}")