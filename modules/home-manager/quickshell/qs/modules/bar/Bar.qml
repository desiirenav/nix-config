import Quickshell
import QtQuick

PanelWindow {
    id: panel

    anchors {
         top: true
         left: true
         right: true
    }

    implicitHeight: 30
    
    // FIX: Replace invalid margins block with proper contentItem
    contentItem: Rectangle {
        id: bar
        anchors.fill: parent
        anchors.topMargin: 8  // Top margin moved here
        color: "#2e3440"      // FIX: Added quotes around color values
        radius: 15
        border.color: "#4c566a"  // FIX: Added quotes
        border.width: 1

        // FIX: Changed lowercase row to Row
        Row {
            id: rowLayout
            // Add content here later
        }

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
                    // FIX: Added space between date and time
                    timeDisplay.currentTime = Qt.formatDate(now, "MMM dd") + " " + Qt.formatTime(now, "hh:mm")
                }
            }
        }
    }
}
