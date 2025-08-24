import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: contentItem
        anchors.centerIn: parent
        width: 300
        height:150
        color: "blue"

        Text {
            id: helloWorld
            text: qsTr("Hello World")
            font.pixelSize: fontSize

            anchors.centerIn: parent
            color: "red"

        }

    }

property int fontSize: 25

}
