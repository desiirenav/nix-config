//@ pragma UseQApplication
//@ pragma Env QS_NO_RELOAD_POPUP=1

import QtQuick
import Quickshell
import "./modules/"

ShellRoot {
    id: root
    Loader {
        active: true
        sourceComponent: Bar {}
    }
}
