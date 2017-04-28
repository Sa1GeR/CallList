import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0


ListView { //List

    spacing : 2

    width: parent.width

    Layout.fillWidth: true
    Layout.fillHeight: true
    z:1

    delegate:  Rectangle { //One Element
        width: parent.width
        height: 60
        color: "white"


        RowLayout {
            anchors.fill: parent

            spacing: 5
            Rectangle {
                width: 50
                height: parent.height
                Image {
                    anchors.centerIn: parent
                    width: 20
                    height: 20

                    source: callType == 1 ? "qrc:/img/call3.svg" : "qrc:/img/missed-call_icon.png"
                }
            }
            Rectangle {
                width: parent.width/2 -40
                height: parent.height-5
                anchors.bottom: parent.bottom
                Text { //Phone Number
                    //  anchors.centerIn: parent
                    font.family: "Helvetica"
                    font.pointSize: 15
                    text: caller
                }
                Text {//Type of number
                    //  anchors.centerIn: parent
                    font.family: "Helvetica"
                    font.pointSize: 9
                    text: "\n\n Mobile"
                }
            }
            Rectangle {
                width: parent.width/2 - 100
                height: parent.height
                Text {


                    anchors.centerIn: parent
                    font.family: "Helvetica"
                    font.pointSize: 12
                    color:"darkgray"
                    text:  dateTime.getHours()+":"+dateTime.getMinutes()+"\n"+dateTime.getDate()+".0"+(dateTime.getMonth()+1)
                }

            }
            Rectangle {
                width: 60
                height: parent.height

                Image {
                    anchors.verticalCenter:  parent.verticalCenter
                    width: 35
                    height: 35
                    source:   "qrc:/img/info.png"
                }
            }
        }

    }
}
