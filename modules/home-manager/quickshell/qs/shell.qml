import Quickshell
import QtQuick
import "./bar/"

Scope {
    id: root

    Loader {
        active: true
        sourceComponent: Bar{}
    }
}
