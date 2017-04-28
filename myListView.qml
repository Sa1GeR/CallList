import QtQuick 2.5
import QtQuick.Layouts 1.1

ListView { //List
    id: myListView

    anchors.top: iPhoneBar.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    anchors.margins: 0
    spacing : 2

    model: ListModel
    {
       id: listModel
    }
    z: 1

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

                    source: "qrc:/img/call3.svg"
                }
            }
            Rectangle {
                width: parent.width/2 -40
                height: parent.height-5
                anchors.bottom: parent.bottom
                Text { //Phone Number
                   //  anchors.centerIn: parent
                     font.family: " Helvetica"
                     font.pointSize: 15
                     text: textList
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

                     property var date : new Date()

                     anchors.centerIn: parent
                     font.family: "Helvetica"
                     font.pointSize: 12
                     color:"darkgray"
                     text: date.getHours()+":"+date.getMinutes()+"\n"+date.getDate()+".0"+(date.getMonth()+1)
                }

            }
            Rectangle {
                width: 60
                height: parent.height

                Image {
                    anchors.verticalCenter:  parent.verticalCenter
                    width: 35
                    height: 35
                    source: "qrc:/img/info.png"
                }
            }
            }

}
}
