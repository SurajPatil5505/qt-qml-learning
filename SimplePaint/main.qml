import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Simple Paint"

    Canvas {
        id: canvas
        anchors.fill: parent
        property real lastX
        property real lastY
        property bool drawing: false
        property color strokeColor: "black"

        onPaint: {
            var paint = getContext( "2d" );
            paint.lineWidth = 2;
            paint.strokeStyle = canvas.strokeColor;
            paint.beginPath();
            paint.moveTo( canvas.lastX, canvas.lastY );
            paint.lineTo( mouseArea.mouseX, mouseArea.mouseY );
            paint.stroke();
            canvas.lastX = mouseArea.mouseX;
            canvas.lastY = mouseArea.mouseY;
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onPressed: {
                canvas.drawing = true;
                canvas.lastX = mouse.x;
                canvas.lastY = mouse.y;
            }
            onReleased: canvas.drawing = false
            onPositionChanged: {
                if ( canvas.drawing ) {
                    canvas.requestPaint();
                }
            }
        }
    }

    Row {
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter

        Repeater {
            model: [ "black", "red", "green", "blue", "orange", "yellow" ]
            Rectangle {
                width: 30
                height: 30
                color: modelData
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        canvas.strokeColor = modelData;
                    }
                }
            }
        }
    }
}
