import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Dialogs 1.2

ApplicationWindow {

    visible: true
    width: 500
    height: 500
    title: qsTr("Jeu de l'araignée")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    MainForm {

        anchors.fill: parent
        id : page

        mouseArea00 {
            onClicked: page.rectangle00.color = "#ff0000"
        }

        mouseArea01 {
            onClicked: page.rectangle01.color = "#ff0000"
        }

        mouseArea02 {
            onClicked: page.rectangle02.color = vueObjetCpt.increment(0,2)
        }

        mouseArea10 {
            onClicked: page.rectangle10.color = "#ff0000"
        }

        mouseArea11 {
            onClicked: page.rectangle11.color = "#ff0000"
        }

        mouseArea12 {
            onClicked: page.rectangle12.color = "#ff0000"
        }

        mouseArea20 {
            onClicked: page.rectangle20.color = "#ff0000"
        }

        mouseArea21 {
            onClicked: page.rectangle21.color = "#ff0000"
        }

        mouseArea22 {
            onClicked: page.rectangle22.color = "#ff0000"
        }

    }


    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }


}
