import Quickshell
import QtQuick
import "./modules/bar/"

Scope {
    id: root

    Loader {
        active: true
        sourceComponent: Bar{}
    }
}
