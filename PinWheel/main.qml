import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id : mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Rotating PinWheel")

    Rectangle{
        id:background
        anchors.fill: parent

        Image {
            id: backgroundImage
            anchors.fill: parent
            source: "qrc:/Images/background.jpg"
        }

        Image {
            id: stick
            source: "qrc:/Images/stick.jpg"
            width: stickWidth
            height: stickHeight
            anchors.centerIn: parent
        }

        Image {
            id: pinWheel
            source: "qrc:/Images/pinwheel.jpg"
            width: pinWheelWidth
            height: pinWheelHeight
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: stick.top

//            RotationAnimation {
//                id: rotationPinWheel
//                target: pinWheel
//                from: 0
//                to: 360
//                duration: time  // Time in milliseconds for one full rotation
//                loops: Animation.Infinite  // Infinite loop for continuous rotation
//                running: true
//            }

            RotationAnimation {
                id: rotationPinWheel
                target: pinWheel
                from: -30
                to: 30
                duration: time
                easing.type: Easing.Linear
                loops: Animation.Infinite
                running: true
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    rotationPinWheel.running = !rotationPinWheel.running;
                }
            }
        }
    }

 property int stickWidth: 12
 property int stickHeight: 300
 property int pinWheelWidth: 200
 property int pinWheelHeight: 200
 property int time: 2000
}
