import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 200
    title: " Random Color Changing Button"

    Rectangle {
        width: parent.width
        height: parent.height

        Button {
            id: colorChangeButton
            text: "Click Me"
            width: 220
            height: 90
            anchors.centerIn: parent
            font.pixelSize: 25

            background: Rectangle {
                color: "white"
                border.color: "grey"
                border.width: 3
                radius: 15
            }

            onClicked: {

                colorChangeButton.background.color = getRandomColor();
            }
        }
    }

    function getRandomColor() {
        var letters = "0123456789ABCDEF";
        var color = "#";
        for (var i = 0; i < 6; i++) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
    }
}
