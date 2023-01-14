import QtQuick
import QtQuick.Controls 6.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    TextArea {
        id: textArea
        text: "Hello World!"
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        hoverEnabled: true
        font.bold: false
        font.pointSize: 30
        placeholderText: qsTr("Text Area")
    }
}
