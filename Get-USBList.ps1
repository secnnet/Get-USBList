function Get-USB {
    <#
    .Synopsis
        Gets USB devices attached to the system
    .Description
        Uses WMI to get the USB Devices attached to the system
    .Example
        Get-USB
    .Example
        Get-USB -ComputerName "RemoteComputer" | Group-Object Manufacturer
    .Parameter ComputerName
        The name of the computer to get the USB devices from
    #>
    param(
        [string]$ComputerName = "localhost"
    )

    try {
        # Retrieve USB devices using CIM cmdlets
        $usbDevices = Get-CimInstance -ClassName Win32_USBControllerDevice -ComputerName $ComputerName -ErrorAction Stop |
            ForEach-Object { Get-CimInstance -ClassName CIM_LogicalDevice -Filter "DeviceID = '$($_.Dependent.DeviceID)'" }
        
        if ($usbDevices) {
            # Select and format desired properties for output
            $output = $usbDevices | Select-Object Manufacturer, Description, DeviceID, Status
            $output
        }
        else {
            Write-Warning "No USB devices found on $ComputerName."
        }
    }
    catch {
        Write-Error "Failed to retrieve USB devices from $ComputerName. Error: $($_.Exception.Message)"
    }
}
