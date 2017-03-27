import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Dialogs 1.2

ApplicationWindow {

    visible: true
    width: 500
    height: 613
    title: qsTr("Jeu de l'araignée")

    MainForm {

        anchors.fill: parent
        id : page
        button2.onClicked: Qt.quit();
        button1.onClicked: {
            page.rectangle00.color = "#bbd2e1";
            page.rectangle01.color = "#bbd2e1";
            page.rectangle02.color = "#bbd2e1";
            page.rectangle10.color = "#bbd2e1";
            page.rectangle11.color = "#bbd2e1";
            page.rectangle12.color = "#bbd2e1";
            page.rectangle20.color = "#bbd2e1";
            page.rectangle21.color = "#bbd2e1";
            page.rectangle22.color = "#bbd2e1";
            vueObjetCpt.init();
        }

        mouseArea00 {
            onClicked: page.rectangle00.color = vueObjetCpt.increment(0,0)
        }

        mouseArea01 {
            onClicked: page.rectangle01.color = vueObjetCpt.increment(0,1)
        }

        mouseArea02 {
            onClicked: page.rectangle02.color = vueObjetCpt.increment(0,2)
        }

        mouseArea10 {
            onClicked: page.rectangle10.color = vueObjetCpt.increment(1,0)
        }

        mouseArea11 {
            onClicked: page.rectangle11.color = vueObjetCpt.increment(1,1)
        }

        mouseArea12 {
            onClicked: page.rectangle12.color = vueObjetCpt.increment(1,2)
        }

        mouseArea20 {
            onClicked: page.rectangle20.color = vueObjetCpt.increment(2,0)
        }

        mouseArea21 {
            onClicked: page.rectangle21.color = vueObjetCpt.increment(2,1)
        }

        mouseArea22 {
            onClicked: page.rectangle22.color = vueObjetCpt.increment(2,2)
        }
    }




}
