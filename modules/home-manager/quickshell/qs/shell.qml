import Quickshell
import QtQuick
import "./modules/bar"


ShellRoot {
    id: root

    Loader {
        active: true
        sourceComponent: Bar {}
    }
}
