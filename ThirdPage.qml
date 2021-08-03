import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    ColumnLayout {
        anchors.top: parent
        Repeater {
            model: ListModel {
                ListElement {
                    page: 'Keypad'
                }
                ListElement {
                    page: 'BitKey'
                }
                ListElement {
                    page: 'Page 3'
                }
                ListElement {
                    page: 'Page 4'
                }
                ListElement {
                    page: 'Page 5'
                }
            }
            Button {
                text: page
                onClicked: {
                    loadPage(text);
                }
            }
        }
    }
}
