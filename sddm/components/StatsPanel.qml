
// read the file 
// /sys/devices/pci0000:00/0000:00:18.3/hwmon/hwmon1/temp1_input
// periodically to get cpu temperature

// how to get wifi
// how to get battery
// how to get ram usage


import QtQuick 2.12

Column {
    id: statsPanel

    Text {
        id: cpuTemperature
        
        function readFile(){
            return fileUtils.readFile("/sys/devices/pci0000:00/0000:00:18.3/hwmon/hwmon1/temp1_input")
        }

        text: "CPU Temperature: " + readFile()
    }
    
    Text {
        id: ramUsage
        text: "Ram Usage: "
    }
    
    Text {
        id: battery
        text: "Battery: "
    }

    Text {
        id: wifi
        text: "Wifi: "
    }
}
