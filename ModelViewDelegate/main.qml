import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 640
    height: 780
    title: "Rectangles with Numbers list"

    ColumnLayout {
        id: mainColumn
        anchors.centerIn: parent
        spacing: 10

        Repeater {
            model: 10

            delegate: Rectangle {
                id: rectangle
                width: 70
                height: 50
                color: "lightblue"
                border.color: "blue"

                Text {
                    text: modelData
                    anchors.centerIn: parent
                    font.bold: true
                    font.pixelSize: 24
                }
            }
        }
    }
}
