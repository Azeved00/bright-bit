import QtQuick 2.0
import SddmComponents 2.0

ComboBox {
    id: sessionField
    height: inputHeight
    width: inputWidth
    z:100

    font.family: config.fontFamily
    font.pixelSize: config.fontSize

    arrowIcon: "../assets/angle-down.png"
    arrowColor: "transparent"
    
    color: config.fieldColor
    textColor: "white"
    
    borderColor: "transparent"
    focusColor: config.selectedColor
    hoverColor: config.fieldColor
    menuColor: config.fieldColor

    model: sessionModel
    index: sessionModel.lastIndex

    Keys.onPressed: {
        if (event.key === Qt.Key_Up || event.key === Qt.Key_K) {
            index = index + 1
            if(index >= sessionModel.rowCount())
                index = 0
        }
        if (event.key === Qt.Key_Down || event.key === Qt.Key_J) {
            index = index - 1
            if(index < 0)
                index = sessionModel.rowCount() - 1
        }
    }
}
