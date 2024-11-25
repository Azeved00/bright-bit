import QtQuick 2.12
import SddmComponents 2.0

PasswordBox {
    id: passwordField
    focus: true

    height: inputHeight
    width: inputWidth
    
    font.family: config.fontFamily
    font.pixelSize: config.fontSize

    color: config.fieldColor
    borderColor: "transparent"
    focusColor: config.selectedColor
    hoverColor: config.fieldColor
    textColor: config.textColor

    property var loginFunction: inputLoginFunction

    KeyNavigation.backtab: parent.back
    KeyNavigation.tab: parent.next

    Keys.onPressed: {
        if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
            loginFunction()
        event.accepted = true
        }
    }

    Connections {
        target: sddm

        function onLoginSucceeded() {
            passwordField.focusColor = "steelblue"
        }

        function onLoginFailed() {
            passwordField.text = ""
            passwordField.focusColor = config.red
        }
    }
}
