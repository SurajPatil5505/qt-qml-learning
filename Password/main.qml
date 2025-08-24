import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Password"

    Rectangle {
        id: mainRect
        anchors.fill: parent
        color: "lightgrey"

        CustomTextField {
            id: customTextField
            anchors.centerIn: parent
        }

        Button {
            text: "Check Password"
            width: 200
            height: 30

            anchors.top: customTextField.bottom
            anchors.topMargin: 10
            anchors.horizontalCenter: customTextField.horizontalCenter

            background: Rectangle {

                color: "grey"
            }

            onClicked: {
                var enteredPassword = customTextField.password;
                var password = "suraj";  // Replace with your password

                notificationPopup.showNotification( ( enteredPassword === password ) ? "Success!" : "Failure!" );
            }
        }
    }

    Popup {
        id: notificationPopup
        width: 200
        height: 50
        modal: false
        visible: false
        anchors.centerIn: parent

        Rectangle {
            width: parent.width
            height: parent.height
            color: notificationPopup.success ? "lightgreen" : "lightcoral"

            Text {
                anchors.centerIn: parent
                color: "white"
                text: notificationPopup.message
            }
        }

        Timer {
            id: notificationTimer
            interval: 2000
            onTriggered: {
                notificationPopup.visible = false;
            }
        }

        function showNotification( message ) {
            notificationPopup.message = message;
            notificationPopup.success = ( message === "Success!" );
            notificationPopup.visible = true;
            notificationTimer.start();
        }

        property bool success: false;
        property string message: "";
    }
}
