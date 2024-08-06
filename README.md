
## Prerequisites

- Python 3.10
- psutil
- requirements.txt

## Setup

1. Clone the repository.
2. Navigate to the vscode_killer directory.
3. Create a virtual environment:
    ```sh
    python3 -m venv venv
    ```
4. Activate the virtual environment:
    - On Unix or MacOS:
        ```sh
        source venv/bin/activate
        ```
    - On Windows:
        ```sh
        .\venv\Scripts\activate
        ```
5. Install the required dependencies:
    ```sh
    pip install -r requirements.txt
    ```

## Usage

Run the monitor_vscode_memory.py script to start monitoring the memory usage:

```sh
python monitor_vscode_memory.py
```