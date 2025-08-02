import Quickshell
import qtQuick

shellDir {
  id: root
  Loader {
    active: true
    sourceComponent: Bar {}
  }
}

