import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Rectangle {
    Rectangle{
        id:optionbar
        width: 320
        height:35
        RowLayout {
            anchors.top: parent
            width: parent.width
            Button {
                text: 'Page 1'
                Layout.fillWidth: true
                onClicked: {
                    load_page(text);
                }
            }
            Button {
                text: 'Page 2'
                Layout.fillWidth: true
                onClicked: {
                    load_page(text);
                }
            }
            Button {
                text: 'Page 3'
                Layout.fillWidth: true
                onClicked: {
                    load_page(text);
                }
            }
            Button {
                text: 'Page 4'
                Layout.fillWidth: true
                onClicked: {
                    load_page(text);
                }
            }
        }
    }

    Rectangle{
        id:b
        anchors.top:optionbar.bottom
        width:320
        height: 280
        color:"blue"
    }
}




