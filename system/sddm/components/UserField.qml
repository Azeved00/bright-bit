import QtQuick 2.12
import SddmComponents 2.0

TextBox {
    id: name

    height: inputHeight
    width: inputWidth

    text: userModel.lastUser
    font.family: config.fontFamily
    font.pixelSize: config.fontSize

    color: config.fieldColor
    borderColor: "transparent"
    focusColor: config.selectedColor
    hoverColor: config.fieldColor
    textColor: config.textColor

    Keys.onPressed: {
        if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
            sddm.login(name.text, password.text, sessionIndex)
            event.accepted = true
        }
    }
}
