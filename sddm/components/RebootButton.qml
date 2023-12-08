import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: rebootButton
    width: inputWidth
    height: inputHeight

    property alias iconColor: rebootIconOverlay.color
    color: config.fieldColor

    property bool isFocused: activeFocus || mouseArea.containsMouse
    property bool isPressed: mouseArea.pressed

    states: [
        State {
            name: "selected"; when: isFocused
            PropertyChanges{
                target: rebootButton
                color: config.textColor
                iconColor: config.selectedColor 
            }
        }
    ]

    MouseArea {
        id: mouseArea

        anchors.fill: parent

        cursorShape: Qt.PointingHandCursor

        hoverEnabled: true
		enabled: true

        acceptedButtons: Qt.LeftButton

        onClicked: sddm.reboot()
    }

    Image {
        id: rebootIcon

        source: "../assets/reboot.png"
        height: parent.height
        width: parent.width
        
        anchors.margins: 10
        anchors.fill: parent
        
        fillMode: Image.PreserveAspectCrop
        z:5
    }

    ColorOverlay {
        id: rebootIconOverlay
        z: 7
        anchors.fill: rebootIcon
        source: rebootIcon

        color: config.textColor
    }
    
    transitions: Transition {
        PropertyAnimation {
            properties: "color"
            duration: 300
        }
    }
    Keys.onPressed: {
        if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
            sddm.reboot()
        }
    }
}

  
