import QtQuick
import QtQuick.Controls
import com.example.light 1.0

ApplicationWindow {
    visible: true
    width:400
    height: 800
    title: qsTr("Light Controller")

    LightController {
        id: lightController
    }

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: lightController.lightOn ? "Light is On" : "Light is Off"
            font.pointSize: 18
            color: lightController.lightOn ? "green" : "red"
            horizontalAlignment: Text.AllignHCenter
        }

        Row {
            spacing: 10
            Button {
                text: "Turn On"
                onClicked: lightController.turnLightOn()
            }
            Button {
                text: "Turn Off"
                onClicked: lightController.turnLightOff()
            }
        }
    }
}
