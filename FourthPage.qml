import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    Row{
        Button {
            text: 'Keypad'
            width: optionBar.width/5
            height: optionBar.height
            anchors.fill: parent.height
            onClicked: {
                loadPage(text);
            }
        }
        Button {
            text: 'BitKey'
            width: optionBar.width/5
            height: optionBar.height
            onClicked: {
                loadPage(text);
            }
        }
        Button {
            text: 'Page 3'
            width: optionBar.width/5
            height: optionBar.height
            onClicked: {
                loadPage(text);
            }
        }
        Button {
            text: 'Page 4'
            width: optionBar.width/5
            height: optionBar.height
            onClicked: {
                loadPage(text);
            }
        }
        Button {
            text: 'Page 5'
            width: optionBar.width/5
            height: optionBar.height
            onClicked: {
                loadPage(text);
            }
        }
    }


}
