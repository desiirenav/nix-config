import QtQuick
import Quickshell
import Quickshell.Wayland


PanelWindow {
  id: panelWindow

  implicitHeight: 40
  color: "#2E3440"
  margins {
    top: 0
    left: 0
    right: 0
  }

  anchors {
    top: true
    left: true
    right: true
  }

  Rectangle {
    id: panelRect
    radius: 15
    color: "#3B4252"
    anchors.top: parent.top
    anchors.left: parent.left
  }

  ClockWidget {
    anchors.centerIn: parent
  }
}
