import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQml 2.1 // Fix: component property name M10



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

    Rectangle{
        id:keyboard
        anchors.top:optionBar.bottom
        width:320
        height: 280
        color:"black"
        Grid {
            columns: 6
            rows:6
            columnSpacing: 2
            rowSpacing: 2
            signal buttonPressed

            Button {id:buttonLsh; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "Lsh"}
            Button {id:buttonRsh; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "Rsh"}
            Button {id:buttonOr; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "OR"}
            Button {id:buttonXor; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "XOR"}
            Button {id:buttonNot; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "NOT"}
            Button {id:buttonAnd; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "AND"}
            Button {id:buttonUp; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "|"}
            Button {id:buttonMod; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "Mod"}
            Button {id:buttonCE; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "CE"}//; onClicked: resultText.text = ''; }
            Button {id:buttonClear; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "C"}//; onClicked: {resultText.text = ''; expressionText.text = '';}}
            Button {id:buttonBackspace; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "<x]"}
            Button {id:buttonDivide; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "÷"}

            Button {id:buttonA; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "A"; enabled: false}
            Button {id:buttonB; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "B"; enabled: false}
            Button {id:button7; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "7"}
            Button {id:button8; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "8"}
            Button {id:button9; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "9"}
            Button {id:buttonMultiply; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "x" }
            Button {id:buttonC; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17;text: "C" ; enabled: false}
            Button {id:buttonD; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17;text: "D" ; enabled: false}
            Button {id:button4; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17;text: "4" }
            Button {id:button5; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17;text: "5"}
            Button {id:button6; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17;text: "6"}
            Button {id:buttonSubtract; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "-"}

            Button {id:buttonE; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "E"; enabled: false}
            Button {id:buttonF; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "F"; enabled: false}
            Button {id:button1; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "1"}
            Button {id:button2; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "2"}
            Button {id:button3; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "3"}
            Button {id:buttonAdd; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "+"}
            Button {id:buttonOpen; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "("}
            Button {id:buttonClose; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: ")"}
            Button {id:buttonSign; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "+/-"}
            Button {id:button0; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "0"}
            Button {id:buttonDot; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "."}
            Button {id:buttonEquals; highlighted: true; width: keyboard.width/6-2;height: keyboard.height/6-2 ; font.bold: false; font.pixelSize: 17; text: "="}
        }
    }


    property int result: 0
    // property bool clearScr: false
    property string operation: ''
    property string radixChoice: "DEC"
    property int radixChoiceToCastToCpp: 2
    property bool checkOperationClicked: false // check "+ - x /" clicked.


    //qmlRegisterType( QUrl( "qrc:/MyType.qml" ), "LibA", 1, 0, "MyType" ); --> Fix: Invalid property name M16
    Component.onCompleted: {
        buttonDot.enabled = false
        numberHex = 0;
        numberDec = 0;
        numberOct = 0;
        numberBin = 0;


        hexMouse.clicked.connect(function(){
            radixChoice = "HEX";
            radixChoiceToCastToCpp = 1;
            number.setRadixChoice(radixChoiceToCastToCpp);
            button2.enabled = true
            button3.enabled = true
            button4.enabled = true
            button5.enabled = true
            button6.enabled = true
            button7.enabled = true
            button8.enabled = true
            button9.enabled = true
            buttonA.enabled = true
            buttonB.enabled = true
            buttonC.enabled = true
            buttonD.enabled = true
            buttonE.enabled = true
            buttonF.enabled = true
            console.log("RadixChoce: HEX")
        });

        decMouse.clicked.connect(function(){
            radixChoice = "DEC";
            radixChoiceToCastToCpp = 2;
            number.setRadixChoice(radixChoiceToCastToCpp);
            button2.enabled = true
            button3.enabled = true
            button4.enabled = true
            button5.enabled = true
            button6.enabled = true
            button7.enabled = true
            button8.enabled = true
            button9.enabled = true

            buttonA.enabled = false
            buttonB.enabled = false
            buttonC.enabled = false
            buttonD.enabled = false
            buttonE.enabled = false
            buttonF.enabled = false
            console.log("RadixChoce: DEC")
        });
        octMouse.clicked.connect(function(){
            radixChoice = "OCT";
            radixChoiceToCastToCpp = 3;
            number.setRadixChoice(radixChoiceToCastToCpp);
            button2.enabled = true
            button3.enabled = true
            button4.enabled = true
            button5.enabled = true
            button6.enabled = true
            button7.enabled = true
            button8.enabled = false
            button9.enabled = false

            buttonA.enabled = false
            buttonB.enabled = false
            buttonC.enabled = false
            buttonD.enabled = false
            buttonE.enabled = false
            buttonF.enabled = false
            console.log("RadixChoce: OCT")
        });

        binMouse.clicked.connect(function(){
            radixChoice = "BIN";
            radixChoiceToCastToCpp = 4;
            number.setRadixChoice(radixChoiceToCastToCpp);
            button2.enabled = false
            button3.enabled = false
            button4.enabled = false
            button5.enabled = false
            button6.enabled = false
            button7.enabled = false
            button8.enabled = false
            button9.enabled = false

            buttonA.enabled = false
            buttonB.enabled = false
            buttonC.enabled = false
            buttonD.enabled = false
            buttonE.enabled = false
            buttonF.enabled = false
            console.log("RadixChoce: BIN")
        });


        button0.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '0';
            else resultText.text += '0';
            number.setNumberInput(resultText.text);
        });

        button1.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '1';
            number.setNumberInput(resultText.text);
            if(radixChoice == "HEX"){
                resultText.text = numberHex;
            }
            else if(radixChoice == "DEC"){
                resultText.text = numberDec;
            }
            else if(radixChoice == "OCT"){
                resultText.text = numberOct;
            }
            else if(radixChoice == "BIN"){
                resultText.text = numberBin;
            }

        });

        button2.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '2';
            number.setNumberInput(resultText.text);

        });

        button3.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '3';
            number.setNumberInput(resultText.text);
        });

        button4.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '4';
            number.setNumberInput(resultText.text);
        });

        button5.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '5';
            number.setNumberInput(resultText.text);
        });

        button6.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '6';
            number.setNumberInput(resultText.text);
        });

        button7.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '7';
            number.setNumberInput(resultText.text);
        });

        button8.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '8';
            number.setNumberInput(resultText.text);
        });

        button9.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '9';
            number.setNumberInput(resultText.text);
        });

        buttonA.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'A';
            number.setNumberInput(resultText.text);
        });

        buttonB.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'B';
            number.setNumberInput(resultText.text);
        });

        buttonC.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'C';
            number.setNumberInput(resultText.text);
        });

        buttonD.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'D';
            number.setNumberInput(resultText.text);
        });

        buttonE.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'E';
            number.setNumberInput(resultText.text);
        });

        buttonF.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'F';
            number.setNumberInput(resultText.text);
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
            expressionText.text += resultText.text + "%";
            result += parseInt(resultText.text,radix);
            checkOperationClicked = false;
            resultText.clear();
        });
        buttonBackspace.clicked.connect(function(){
            ///
            if(resultText.text==='0'||resultText.text.length==1||resultText.text =='') {

                resultText.text = '0'
            }
            else resultText.text = resultText.text.substring(0,resultText.cursorPosition-1)

            number.setNumberInput(resultText.text)
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

            numberHex = 0;
            numberDec = 0;
            numberOct = 0;
            numberBin = 0;
        });
        buttonClear.clicked.connect(function(){
            resultText.text = '0';
            expressionText.clear();
            result = 0;
            numberHex = 0;
            numberDec = 0;
            numberOct = 0;
            numberBin = 0;

        });

        //////////// + - x /
        buttonAdd.clicked.connect(function(){
            operation = '+';

            if(checkOperationClicked == true) expressionText.clear();
            expressionText.text += resultText.text + "+";
            result += parseInt(resultText.text,radix);
            checkOperationClicked = false;
            resultText.clear();

        });
        buttonSubtract.clicked.connect(function(){
            operation = '-'

            if(checkOperationClicked == true) expressionText.clear();
            expressionText.text += resultText.text + "-";
            result += parseInt(resultText.text,radix);
            checkOperationClicked = false;
            resultText.clear();

        });
        buttonMultiply.clicked.connect(function(){
            operation = '*'

            if(checkOperationClicked == true) expressionText.clear();
            expressionText.text += resultText.text + "*";

            result += parseInt(resultText.text,radix);
            checkOperationClicked = false;
            resultText.clear();
        });
        buttonDivide.clicked.connect(function(){
            operation = '/'

            if(checkOperationClicked == true) expressionText.clear();
            expressionText.text += resultText.text + "/";
            result += parseInt(resultText.text,radix);
            checkOperationClicked = false;
            resultText.clear();
        });

        buttonEquals.clicked.connect(function(){
            if(checkOperationClicked == true){
                expressionText.clear();
            }
            if(operation === ''){
                expressionText.text += resultText.text + "=";
                result += parseInt(resultText.text,radix);
                console.log("result: %d",result);
            }
            else if(operation === '+'){
                expressionText.text += resultText.text + "=";
                result += parseInt(resultText.text,radix);
                console.log("result: %d",result);
            } else if (operation === '-'){
                expressionText.text += resultText.text + "=";
                result -= parseInt(resultText.text,radix);
                console.log("result: %d",result);
            } else if (operation === '*'){
                expressionText.text += resultText.text + "=";
                result *= parseInt(resultText.text,radix);
                console.log("result: %d",result);
            }else if (operation === '/'){
                expressionText.text += resultText.text + "=";
                result /= parseInt(resultText.text,radix);
                console.log("result: %d",result);
            }else if (operation === '%'){
                expressionText.text += resultText.text + "=";
                result %= parseInt(resultText.text,radix);
                console.log("result: %d",result);
            }

            resultText.text = result;
            number.setNumberInput(resultText.text);

            if(radixChoice == "HEX"){
                resultText.text = numberHex;
            }
            else if(radixChoice == "DEC"){
                resultText.text = numberDec;
            }
            else if(radixChoice == "OCT"){
                resultText.text = numberOct;
            }
            else if(radixChoice == "BIN"){
                resultText.text = numberBin;
            }

            checkOperationClicked = true;
            result = 0;
        });

    }
}



