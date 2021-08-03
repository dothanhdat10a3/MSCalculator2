import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3



Rectangle {

    Rectangle{
        id:optionBar
        width: 320
        height:35
        Row{

            Button {
                text: 'Keypad'
                width: optionBar.width/5
                height: optionBar.height
                font.bold: true
                onClicked: {
                    loadPage(text);
                }
            }
            Button {
                text: 'BitKey'
                width: optionBar.width/5
                height: optionBar.height
                font.bold: true
                onClicked: {
                    loadPage(text);
                }
            }
            Button {
                text: 'Page 3'
                width: optionBar.width/5
                height: optionBar.height
                //anchors.fill: parent
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
        color:"#33FF99"
        Grid {
            columns: 6
            rows:6
            columnSpacing: 1
            rowSpacing: 1
            signal buttonPressed

            Button {id:buttonLsh; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "Lsh"}
            Button {id:buttonRsh; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "Rsh"}
            Button {id:buttonOr; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "OR"}
            Button {id:buttonXor; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "XOR"}
            Button {id:buttonNot; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "NOT"}
            Button {id:buttonAnd; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "AND"}
            Button {id:buttonUp; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "|"}
            Button {id:buttonMod; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "Mod"}
            Button {id:buttonCE; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "CE"}//; onClicked: resultText.text = ''; }
            Button {id:buttonClear; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "C"}//; onClicked: {resultText.text = ''; expressionText.text = '';}}
            Button {id:buttonBackspace; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "<x]"}
            Button {id:buttonDivide; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "÷"}

            Button {id:buttonA; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "A"}
            Button {id:buttonB; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "B"}
            Button {id:button7; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "7"}
            Button {id:button8; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "8"}
            Button {id:button9; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "9"}
            Button {id:buttonMultiply; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "x" }
            Button {id:buttonC; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17;text: "C" }
            Button {id:buttonD; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17;text: "D" }
            Button {id:button4; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17;text: "4" }
            Button {id:button5; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17;text: "5"}
            Button {id:button6; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17;text: "6"}
            Button {id:buttonSubtract; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "-"}

            Button {id:buttonE; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "E"}
            Button {id:buttonF; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "F"}
            Button {id:button1; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "1"}
            Button {id:button2; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "2"}
            Button {id:button3; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "3"}
            Button {id:buttonAdd; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "+"}
            Button {id:buttonOpen; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "("}
            Button {id:buttonClose; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: ")"}
            Button {id:buttonSign; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "+/-"}
            Button {id:button0; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "0"}
            Button {id:buttonDot; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "."}
            Button {id:buttonEquals; width: keyboard.width/6-1;height: keyboard.height/6-1 ; font.bold: false; font.pixelSize: 17; text: "="}
        }
    }

    property int result: 0
    //property bool clear: false
    property string operation: ''
    property bool checkOperationClicked: false // check "+ - x /" clicked.


//qmlRegisterType( QUrl( "qrc:/MyType.qml" ), "LibA", 1, 0, "MyType" ); --> Fix: Invalid property name M16
    Component.onCompleted: {
        button0.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '0';
            else resultText.text += '0';
        });

        button1.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '1';
        });

        button2.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '2';
        });

        button3.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '3';
        });

        button4.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '4';
        });

        button5.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '5';
        });

        button6.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '6';
        });

        button7.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '7';
        });

        button8.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '8';
        });

        button9.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '9';
        });

        buttonA.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'A';
        });

        buttonB.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'B';
        });

        buttonC.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'C';
        });

        buttonD.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'D';
        });

        buttonE.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'E';
        });

        buttonF.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'F';
        });

        buttonLsh.clicked.connect(function(){
            expressionText.text += 'Lsh';
        });
        buttonRsh.clicked.connect(function(){
            expressionText.text += 'Rsh';
        });
        buttonOr.clicked.connect(function(){
            expressionText.text += 'Or';
        });
        buttonXor.clicked.connect(function(){
            expressionText.text += 'Xor';
        });
        buttonNot.clicked.connect(function(){
            expressionText.text += 'Not';
        });
        buttonAnd.clicked.connect(function(){
            expressionText.text += 'And';
        });
        buttonUp.clicked.connect(function(){
            expressionText.text += '|';
        });
        buttonMod.clicked.connect(function(){
            operation = '%'

            if(checkOperationClicked == true) expressionText.clear();
            expressionText.text += parseInt(resultText.text,radix) + "%";
            result += parseInt(resultText.text,radix);
            checkOperationClicked = false;
            resultText.clear();
        });
        buttonBackspace.clicked.connect(function(){
            ///
            if(resultText.text==='0'||resultText.text.length==1) resultText.text = '0'
            else resultText.text = resultText.text.substring(0,resultText.cursorPosition-1)
        });
        buttonOpen.clicked.connect(function(){
            expressionText.text += '(';
        });
        buttonClose.clicked.connect(function(){
            expressionText.text += ')';
        });
        buttonSign.clicked.connect(function(){
            resultText.text = -1* parseInt(resultText.text,radix)
        });
        buttonDot.clicked.connect(function(){
            //////////expressionText.text += '';
        });
        buttonCE.clicked.connect(function(){
            resultText.text = '0';
            //resultText.text = "0";
            //  clear = false;
        });
        buttonClear.clicked.connect(function(){
            resultText.text = '0';
            expressionText.clear();
            //resultText.text = "0";
            result = 0;
            // clear = false;
        });

        //////////// + - x /
        buttonAdd.clicked.connect(function(){
            operation = '+';

            if(checkOperationClicked == true) expressionText.clear();
            expressionText.text += parseInt(resultText.text,radix) + "+";
            result += parseInt(resultText.text,radix);
            checkOperationClicked = false;
            resultText.clear();
            // clear = true;
        });
        buttonSubtract.clicked.connect(function(){
            operation = '-'

            if(checkOperationClicked == true) expressionText.clear();
            expressionText.text += parseInt(resultText.text,radix) + "-";
            result += parseInt(resultText.text,radix);
            checkOperationClicked = false;
            resultText.clear();
            // clear = true;
        });
        buttonMultiply.clicked.connect(function(){
            operation = 'x'

            if(checkOperationClicked == true) expressionText.clear();
            expressionText.text += parseInt(resultText.text,radix) + "x";

            result += parseInt(resultText.text,radix);
            checkOperationClicked = false;
            resultText.clear();
            //clear = true;
        });
        buttonDivide.clicked.connect(function(){
            operation = '/'

            if(checkOperationClicked == true) expressionText.clear();
            expressionText.text += parseInt(resultText.text,radix) + "/";
            result += parseInt(resultText.text,radix);
            checkOperationClicked = false;
            resultText.clear();
            //   clear = true;
        });

        buttonEquals.clicked.connect(function(){
            if(checkOperationClicked == true){
                expressionText.clear();
            }
            if(operation === ''){
                expressionText.text += parseInt(resultText.text,radix) + "=";
                result += parseInt(resultText.text,radix);
            }
            else if(operation === '+'){
                expressionText.text += parseInt(resultText.text,radix) + "=";
                result += parseInt(resultText.text,radix);
            } else if (operation === '-'){
                expressionText.text += parseInt(resultText.text,radix) + "=";
                result -= parseInt(resultText.text,radix);
            } else if (operation === 'x'){
                expressionText.text += parseInt(resultText.text,radix) + "=";
                result *= parseInt(resultText.text,radix);
            }else if (operation === '/'){
                expressionText.text += parseInt(resultText.text,radix) + "=";
                result /= parseInt(resultText.text,radix);
            }else if (operation === '%'){
                expressionText.text += parseInt(resultText.text,radix) + "=";
                result %= parseInt(resultText.text,radix);
            }

            resultText.text = result;
            checkOperationClicked = true;
            result = 0;
        });
    }
}



