import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1



ApplicationWindow {

    visible: true
    width: 400
    height: 640
    title: qsTr("Call List")
    background: Rectangle{
        color: "lightgray"
    }


    ColumnLayout{ //Whole Window

        id: wholeColumn
        anchors.fill: parent
        spacing: 5

        /*   RowLayout { //Top bar


        id: rowLayout
        Layout.alignment: Qt.AlignTop
        Layout.fillWidth: true
        anchors.margins: 5
        width : parent.width
        height: 30

        spacing: 5
        z:2


        Rectangle { //Input

            Layout.fillWidth: true

            color: "white"
            height:parent.height

            TextInput {
                id: textInput
                width: parent.width
                height:parent.height
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter


                Keys.onPressed: {
                    if(event.key === 16777220){
                        calls.append({ textList: textInput.text })
                    }
                }
            }
        }

        Button {
            id: button
            text: qsTr("Add call")
            height: parent.height

            onClicked: {
                MyListModel.append({ textList: textInput.text })
            }
        }
    }
*/

        Rectangle { // All and Missed Buttons Bar
            id: allMissedBar

            height: 50
            Layout.fillWidth: true
            color: "white"


            Rectangle{

                color: "dodgerblue"
                id:allMisedButton
                height: 35
                width: 175
                anchors.verticalCenter:  parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter


                RowLayout{
                    anchors.fill:parent
                    spacing: 0
                    Button{
                        id: all
                        text: qsTr("All")
                        background:
                            Rectangle{
                            id:firstButt
                            color: "dodgerblue"
                            implicitWidth: 100
                            implicitHeight: 40
                            border.color:"dodgerblue"
                            border.width: 2
                        }
                        contentItem: Text {
                            id:textAll
                            text: all.text
                            color:"white"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter

                        }
                        onClicked: {
                            firstButt.color = "dodgerblue";
                            textAll.color = "white";
                            secondButt.color = "white";
                            textMissed.color = "dodgerblue";
                            allCallsModel.visible = true;
                            missedCallsModel.visible = false;

                        }
                    }
                    Button{
                        id: missed
                        text: qsTr("Missed")
                        background:
                            Rectangle{
                            id:secondButt
                            color:"white"
                            implicitWidth: 100
                            implicitHeight: 40
                            border.color:"dodgerblue"
                            border.width: 2
                        }

                        contentItem: Text {
                            id:textMissed
                            text: missed.text
                            color:"dodgerblue"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter

                        }
                        onClicked: {
                            firstButt.color = "white";
                            textAll.color = "dodgerblue";
                            secondButt.color = "dodgerblue";
                            textMissed.color = "white";
                            allCallsModel.visible = false;
                            missedCallsModel.visible = true;

                        }
                    }

                }
            }
        }

        ContactsListView{
            id: allCallsModel
            model: myModel
            visible: true

        }
        ContactsListView{
            id: missedCallsModel
            model: myMissedModel
            visible: false

        }
    }

}
