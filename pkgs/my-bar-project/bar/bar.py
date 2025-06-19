import fabric
from fabric import Application
from fabric.widgets.box import Box
from fabric.widgets.datetime import DateTime
from fabric.widgets.centerbox import CenterBox
from fabric.widgets.wayland import WaylandWindow as Window

class StatusBar(Window):
    def __init__(self, **kwargs):
        super().__init__(
            layer="top",
            anchor="left top right",
            exclusivity="auto",
            **kwargs
        )

        self.date_time = DateTime(name="date-time")

        self.children = CenterBox(
            name="bar-inner",
            start_children=Box(
                name="start-container",
                spacing=4,
                orientation="h",
                children=[],
            ),
            center_children=Box(
                name="center-container",
                spacing=4,
                orientation="h",
                children=[],
            ),
            end_children=Box(
                name="end-container",
                spacing=4,
                orientation="h",
                children=[
                    self.date_time,
                ],
            ),
        )

def main():
    bar = StatusBar()
    app = Application("bar", bar)
    app.run()



if __name__ == "__main__":
    main()
