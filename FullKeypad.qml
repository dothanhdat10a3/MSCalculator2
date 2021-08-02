import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3


Rectangle {
    property double result: 0.0
    property bool clearS: false
    property string operations:''
    Rectangle{
        id:optionBar
        width: 320
        height:35
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
                text: 'Page 2'
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

    Rectangle{
        id:keyboard
        anchors.top:optionBar.bottom
        width:320
        height: 280
        color:"red"
        Grid {
            columns: 6
            rows:6
            columnSpacing: 0
            rowSpacing: 0

            signal buttonPressed

            Button {id:buttonLsh; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "Lsh" }
            Button {id:buttonRsh; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "Rsh" }
            Button {id:buttonOr; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "Or" }
            Button {id:buttonXor; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "Xor" }
            Button {id:buttonNot; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "Not" }
            Button {id:buttonAnd; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "And" }
            Button {id:buttonup; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "|" }
            Button {id:buttonMod; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "Mod" }
            Button {id:buttonCE; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "CE" }
            Button {id:buttonClear; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "C" }
            Button {id:buttonBackspace; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "Back" }
            Button {id:buttonDivide; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "÷" }

            Button {id:buttonA; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "A" }
            Button {id:buttonB; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "B" }
            Button {id:button7; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "7" }
            Button {id:button8; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "8" }
            Button {id:button9; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "9" }
            Button {id:buttonMultiply; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "x" }
            Button {id:buttonC; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18;text: "C" }
            Button {id:buttonD; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18;text: "D" }
            Button {id:button4; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18;text: "4" }
            Button {id:button5; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18;text: "5" }
            Button {id:button6; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18;text: "6" }
            Button {id:buttonSubtract; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "-" }

            Button {id:buttonE; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "E" }
            Button {id:buttonF; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "F" }
            Button {id:button1; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "1" }
            Button {id:button2; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "2" }
            Button {id:button3; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "3" }
            Button {id:buttonAdd; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "+" }
            Button {id:buttonOpen; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "(" }
            Button {id:buttonClose; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: ")" }
            Button {id:buttonSign; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "+/-" }
            Button {id:button0; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "0" }
            Button {id:buttonDot; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "." }
            Button {id:buttonEquals; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 18; text: "=" }

        }
    }
    Component.onCompleted: {
        button0.clicked.connect(function(){
           if(clearS){
               resultText.clear();
           }
           resultText.text +="0";
        });
        button1.clicked.connect(function(){
            if(clearS){
                resultText.clear();
            }
           resultText.text +="1";
        });
        button2.clicked.connect(function(){
            if(clearS){
                resultText.clear();
            }
           resultText.text +="2";
        });
        button3.clicked.connect(function(){
            if(clearS){
                resultText.clear();
            }
           resultText.text +="3";
        });
        button4.clicked.connect(function(){
            if(clearS){
                resultText.clear();
            }
           resultText.text +="4";
        });
        button5.clicked.connect(function(){
            if(clearS){
                resultText.clear();
            }
           resultText.text +="5";
        });
        button6.clicked.connect(function(){
            if(clearS){
                resultText.clear();
            }
           resultText.text +="6";
        });
        button7.clicked.connect(function(){
            if(clearS){
                resultText.clear();
            }
           resultText.text +="7";
        });
        button8.clicked.connect(function(){
            if(clearS){
                resultText.clear();
            }
           resultText.text +="8";
        });
        button9.clicked.connect(function(){
            if(clearS){
                resultText.clear();
            }
           resultText.text +="9";
        });
        buttonAdd.clicked.connect(function(){
            operations = '+'
            result += parseFloat(resultText.text)
            clearS = true;
            console.log(result);
        });
        buttonClear.clicked.connect(function(){
            resultText.clear();
            result = 0.0;
        });
        buttonSubtract.clicked.connect(function(){
            operations = '-'
            result -= parseFloat(resultText.text)
            clearS = true;
            console.log(result);
        });
        buttonMultiply.clicked.connect(function(){
            operations = '*'
            result *= parseFloat(resultText.text)
            clearS = true;
            console.log(result);
        });
        buttonDivide.clicked.connect(function(){
            operations = '/'
            result /= parseFloat(resultText.text)
            clearS = true;
            console.log(result);
        });


        buttonEquals.clicked.connect(function(){
            if (operations === '+'){
                result += parseFloat(resultText.text);
            }else if(operations === '-'){
                result -= parseFloat(resultText.text);
            }else if(operations === 'x'){
                result *= parseFloat(resultText.text);
            }else if(operations === '/'){
                result /= parseFloat(resultText.text)
            }
            resultText.text = result;
            result = 0.0;

        });
    }
}




