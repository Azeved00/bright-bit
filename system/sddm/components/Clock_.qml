import QtQuick 2.12

Column {
    id: clock_
    
    property color color: config.textColor
    property int size: config.clockSize

    property date dateTime: new Date()
    property alias dateFont: date.font

    property alias timeFont: time.font
    timeFont.family: config.fontFamily

    Timer {
        interval: 100; running: true; repeat: true;
        onTriggered: parent.dateTime = new Date()
    }

    Text {
        id: time
        anchors.horizontalCenter: parent.horizontalCenter

        color: parent.color

        text : Qt.formatTime(parent.dateTime, "hh:mm")

        font.pointSize: size*3
    }

    Text {
        id: date
        anchors.horizontalCenter: parent.horizontalCenter

        color: parent.color

        text : Qt.formatDate(parent.dateTime, Qt.DefaultLocaleLongDate)

        font.pointSize: size
    }
}
