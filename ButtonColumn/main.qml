import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 300
    height: 300
    title: "Button Color Change"

    ColumnLayout {
        id: buttonColumn
        anchors.centerIn: parent
        spacing: 10

        Text {
            id: displayText
            text: "Clicked Button Index: "
        }

        Repeater {
            model: 5

            Button {
                text: "Button " + index
                property int buttonIndex: index
                property bool isYellow: false

                background: Rectangle {

                    color: "lightGrey"
                }

                MouseArea {
                    anchors.fill: parent

                    onClicked: {

                        displayText.text = "Clicked Button Index: " + buttonIndex;
                        console.log( "Button " + buttonIndex + " clicked" );
                    }

                    onPressed: {

                        isYellow = true;
                        background.color = "yellow";
                    }

                    onReleased: {

                        isYellow = false;
                        background.color = "lightGrey";
                    }
                }
            }
        }
    }
}
