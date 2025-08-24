import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 800
    height: 800
    title: "Image Viewer"

    MenuBar {
        id: menuBar
        Menu {
            title: "File"
            MenuItem {
                text: "Open Image"
                onTriggered: {
                    fileBrowser.visible = true
                    imageView.source = ""
                }
            }
            MenuItem {
                text: "Close Image"
                onTriggered: imageView.source = ""
            }
        }
    }

    Rectangle {
        id: fileBrowser
        color: "lightgrey"
        border {
            color: "black"
            width: 4
        }
        width: 400
        height: 400
        anchors.centerIn: parent
        visible: imageView.source === ""

        ListView {
            id: fileList
            anchors.fill: parent
            model: fileListModel
            delegate: Item {
                width: parent.width
                height: 40

                Text {
                    text: fileName( model.name )
                    anchors.fill: parent
                    leftPadding: 10
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            imageView.source = model.name
                            fileBrowser.visible = false
                        }
                    }
                }
            }
        }
    }

    Image {
        id: imageView
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
        visible: imageView.source !== ""
    }

    ListModel {
        id: fileListModel
        ListElement { name: "qrc:/images/linux.png" }
        ListElement { name: "qrc:/images/simpson.png" }
        ListElement { name: "qrc:/images/RadhaKrishna.jpg" }
    }

    function fileName( filePath ) {
        var parts = filePath.split("/")
        return parts[ parts.length - 1 ]
    }
}
