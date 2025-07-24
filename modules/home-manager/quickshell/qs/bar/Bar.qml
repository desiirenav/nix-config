// Bar.qml
import Quickshell
import Quickshell.Io
import QtQuick

Scope {
  // no more time object

  Variants {
    model: Quickshell.screens

    PanelWindow {
      required property var modelData
      screen: modelData

      anchors.top: true
      anchors.left: true
      anchors.right: true

      margins {
        top: 8
        left: 0
        right: 0

        Rectangle {
          id: bar
          anchors.fill: parent
          color: "#0B0E14"
          radius: 9
          border.width: 1
        }
      }

      implicitHeight: 30

      ClockWidget {
        anchors.centerIn: parent
        Text {
          id: timeDisplay
          text: modelData.text
          color: "#BFBDB6"
        }
      }
    }
  }
}
