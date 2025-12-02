import QtQuick 6.9
import QtQuick.Controls 6.9


// qml module
import "." as CalorixModule


Item {
    Rectangle { 
        id: background_menu
        anchors.fill: parent

        radius: 10
        color: CalorixModule.Theme.element_background_color
    }


    Rectangle {
        id: background_title
        anchors.top: background_menu.top
        width: background_menu.width
        height: parent.height * 0.17
        color: CalorixModule.Theme.element_background_color
    
        Text {
            text: "Calorix"
            color: "white"
            anchors.bottom: parent.bottom
            font.pixelSize: 30
        }

        Rectangle {
            id: line

            width: parent.width
            height: 1.5
            anchors.bottom: parent.bottom
            // color: "black"
            gradient: Gradient {
                orientation: Gradient.Horizontal
                GradientStop {position: 0; color: "transparent"}
                GradientStop {position: 0.3; color: "#5e6b50"}
                GradientStop {position: 0.6; color: "#5e6b50"}
                GradientStop {position: 1; color: "transparent"}
            }
        }

    }

    

}
