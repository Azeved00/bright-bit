import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: loginButton
    width: inputWidth
    height: inputHeight

    color: config.fieldColor

    property alias labelColor: label.color
    property bool isFocused: activeFocus || mouseArea.containsMouse
    property bool isPressed: mouseArea.pressed

    property var loginFunction: inputLoginFunction

    states: [
        State {
            name: "selected"; when: isFocused
            PropertyChanges{
                target: loginButton
                color: config.textColor
                labelColor: config.selectedColor
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

        onClicked: inputLoginFunction()
    }

    Text {
        id: label

        color: config.textColor
        anchors.centerIn: parent

        font.family: config.fontFamily
        font.pixelSize: config.fontSize
        font.bold: true
        text: textConstants.login
    }
    
    transitions: Transition {
        PropertyAnimation {
            properties: "color"
            duration: 200
        }
    }

    Keys.onPressed: {
        if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
            loginFunction();
        }
    }
}

  
