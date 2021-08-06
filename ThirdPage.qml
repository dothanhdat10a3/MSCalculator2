import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Rectangle {

    Rectangle{
        id:optionBar
        width: 320
        height:35
        color: "green"
        Row{
            spacing: 4
            Button {
                text: 'Keypad'
                width: optionBar.width/5.5
                height: optionBar.height-3
                font.bold: true
                onClicked: {
                    loadPage(text);
                }
            }
            Button {
                text: 'BitKey'
                width: optionBar.width/5.5
                height: optionBar.height-3
                font.bold: true
                onClicked: {
                    loadPage(text);
                }
            }
            Button {
                text: 'DataType'
                width: optionBar.width/4
                height: optionBar.height-3
                font.bold: true
                onClicked: {
                    loadPage(text);
                }
            }
            Button {
                text: 'MS'
                width: optionBar.width/6
                height: optionBar.height-3
                onClicked: {
                    loadPage(text);
                }
            }
            Button {
                text: 'M'
                width: optionBar.width/6
                height: optionBar.height-3
                onClicked: {
                    loadPage(text);
                }
            }
        }
    }
}
