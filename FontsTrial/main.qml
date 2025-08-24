import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 600
    height: 400
    title: "Font Styling Application"

    ColumnLayout {
        anchors.fill: parent
        spacing: 10

        Item {
              anchors.top: parent.top
              anchors.left: parent.left
              anchors.right: parent.right

          RowLayout {
              spacing: 10

            ComboBox {
                id: styleComboBox
                Layout.fillWidth: true
                model: [ "Regular", "Italic", "Bold" ]
                currentIndex: styleComboBox.model.indexOf( isItalic ? "Italic" : ( isBold ? "Bold" : "Regular" ) )

                onActivated: {
                    isItalic = styleComboBox.currentText === "Italic";
                    isBold = styleComboBox.currentText === "Bold";
                    updateStyledText();
                }

                Text {

                    text: "Select Font Style:"
                }
            }

            ComboBox {
                id: sizeComboBox
                Layout.fillWidth: true
                model: [ 10, 12, 14, 16, 18, 20 ]
                currentIndex: sizeComboBox.model.indexOf( selectedSize )

                onActivated: {
                    selectedSize = sizeComboBox.currentText;
                    updateStyledText();
                }

                Text {

                    text: "Select Font Size:"
                }
              }
           }
        }

        TextArea {
            id: styledText
            anchors.top: styleComboBox.bottom
            anchors.left: parent.left
            anchors.right: parent.right

            color: "black"
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

            font.pixelSize: selectedSize
            font.italic: isItalic
            font.bold: isBold
        }
    }

    function updateStyledText() {
        styledText.font.pixelSize = selectedSize;
        styledText.font.italic = isItalic;
        styledText.font.bold = isBold;
    }

    property int selectedSize: 12
    property bool isItalic: false
    property bool isBold: false
}
