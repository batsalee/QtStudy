import QtQuick
import QtQuick.Controls 6.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    TextField {
        id: number1Field
        x: 10
        y: 10
        placeholderText: "Enter number 1"
        width: 100
    }

    TextField {
        id: number2Field
        x: 10
        y: 50
        placeholderText: "Enter number 2"
        width: 100
    }

    Button {
        text: "Add"
        x: 10
        y: 94
        width: 100
        onClicked: {
            var number1 = parseInt(number1Field.text)
            var number2 = parseInt(number2Field.text)
            myClass.addNumbers(number1, number2)
        }
    }

    Text {
        id: resultText
        x: 10
        y: 125
        text: "Result: "
        width: 20
    }

    Connections {
        target: myClass
        onResultReady: {
            resultText.text = "Result: " + result
        }
    }
}

