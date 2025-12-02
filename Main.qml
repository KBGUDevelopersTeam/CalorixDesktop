import QtQuick 6.9
import QtQuick.Controls 6.9
import QtQuick.Layouts 6.9
import QtQuick.Effects 6.9


// project qml modules
import "CalorixModule" as CalorixModule


Window {
    id: main_window
    width: 1280
    height: 720
    visible: true
    flags: Qt.FramelessWindowHint
    title: "Calorix app"
    color: "transparent"

        

    // main background
    Rectangle {
        id: background_main_window
        anchors.fill: parent
        color: CalorixModule.Theme.window_background_color
        radius: 5
    }



}
