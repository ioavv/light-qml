import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Main Page")

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: Rectangle {
            anchors.fill: parent
            color: "#4A90E2"

            // Start Page Design
            gradient: Gradient {
                GradientStop { position: 0; color: "#4A90E2" }
                GradientStop { position: 1; color: "#50E3C2" }
            }

            Column {
                anchors.centerIn: parent
                spacing: 20

                Text {
                    text: "Welcome to Light Controller"
                    font.pixelSize: 24
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                }

                Button {
                    text: "Start"
                    font.pixelSize: 16
                    onClicked: stackView.push("Light.qml")
                }
            }
        }
    }


}
