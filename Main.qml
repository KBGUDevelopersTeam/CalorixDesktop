
import QtQuick 6.9
import QtQuick.Controls 6.9
import QtQuick.Effects 6.9


// project qml modules
import "qml_widgets/auth" as Auth


Window {
    id: main_window
    width: 1280
    height: 720
    visible: true
    title: "Calorix app"
    color: "#E0E2E1"

    Auth.Auth { anchors.fill: parent }


}
