import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 300
    height: 100
    title: "Traffic Signals"

    RowLayout {
        anchors.centerIn: parent

        Rectangle {
            id: greenLight
            width: 100
            height: 100
            color: greenSignal ? "green" : "black"
            Layout.alignment: Qt.AlignHCenter

            Timer {
                id: greenTimer
                interval: 10000
                running: true
                repeat: true

                onTriggered: {
                    greenSignal = false;
                    yellowSignal = true;
                    greenTimer.stop();
                    yellowTimer.start();
                }
            }
        }

        Rectangle {
            id: yellowLight
            width: 100
            height: 100
            color: yellowSignal ? "yellow" : "black"
            Layout.alignment: Qt.AlignHCenter

            Timer {
                id: yellowTimer
                interval: 3000
                running: false
                repeat: false

                onTriggered: {
                    yellowSignal = false;
                    redSignal = true;
                    yellowTimer.stop();
                    redTimer.start();
                }
            }
        }

        Rectangle {
            id: redLight
            width: 100
            height: 100
            color: redSignal ? "red" : "black"
            Layout.alignment: Qt.AlignHCenter

            Timer {
                id: redTimer
                interval: 20000
                running: false
                repeat: false

                onTriggered: {
                    redSignal = false;
                    greenSignal = true;
                    redTimer.stop();
                    greenTimer.start();
                }
            }
        }
    }

    property bool greenSignal: true
    property bool yellowSignal: false
    property bool redSignal: false
}
