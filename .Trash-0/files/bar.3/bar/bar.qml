import Quickshell
import Quickshell.Io
import QtQuick

Scope {
  id: root
  property string time

  Time { id: timeSource }

  Variants {
    model: Quickshell.screens

    PanelWindow {
      property var modelData
      screen: modelData

      anchors {
        top: true
        left: true
        right: true
      }

      implicitHeight: 30

      ClockWidget {
        anchors.centerIn: parent
        // now using the time from timeSource
        time: timeSource.time
      }

      margins {
        top: 0
        left: 0
        right: 0

        Rectangle {
          id: bar
          anchors.fill: parent
          // color: #1a1a1a
          radius: 0
          // border.color: #333333
          border.width: 3
          
          row {}

        }
      }
    }
  }
}
