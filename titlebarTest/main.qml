import QtQuick
import QtQuick.Controls

Window {
    id: main_window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    flags: Qt.FramelessWindowHint

    Rectangle {
        x: 0
        y: 0
        width: parent.width
        height: 30
        color: "#000000"

        MouseArea {
            anchors.fill: parent

            property var clickPos

            onPressed: {
                clickPos = {x: mouse.x, y: mouse.y}
            }

            onPositionChanged: {
                main_window.x  = cp.cursorPos().x - clickPos.x;
                main_window.y  = cp.cursorPos().y - clickPos.y;
            }
        }
    }

    Row {
        x: 0
        y: 93
        Button {
            id: minimize
            text: qsTr("최소화")
            onClicked: {
                main_window.visibility = Window.Minimized;
            }
        }

        Button {
            id: maximize
            text: qsTr("최대화")

            onClicked: {
                if (main_window.visibility === Window.Windowed) main_window.visibility = Window.Maximized;
                else main_window.visibility = Window.Windowed;
            }
        }

        Button {
            id: quit
            text: qsTr("종료")

            onClicked: {
                main_window.close();
            }
        }
    }
}
