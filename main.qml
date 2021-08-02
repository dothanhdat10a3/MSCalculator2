import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import ToDo 1.0


Window {
    width: 320
    height: 505
    visible: true
    title: qsTr("MS CALCULATOR")

    property var numberHex
    property var numberDec
    property var numberOct
    property var numberBin

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
        text: "Programmer"
        color: "black"
        font.pixelSize: 20
        font.family: "Open Sans Regular"
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
        Text {
            id: expressionText
            anchors.fill: parent
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.TopRight
            text: ""
            color: "black"
            font.pixelSize: 25
            font.family: "Arial"
            fontSizeMode: Text.Fit
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
            anchors.fill: hexResult
            onClicked: {
                hex.color = "#E8E8E8"
                hexValue.color= "#E8E8E8"
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
        color: "#D3D3D3"
        Rectangle{
            id:dec
            x:0
            y:0
            height: decResult.height
            width: decResult.height*2
            border.color: "#E8E8E8"
            border.width: 1
            color: "#D3D3D3"
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
            color: "#D3D3D3"
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
            anchors.fill: decResult
            onClicked: {
                dec.color = "#E8E8E8"
                decValue.color= "#E8E8E8"
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
            anchors.fill: octResult
            onClicked: {
                oct.color = "#E8E8E8"
                octValue.color= "#E8E8E8"
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
            anchors.fill: binResult
            onClicked: {
                bin.color = "#E8E8E8"
                binValue.color= "#E8E8E8"
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

    Component {
        id: keypadPage
        FullKeypad {}
    }
    Component {
        id: secondPage
        SecondPage {}
    }
    Component {
        id: thirdPage
        ThirdPage {}
    }
    Component {
        id: fourthPage
        FourthPage {}
    }
    Component {
        id: fifthPage
        FifthPage {}
    }


    function loadPage(page) {
        switch (page) {
        case 'Keypad':
            myStackView.push(keypadPage);
            break;
        case 'Page 2':
            myStackView.push(secondPage);
            break;
        case 'Page 3':
            myStackView.push(thirdPage);
            break;
        case 'Page 4':
            myStackView.push(fourthPage);
            break;
        case 'Page 5':
            myStackView.push(fifthPage);
            break;
        }
    }
}
