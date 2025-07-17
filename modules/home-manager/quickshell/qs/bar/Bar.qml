import Quickshell
import Quickshell.Io
import QtQuick

Scope {
  id: root
  property string time

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
      margins {

        Rectangle {
          id: bar
          anchors.fill: parent
          color: #2e3440
          radius: 15
          border.color: #4c566a
          border.width: 1

          row {}

        }
      }

    }
  }
}
