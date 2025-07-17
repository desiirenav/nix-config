//@ pragma useQApplication

import Quickshell
import qtQuick
import "modules/bar"

shellroot {
    id: root

    Loader {
        active: true
        sourceComponent: bar{}
    }
}
