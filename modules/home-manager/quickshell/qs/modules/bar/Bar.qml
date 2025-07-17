// Bar.qml
import Quickshell
import QtQuick  // Fixed typo (qtQuick → QtQuick)

PanelWindow {
    id: panel

    // Proper window positioning
    location: PanelWindow.Location.Top
    anchor: PanelWindow.Anchor.Left | PanelWindow.Anchor.Right
    
    // Window dimensions
    height: 30
    screen: Quickshell.primaryScreen

    // Content container
    Rectangle {
        id: bar
        anchors {
            fill: parent
            topMargin: 8  // Top margin moved here
        }
        
        color: "#2e3440"
        radius: 15
        border.color: "#4c566a"
        border.width: 1

        // Left-aligned row for future widgets
        Row {
            id: rowLayout
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 16
            spacing: 10
            // Add items here later (system tray, apps, etc.)
        }

        // Time display
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
                    const now = new Date()
                    timeDisplay.currentTime = 
                        Qt.formatDate(now, "MMM dd") + " " +  // Added space
                        Qt.formatTime(now, "hh:mm")
                }
            }
        }
    }
}
