import psutil
import time
import os

# Threshold in bytes (7.5 GB)
THRESHOLD = 6 * 1024 * 1024 * 1024

# Check interval in seconds
CHECK_INTERVAL = 1


def get_vscode_process():
    for process in psutil.process_iter(['pid', 'name']):
        if process.info['name'] == 'code':
            return process
    return None


while True:
    total_memory_used = psutil.virtual_memory().used
    print(f"Total Memory Usage: {total_memory_used / (1024 * 1024):.2f} MB\n")

    if total_memory_used > THRESHOLD:
        vscode_process = get_vscode_process()
        if vscode_process:
            print("Memory usage exceeded threshold. Terminating VSCode.\n")
            os.system(f"kill -9 {vscode_process.info['pid']}")
        else:
            print("VSCode is not running.")

    time.sleep(CHECK_INTERVAL)
