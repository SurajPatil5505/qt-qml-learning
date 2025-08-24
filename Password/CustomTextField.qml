import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 200
    height: 30
    color: "white"

    TextInput {
        id: textInput
        width: parent.width - 45
        height: 30
        echoMode: TextInput.Normal

        onTextChanged: {
            if ( textInput.text.length > 0 ) {
                textInput.echoMode = showPassword.visible ? TextInput.Normal : TextInput.Password;
            }
            else {
                textInput.echoMode = TextInput.Password;
            }
            label.visible = textInput.text.length === 0;
        }
    }

    Label {
        id: label
        text: "Enter Password"
        color: "grey"
        visible: textInput.text.length === 0
        anchors.leftMargin: 2
        anchors.verticalCenter: parent.verticalCenter

        MouseArea {
            anchors.fill: parent
            onClicked: {
                textInput.forceActiveFocus();
            }
        }
    }

    Image {
        id: showPassword
        source: "qrc:images/show.png"
        width: 20
        height: 20
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        MouseArea {
            anchors.fill: parent
            onClicked: {
                showPassword.visible = false;
                hidePassword.visible = true;
                textInput.echoMode = TextInput.Normal;
            }
        }
    }

    Image {
        id: hidePassword
        source: "qrc:images/hide.png"
        width: 20
        height: 20
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        visible: false
        MouseArea {
            anchors.fill: parent
            onClicked: {
                showPassword.visible = true;
                hidePassword.visible = false;
                textInput.echoMode = TextInput.Password;
            }
        }
    }

     property alias password: textInput.text
}
