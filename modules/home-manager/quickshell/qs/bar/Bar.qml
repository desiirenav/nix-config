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
      implicitHeight: 30

      anchors {
        top: true
        left: true
        right: true
      }

      Rectangle {
        id: background
        anchors.fill: parent
        color: "#2e3440"
      }
    }
  }
}
