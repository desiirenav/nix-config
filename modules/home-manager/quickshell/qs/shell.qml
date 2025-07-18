
import QtQuick
import Quickshell
import Quickshell.Services.Pipewire
import "./bar"

Scope {
    id: root

    property var defaultAudioSink: Pipewire.defaultAudioSink
    property int volume: defaultAudioSink && defaultAudioSink.audio
       ? Math.round(defaultAudioSink.audio.volume * 100)
       : 0
    property bool volumeMuted: defaultAudioSink && defaultAudioSink.audio
        ? defaultAudioSink.audio.muted
        : false

    PwObjectTracker {
        objects: [Pipewire.defaultAudioSink]
    }

    Bar {
      volume: root.volume
      volumeMuted: root.volumeMuted
      defaultAudioSink: root.defaultAudioSink
    }
}
