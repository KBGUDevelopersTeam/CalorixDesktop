import QtQuick
import QtQuick.Controls


Window {
    width: 300
    height: 200
    color: "lightblue"
    visible: true
    title: "Test window"

    Text {
        text: "Привет, QML!"
        font.pixelSize: 24
        anchors.centerIn: parent
    }

    Button {
        text: "Кнопка"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20
        
        onClicked: {
            console.log("Кнопка нажата!")
        }
    }
}