# USB Device Retrieval Script (PowerShell)

This PowerShell script provides a function called `Get-USB` that allows you to retrieve information about USB devices attached to a Windows system using Windows Management Instrumentation (WMI).

## Prerequisites

- Windows operating system (the script is designed to work on Windows)
- PowerShell (version 3.0 or later)

## Usage

1. Clone or download the script to your local machine.

2. Open a PowerShell session.

3. If you haven't already done so, you may need to adjust your PowerShell execution policy to allow script execution. You can do this by running PowerShell as an administrator and executing the following command:

## Set-ExecutionPolicy RemoteSigned

4. Navigate to the directory where you saved the script using the `cd` command:

## cd C:\path\to\script

5. To load the script into your PowerShell session, execute the following command:

## . .\Get-USB.ps1


Note: The dot (.) before the script path is necessary to load the script in the current session.

6. Once the script is loaded, you can use the `Get-USB` function to retrieve USB device information. The function supports an optional parameter `-ComputerName` to specify a remote computer from which to retrieve USB devices. If no `-ComputerName` parameter is provided, the function will retrieve USB devices from the local computer.

Examples:
- Retrieve USB devices from the local computer:
  ```
  Get-USB
  ```

- Retrieve USB devices from a remote computer:
  ```
  Get-USB -ComputerName "RemoteComputer"
  ```

  Replace "RemoteComputer" with the actual name of the remote computer.

7. The script will display information about the USB devices found, including the manufacturer, description, device ID, and status.

## Notes

- If no USB devices are found, a warning message will be displayed.
- If an error occurs during the retrieval process, an error message will be displayed.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## License

This script is licensed under the [MIT License](https://opensource.org/licenses/MIT).

---

Please make sure to customize the README file based on your specific script details and any additional information you'd like to include.
