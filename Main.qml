import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls
import Qt.labs.qmlmodels

Window {
    id: root
    width :Screen.width;
    height:Screen.height;
    visible: true
    title: qsTr("Live Draft")

    Rectangle {
        id: background
        width: parent.width
        height: parent.height
        color: "light blue"

        TableView {
            id: draft
            anchors.fill: parent
            model: TableModel  {
                TableModelColumn {display:"squadra"}
                TableModelColumn {display:"portieri"}
                TableModelColumn {display:"difensori"}
                TableModelColumn {display:"centrocampisti"}
                TableModelColumn {display:"attaccanti"}
                TableModelColumn {display:"crediti"}

                rows: [
                    {
                        "squadra":"a",
                        "portieri":"b",
                        "difensori":"c",
                        "centrocampisti":"d",
                        "attaccanti":"e",
                        "crediti":"f"
                    }
                ]
            }
            delegate: Rectangle {
                implicitWidth: 100
                implicitHeight: 50
                border.width: 1

                Text {
                    text: display
                    anchors.centerIn: parent
                }
            }
        }
    }
}
