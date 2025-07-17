import Quickshell
import qtQuick

PanelWindow {
    id:panel

    anchors {
         top: true
         left: true
         right: true
    }

    implicitHeight: 30
    margins {
        top: 8
        left: 0
        right: 0

        Rectangle {
             id: bar
             anchors.fill: parent
             color: #2e3440
             radius: 15
             border.color: #4c566a
             border.width: 1

             row {}

             Text {
                id: timeDisplay
                anchors {
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    rightMargin: 16
                }

                property string currentTime: ""

                text: currentTime
                color: "#d8dee9"
                font.pixelSize: 14

                Timer {
                    interval: 1000
                    running: true
                    repeat: true
                    onTriggered: {
                        var now = new Date()
                        timeDisplay.currentTime = Qt.formatDate(now, "MMM dd") + "" + Qt.formatTime(now, "hh:mm")
                    }
                }

             }
        }
    }

}
