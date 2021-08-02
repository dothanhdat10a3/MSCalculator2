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
        id:keyboard
        anchors.top:optionbar.bottom
        width:320
        height: 280
        color:"red"
        Grid {
            columns: 6
            rows:6
            columnSpacing: 0
            rowSpacing: 0

            signal buttonPressed

            Button {id:buttonLsh; width: keyboard.width/6;height: keyboard.height/6 ; text: "Lsh" }
            Button {id:buttonRsh; width: keyboard.width/6;height: keyboard.height/6 ; text: "Rsh" }
            Button {id:buttonOr; width: keyboard.width/6;height: keyboard.height/6 ; text: "Or" }
            Button {id:buttonXor; width: keyboard.width/6;height: keyboard.height/6 ; text: "Xor" }
            Button {id:buttonNot; width: keyboard.width/6;height: keyboard.height/6 ; text: "Not" }
            Button {id:buttonAnd; width: keyboard.width/6;height: keyboard.height/6 ; text: "And" }
            Button {id:buttonup; width: keyboard.width/6;height: keyboard.height/6 ; text: "|" }
            Button {id:buttonMod; width: keyboard.width/6;height: keyboard.height/6 ; text: "Mod" }
            Button {id:buttonCE; width: keyboard.width/6;height: keyboard.height/6 ; text: "CE" }
            Button {id:buttonClear; width: keyboard.width/6;height: keyboard.height/6 ; text: "C" }
            Button {id:buttonBackspace; width: keyboard.width/6;height: keyboard.height/6 ; text: "Baskspace" }
            Button {id:buttonDivide; width: keyboard.width/6;height: keyboard.height/6 ; text: "÷" }

            Button {id:buttonA; width: keyboard.width/6;height: keyboard.height/6 ; text: "A" }
            Button {id:buttonB; width: keyboard.width/6;height: keyboard.height/6 ; text: "B" }
            Button {id:button7; width: keyboard.width/6;height: keyboard.height/6 ; text: "7" }
            Button {id:button8; width: keyboard.width/6;height: keyboard.height/6 ; text: "8" }
            Button {id:button9; width: keyboard.width/6;height: keyboard.height/6 ; text: "9" }
            Button {id:buttonMultiply; width: keyboard.width/6;height: keyboard.height/6 ; text: "x" }
            Button {id:buttonC; width: keyboard.width/6;height: keyboard.height/6 ; text: "C" }
            Button {id:buttonD; width: keyboard.width/6;height: keyboard.height/6 ; text: "D" }
            Button {id:button4; width: keyboard.width/6;height: keyboard.height/6 ; text: "4" }
            Button {id:button5; width: keyboard.width/6;height: keyboard.height/6 ; text: "5" }
            Button {id:button6; width: keyboard.width/6;height: keyboard.height/6 ; text: "6" }
            Button {id:buttonSubtract; width: keyboard.width/6;height: keyboard.height/6 ; text: "-" }

            Button {id:buttonE; width: keyboard.width/6;height: keyboard.height/6 ; text: "E" }
            Button {id:buttonF; width: keyboard.width/6;height: keyboard.height/6 ; text: "F" }
            Button {id:button1; width: keyboard.width/6;height: keyboard.height/6 ; text: "1" }
            Button {id:button2; width: keyboard.width/6;height: keyboard.height/6 ; text: "2" }
            Button {id:button3; width: keyboard.width/6;height: keyboard.height/6 ; text: "3" }
            Button {id:buttonAdd; width: keyboard.width/6;height: keyboard.height/6 ; text: "+" }
            Button {id:buttonOpen; width: keyboard.width/6;height: keyboard.height/6 ; text: "(" }
            Button {id:buttonClose; width: keyboard.width/6;height: keyboard.height/6 ; text: ")" }
            Button {id:buttonSign; width: keyboard.width/6;height: keyboard.height/6 ; text: "+/-" }
            Button {id:button0; width: keyboard.width/6;height: keyboard.height/6 ; text: "0" }
            Button {id:buttonDot; width: keyboard.width/6;height: keyboard.height/6 ; text: "." }
            Button {id:buttonEquals; width: keyboard.width/6;height: keyboard.height/6 ; text: "=" }



        }
    }
}




