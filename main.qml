import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQml 2.1 // Fix: component property name


Window {
    width: 320
    height: 505
    visible: true
    title: qsTr("MS CALCULATOR")

    property var numberHex
    property var numberDec
    property var numberOct
    property var numberBin

    property int radix: 10


    onNumberDecChanged:
    {
        console.log("onNumberDecChanged" + numberDec)
    }

    onNumberHexChanged:
    {
        console.log("onNumberHexChanged" + numberHex)
    }

    onNumberOctChanged:
    {
        console.log("onNumberOctChanged" + numberOct)
    }

    Text{
        id:programNameText
        anchors.left: parent.left
        anchors.top: parent.top
        text: "  =   Programmer"
        color: "black"
        font.pixelSize: 20
        font.family: "Abadi"
        fontSizeMode: Text.Fit

    }

    Rectangle{
        id: expressionArea
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: programNameText.bottom
        height: 30
        border.color: "#D3D3D3"
        border.width: 1
        color: "#E8E8E8"
        TextField {
            id: expressionText
            anchors.fill: parent
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.TopRight
            text: ""
            color: "#444444"
            font.pixelSize: 18
            font.family: "Arial"
            //fontSizeMode: Text.Fit
        }
    }

    //resultArea
    Rectangle {
        id: resultArea
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: expressionArea.bottom
        height: 40
        border.color: "#D3D3D3"
        border.width: 1
        color: "#E8E8E8"
        TextField {
            id: resultText
            //            anchors.leftMargin: buttons.implicitMargin
            //            anchors.rightMargin: buttons.implicitMargin
            anchors.fill: parent
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.TopRight
            text: "0"
            color: "black"
            font.pixelSize: 25
            font.family: "Arial"
            //fontSizeMode: Text.Fit
        }
    }

    //hexResult
    Rectangle {
        id: hexResult
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: resultArea.bottom
        height:23.5
        border.color: "#D3D3D3"
        border.width: 1
        color: "#E8E8E8"
        Rectangle{
            id:hex
            x:0
            y:0
            height: hexResult.height
            width: hexResult.height*2
            border.color: "#E8E8E8"
            border.width: 1
            color: "#D3D3D3"
            Text {
                id: hexadecimal
                text: "HEX"
                anchors.centerIn: hex
                color: "black"
                font.pixelSize: 10
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
        }
        Rectangle{
            id:hexValue
            anchors.left: hex.right
            height: hexResult.height
            width:hexResult.width-hex.width
            border.color: "#E8E8E8"
            border.width: 1
            color: "#D3D3D3"
            Text {

                id: hexadecimalValue
                text: numberHex
                anchors.left: hexValue.left
                anchors.leftMargin: 5

                color: "black"
                font.pixelSize: 12
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
        }
        MouseArea
        {
            id:hexMouse
            anchors.fill: hexResult
            onClicked: {
                radix = 16
                hex.color = "#33CCFF"
                hexValue.color= "#33CCFF"

                dec.color = "#D3D3D3"
                decValue.color= "#D3D3D3"

                oct.color = "#D3D3D3"
                octValue.color= "#D3D3D3"

                bin.color = "#D3D3D3"
                binValue.color= "#D3D3D3"


                // Qt.quit();
            }
        }

    }

    //DecResult
    Rectangle {
        id: decResult
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: hexResult.bottom
        height:23.5
        border.color: "#E8E8E8"
        border.width: 1
        color: "#33CCFF"
        Rectangle{
            id:dec
            x:0
            y:0
            height: decResult.height
            width: decResult.height*2
            border.color: "#E8E8E8"
            border.width: 1
            color: "#33CCFF"
            Text {
                id: decadecimal
                text: "DEC"
                anchors.centerIn: dec
                color: "black"
                font.pixelSize: 10
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
        }
        Rectangle{
            id:decValue
            anchors.left: dec.right
            height: decResult.height
            width: decResult.width-dec.width
            border.color: "#E8E8E8"
            border.width: 1
            color: "#33CCFF"
            Text {
                id: decimalValue
                text: numberDec
                anchors.left: decValue.left
                anchors.leftMargin: 5
                color: "black"
                font.pixelSize: 12
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
        }
        MouseArea
        {
            id: decMouse
            anchors.fill: decResult
            onClicked: {
                radix = 10;
                hex.color = "#D3D3D3"
                hexValue.color= "#D3D3D3"

                dec.color = "#33CCFF"
                decValue.color= "#33CCFF"

                oct.color = "#D3D3D3"
                octValue.color= "#D3D3D3"

                bin.color = "#D3D3D3"
                binValue.color= "#D3D3D3"
                // Qt.quit();
            }
        }
    }

    //octResult
    Rectangle {
        id: octResult
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: decResult.bottom
        height:23.5
        border.color: "#E8E8E8"
        border.width: 1
        color: "#D3D3D3"
        Rectangle{
            id:oct
            x:0
            y:0
            height: octResult.height
            width: octResult.height*2
            border.color: "#E8E8E8"
            border.width: 1
            color: "#D3D3D3"
            Text {
                id: octal
                text: "OCT"
                anchors.centerIn: oct
                color: "black"
                font.pixelSize: 10
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
        }
        Rectangle{
            id:octValue
            anchors.left: oct.right
            height: octResult.height
            width: octResult.width-oct.width
            border.color: "#E8E8E8"
            border.width: 1
            color: "#D3D3D3"
            Text {
                id: octalValue
                text: numberOct
                anchors.left: octValue.left
                anchors.leftMargin: 5
                color: "black"
                font.pixelSize: 12
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
        }
        MouseArea
        {
            id: octMouse
            anchors.fill: octResult
            onClicked: {
                radix = 8;

                hex.color = "#D3D3D3"
                hexValue.color= "#D3D3D3"

                dec.color = "#D3D3D3"
                decValue.color= "#D3D3D3"

                oct.color = "#33CCFF"
                octValue.color= "#33CCFF"

                bin.color = "#D3D3D3"
                binValue.color= "#D3D3D3"

                // Qt.quit();
            }
        }
    }

    //binResult
    Rectangle {
        id: binResult
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: octResult.bottom
        height:23.5
        border.color: "#E8E8E8"
        border.width: 1
        color: "#D3D3D3"
        Rectangle{
            id:bin
            x:0
            y:0
            height: binResult.height
            width: binResult.height*2
            border.color: "#E8E8E8"
            border.width: 1
            color: "#D3D3D3"
            Text {
                id: binary
                text: "BIN"
                anchors.centerIn: bin
                color: "black"
                font.pixelSize: 10
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
        }
        Rectangle{
            id:binValue
            anchors.left: bin.right
            height: binResult.height
            width:binResult.width-bin.width
            border.color: "#E8E8E8"
            border.width: 1
            color: "#D3D3D3"
            Text {
                id: binaryValue
                text: numberBin
                anchors.left: binValue.left
                anchors.leftMargin: 5
                color: "black"
                font.pixelSize: 12
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
        }
        MouseArea
        {
            id: binMouse
            anchors.fill: binResult
            onClicked: {
                radix = 2;


                hex.color = "#D3D3D3"
                hexValue.color= "#D3D3D3"

                dec.color = "#D3D3D3"
                decValue.color= "#D3D3D3"

                oct.color = "#D3D3D3"
                octValue.color= "#D3D3D3"

                bin.color = "#33CCFF"
                binValue.color= "#33CCFF"


                // Qt.quit();
            }
        }
    }

    //StackView
    Rectangle{
        id: multiView
        anchors.top:binResult.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height:315


        StackView {
            anchors.fill: multiView
            id: myStackView
            initialItem: keypadPage
        }
    }

    //qmlRegisterType( QUrl( "qrc:/MyType.qml" ), "LibA", 1, 0, "MyType" ); --> Fix: Invalid property name M16
    Component {
        id: keypadPage
        FullKeypad {}
    }
    Component {
        id: bitToggle
        BitTogglingKeypad{}
    }
    Component {
        id: thirdPage
        ThirdPage {}
    }



    function loadPage(page) {
        switch (page) {
        case 'Keypad':
            myStackView.push(keypadPage);
            break;
        case 'BitKey':
            myStackView.push(bitToggle);
            break;
        case 'M':
            myStackView.push(thirdPage);
            break;

        }
    }
}
