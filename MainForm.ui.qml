import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    id: page
    width: 500
    height: 500
    property alias mouseArea00: mouseArea00
    property alias rectangle00: rectangle00
    property alias rectangle: rectangle
    property alias mouseArea12: mouseArea12
    property alias mouseArea20: mouseArea20
    property alias mouseArea21: mouseArea21
    property alias mouseArea22: mouseArea22
    property alias mouseArea11: mouseArea11
    property alias mouseArea10: mouseArea10
    property alias mouseArea02: mouseArea02
    property alias mouseArea01: mouseArea01
    property alias rectangle22: rectangle22
    property alias rectangle21: rectangle21
    property alias rectangle20: rectangle20
    property alias rectangle12: rectangle12
    property alias rectangle11: rectangle11
    property alias rectangle10: rectangle10
    property alias rectangle02: rectangle02
    property alias rectangle01: rectangle01

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 500
        height: 500
        color: "#9f9797"
        visible: true
    }

    Rectangle {
        id: rectangle00
        x: 10
        y: 10
        width: 80
        height: 80
        color: "#bbd2e1"
        visible: true
        MouseArea {
            id: mouseArea00
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle01
        x: 210
        y: 10
        width: 80
        height: 80
        color: "#bbd2e1"
        visible: true
        MouseArea {
            id: mouseArea01
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle02
        x: 410
        y: 10
        width: 80
        height: 80
        color: "#bbd2e1"
        visible: true
        MouseArea {
            id: mouseArea02
            anchors.fill: parent
            }
    }

    Rectangle {
        id: rectangle10
        x: 10
        y: 210
        width: 80
        height: 80
        color: "#bbd2e1"
        visible: true
        MouseArea {
            id: mouseArea10
            anchors.fill: parent
            }
    }

    Rectangle {
        id: rectangle11
        x: 210
        y: 210
        width: 80
        height: 80
        color: "#bbd2e1"
        visible: true
        MouseArea {
            id: mouseArea11
            anchors.fill: parent
            }
    }

    Rectangle {
        id: rectangle12
        x: 410
        y: 210
        width: 80
        height: 80
        color: "#bbd2e1"
        visible: true
        MouseArea {
            id: mouseArea12
            anchors.fill: parent
            }
    }


    Rectangle {
        id: rectangle20
        x: 10
        y: 410
        width: 80
        height: 80
        color: "#bbd2e1"
        visible: true
        MouseArea {
            id: mouseArea20
            anchors.fill: parent
            }
    }

    Rectangle {
        id: rectangle21
        x: 210
        y: 410
        width: 80
        height: 80
        color: "#bbd2e1"
        visible: true
        MouseArea {
            id: mouseArea21
            anchors.fill: parent
            }
    }

    Rectangle {
        id: rectangle22
        x: 410
        y: 410
        width: 80
        height: 80
        color: "#bbd2e1"
        visible: true
        MouseArea {
            id: mouseArea22
            anchors.fill: parent
            }
    }


}
