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
            onClicked: stateGroup.state = 'State00'
        }

        mouseArea01 {
            onClicked: stateGroup.state = 'State01'
        }

        mouseArea02 {
            onClicked: stateGroup.state = 'State02'
        }

        mouseArea10 {
            onClicked: stateGroup.state = 'State10'
        }

        mouseArea11 {
            onClicked: stateGroup.state = 'State11'
        }

        mouseArea12 {
            onClicked: stateGroup.state = 'State12'
        }

        mouseArea20 {
            onClicked: stateGroup.state = 'State20'
        }

        mouseArea21 {
            onClicked: stateGroup.state = 'State21'
        }

        mouseArea22 {
            onClicked: stateGroup.state = 'State22'
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

    StateGroup {
                id: stateGroup
                states: [
                    State {
                        name: "State00"

                        PropertyChanges {
                            target: page.rectangle00
                            color: "#00ff00"
                        }
                    },
                    State {
                        name: "State01"

                        PropertyChanges {
                            target: page.rectangle01
                            color: "#00ff00"
                        }
                    },
                    State {
                        name: "State02"

                        PropertyChanges {
                            target: page.rectangle02
                            color: "#00ff00"
                        }
                    },
                    State {
                        name: "State10"

                        PropertyChanges {
                            target: page.rectangle10
                            color: "#00ff00"
                        }
                    },
                    State {
                        name: "State11"

                        PropertyChanges {
                            target: page.rectangle11
                            color: "#00ff00"
                        }
                    },
                    State {
                        name: "State12"

                        PropertyChanges {
                            target: page.rectangle12
                            color: "#00ff00"
                        }
                    },
                    State {
                        name: "State20"

                        PropertyChanges {
                            target: page.rectangle20
                            color: "#00ff00"
                        }
                    },
                    State {
                        name: "State21"

                        PropertyChanges {
                            target: page.rectangle21
                            color: "#00ff00"
                        }
                    },
                    State {
                        name: "State22"

                        PropertyChanges {
                            target: page.rectangle22
                            color: "#00ff00"
                        }
                    }
                ]
    }
}
