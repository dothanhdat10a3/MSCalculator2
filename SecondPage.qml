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

    Rectangle{
        id:bitTogglingKeypad
        anchors.top:optionBar.bottom
        width:320
        height: 280
        color:"white"
        Grid{
            columns: 16
            rows: 4
            columnSpacing: 0
            rowSpacing: bitTogglingKeypad.height/8
            signal buttonPressed

            Button{
                id: buttonIndex63; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex62; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex61; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex60; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex59; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex58; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex57; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex56; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex55; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex54; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex53; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex52; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex51; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex50; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex49; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex48; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex47; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex46; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex45; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex44; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex43; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex42; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex41; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex40; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex39; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex38; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex37; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex36; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex35; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex34; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex33; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex32; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex31; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex30; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex29; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex28; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex27; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex26; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex25; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex24; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex23; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex22; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex21; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex20; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex19; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex18; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex17; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex16; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex15; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex14; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex13; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex12; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex11; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex10; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex9; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex8; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex7; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex6; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex5; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex4; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex3; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex2; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex1; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }
            Button{
                id: buttonIndex0; width: bitTogglingKeypad.width/16; height: bitTogglingKeypad.height/8; font.bold: true; font.pixelSize: 15;text:"0"

            }



        }

    }

    Component.onCompleted: {
        buttonIndex63.clicked.connect(function(){
            if(buttonIndex63.text =='0'){
                buttonIndex63.text ='1'
            }else if (buttonIndex63.text =='1'){
                buttonIndex63.text ='0'
            }
        });
        buttonIndex62.clicked.connect(function(){
            if(buttonIndex62.text =='0'){
                buttonIndex62.text ='1'
            }else if (buttonIndex62.text =='1'){
                buttonIndex62.text ='0'
            }
        });
        buttonIndex61.clicked.connect(function(){
            if(buttonIndex61.text =='0'){
                buttonIndex61.text ='1'
            }else if (buttonIndex61.text =='1'){
                buttonIndex61.text ='0'
            }
        });
        buttonIndex60.clicked.connect(function(){
            if(buttonIndex60.text =='0'){
                buttonIndex60.text ='1'
            }else if (buttonIndex60.text =='1'){
                buttonIndex60.text ='0'
            }
        });
        buttonIndex59.clicked.connect(function(){
            if(buttonIndex59.text =='0'){
                buttonIndex59.text ='1'
            }else if (buttonIndex59.text =='1'){
                buttonIndex59.text ='0'
            }
        });
        buttonIndex58.clicked.connect(function(){
            if(buttonIndex58.text =='0'){
                buttonIndex58.text ='1'
            }else if (buttonIndex58.text =='1'){
                buttonIndex58.text ='0'
            }
        });
        buttonIndex57.clicked.connect(function(){
            if(buttonIndex57.text =='0'){
                buttonIndex57.text ='1'
            }else if (buttonIndex57.text =='1'){
                buttonIndex57.text ='0'
            }
        });
        buttonIndex56.clicked.connect(function(){
            if(buttonIndex56.text =='0'){
                buttonIndex56.text ='1'
            }else if (buttonIndex56.text =='1'){
                buttonIndex56.text ='0'
            }
        });
        buttonIndex55.clicked.connect(function(){
            if(buttonIndex55.text =='0'){
                buttonIndex55.text ='1'
            }else if (buttonIndex55.text =='1'){
                buttonIndex55.text ='0'
            }
        });
        buttonIndex54.clicked.connect(function(){
            if(buttonIndex54.text =='0'){
                buttonIndex54.text ='1'
            }else if (buttonIndex54.text =='1'){
                buttonIndex54.text ='0'
            }
        });
        buttonIndex53.clicked.connect(function(){
            if(buttonIndex53.text =='0'){
                buttonIndex53.text ='1'
            }else if (buttonIndex53.text =='1'){
                buttonIndex53.text ='0'
            }
        });
        buttonIndex52.clicked.connect(function(){
            if(buttonIndex52.text =='0'){
                buttonIndex52.text ='1'
            }else if (buttonIndex52.text =='1'){
                buttonIndex52.text ='0'
            }
        });
        buttonIndex51.clicked.connect(function(){
            if(buttonIndex51.text =='0'){
                buttonIndex51.text ='1'
            }else if (buttonIndex51.text =='1'){
                buttonIndex51.text ='0'
            }
        });
        buttonIndex50.clicked.connect(function(){
            if(buttonIndex50.text =='0'){
                buttonIndex50.text ='1'
            }else if (buttonIndex50.text =='1'){
                buttonIndex50.text ='0'
            }
        });
        buttonIndex49.clicked.connect(function(){
            if(buttonIndex49.text =='0'){
                buttonIndex49.text ='1'
            }else if (buttonIndex49.text =='1'){
                buttonIndex49.text ='0'
            }
        });
        buttonIndex48.clicked.connect(function(){
            if(buttonIndex48.text =='0'){
                buttonIndex48.text ='1'
            }else if (buttonIndex48.text =='1'){
                buttonIndex48.text ='0'
            }
        });
        buttonIndex47.clicked.connect(function(){
            if(buttonIndex47.text =='0'){
                buttonIndex47.text ='1'
            }else if (buttonIndex47.text =='1'){
                buttonIndex47.text ='0'
            }
        });
        buttonIndex46.clicked.connect(function(){
            if(buttonIndex46.text =='0'){
                buttonIndex46.text ='1'
            }else if (buttonIndex46.text =='1'){
                buttonIndex46.text ='0'
            }
        });
        buttonIndex45.clicked.connect(function(){
            if(buttonIndex45.text =='0'){
                buttonIndex45.text ='1'
            }else if (buttonIndex45.text =='1'){
                buttonIndex45.text ='0'
            }
        });
        buttonIndex44.clicked.connect(function(){
            if(buttonIndex44.text =='0'){
                buttonIndex44.text ='1'
            }else if (buttonIndex44.text =='1'){
                buttonIndex44.text ='0'
            }
        });
        buttonIndex43.clicked.connect(function(){
            if(buttonIndex43.text =='0'){
                buttonIndex43.text ='1'
            }else if (buttonIndex43.text =='1'){
                buttonIndex43.text ='0'
            }
        });
        buttonIndex42.clicked.connect(function(){
            if(buttonIndex42.text =='0'){
                buttonIndex42.text ='1'
            }else if (buttonIndex42.text =='1'){
                buttonIndex42.text ='0'
            }
        });
        buttonIndex41.clicked.connect(function(){
            if(buttonIndex41.text =='0'){
                buttonIndex41.text ='1'
            }else if (buttonIndex41.text =='1'){
                buttonIndex41.text ='0'
            }
        });
        buttonIndex40.clicked.connect(function(){
            if(buttonIndex40.text =='0'){
                buttonIndex40.text ='1'
            }else if (buttonIndex40.text =='1'){
                buttonIndex40.text ='0'
            }
        });
        buttonIndex39.clicked.connect(function(){
            if(buttonIndex39.text =='0'){
                buttonIndex39.text ='1'
            }else if (buttonIndex39.text =='1'){
                buttonIndex39.text ='0'
            }
        });
        buttonIndex38.clicked.connect(function(){
            if(buttonIndex38.text =='0'){
                buttonIndex38.text ='1'
            }else if (buttonIndex38.text =='1'){
                buttonIndex38.text ='0'
            }
        });
        buttonIndex37.clicked.connect(function(){
            if(buttonIndex37.text =='0'){
                buttonIndex37.text ='1'
            }else if (buttonIndex37.text =='1'){
                buttonIndex37.text ='0'
            }
        });
        buttonIndex36.clicked.connect(function(){
            if(buttonIndex36.text =='0'){
                buttonIndex36.text ='1'
            }else if (buttonIndex36.text =='1'){
                buttonIndex36.text ='0'
            }
        });
        buttonIndex35.clicked.connect(function(){
            if(buttonIndex35.text =='0'){
                buttonIndex35.text ='1'
            }else if (buttonIndex35.text =='1'){
                buttonIndex35.text ='0'
            }
        });
        buttonIndex34.clicked.connect(function(){
            if(buttonIndex34.text =='0'){
                buttonIndex34.text ='1'
            }else if (buttonIndex34.text =='1'){
                buttonIndex34.text ='0'
            }
        });
        buttonIndex33.clicked.connect(function(){
            if(buttonIndex33.text =='0'){
                buttonIndex33.text ='1'
            }else if (buttonIndex33.text =='1'){
                buttonIndex33.text ='0'
            }
        });
        buttonIndex32.clicked.connect(function(){
            if(buttonIndex32.text =='0'){
                buttonIndex32.text ='1'
            }else if (buttonIndex32.text =='1'){
                buttonIndex32.text ='0'
            }
        });
        buttonIndex31.clicked.connect(function(){
            if(buttonIndex31.text =='0'){
                buttonIndex31.text ='1'
            }else if (buttonIndex31.text =='1'){
                buttonIndex31.text ='0'
            }
        });
        buttonIndex30.clicked.connect(function(){
            if(buttonIndex30.text =='0'){
                buttonIndex30.text ='1'
            }else if (buttonIndex30.text =='1'){
                buttonIndex30.text ='0'
            }
        });
        buttonIndex29.clicked.connect(function(){
            if(buttonIndex29.text =='0'){
                buttonIndex29.text ='1'
            }else if (buttonIndex29.text =='1'){
                buttonIndex29.text ='0'
            }
        });
        buttonIndex28.clicked.connect(function(){
            if(buttonIndex28.text =='0'){
                buttonIndex28.text ='1'
            }else if (buttonIndex28.text =='1'){
                buttonIndex28.text ='0'
            }
        });
        buttonIndex27.clicked.connect(function(){
            if(buttonIndex27.text =='0'){
                buttonIndex27.text ='1'
            }else if (buttonIndex27.text =='1'){
                buttonIndex27.text ='0'
            }
        });
        buttonIndex26.clicked.connect(function(){
            if(buttonIndex26.text =='0'){
                buttonIndex26.text ='1'
            }else if (buttonIndex26.text =='1'){
                buttonIndex26.text ='0'
            }
        });
        buttonIndex25.clicked.connect(function(){
            if(buttonIndex25.text =='0'){
                buttonIndex25.text ='1'
            }else if (buttonIndex25.text =='1'){
                buttonIndex25.text ='0'
            }
        });
        buttonIndex24.clicked.connect(function(){
            if(buttonIndex24.text =='0'){
                buttonIndex24.text ='1'
            }else if (buttonIndex24.text =='1'){
                buttonIndex24.text ='0'
            }
        });
        buttonIndex23.clicked.connect(function(){
            if(buttonIndex23.text =='0'){
                buttonIndex23.text ='1'
            }else if (buttonIndex23.text =='1'){
                buttonIndex23.text ='0'
            }
        });
        buttonIndex22.clicked.connect(function(){
            if(buttonIndex22.text =='0'){
                buttonIndex22.text ='1'
            }else if (buttonIndex22.text =='1'){
                buttonIndex22.text ='0'
            }
        });
        buttonIndex21.clicked.connect(function(){
            if(buttonIndex21.text =='0'){
                buttonIndex21.text ='1'
            }else if (buttonIndex21.text =='1'){
                buttonIndex21.text ='0'
            }
        });
        buttonIndex20.clicked.connect(function(){
            if(buttonIndex20.text =='0'){
                buttonIndex20.text ='1'
            }else if (buttonIndex20.text =='1'){
                buttonIndex20.text ='0'
            }
        });
        buttonIndex19.clicked.connect(function(){
            if(buttonIndex19.text =='0'){
                buttonIndex19.text ='1'
            }else if (buttonIndex19.text =='1'){
                buttonIndex19.text ='0'
            }
        });
        buttonIndex18.clicked.connect(function(){
            if(buttonIndex18.text =='0'){
                buttonIndex18.text ='1'
            }else if (buttonIndex18.text =='1'){
                buttonIndex18.text ='0'
            }
        });
        buttonIndex17.clicked.connect(function(){
            if(buttonIndex17.text =='0'){
                buttonIndex17.text ='1'
            }else if (buttonIndex17.text =='1'){
                buttonIndex17.text ='0'
            }
        });
        buttonIndex16.clicked.connect(function(){
            if(buttonIndex16.text =='0'){
                buttonIndex16.text ='1'
            }else if (buttonIndex16.text =='1'){
                buttonIndex16.text ='0'
            }
        });
        buttonIndex15.clicked.connect(function(){
            if(buttonIndex15.text =='0'){
                buttonIndex15.text ='1'
            }else if (buttonIndex15.text =='1'){
                buttonIndex15.text ='0'
            }
        });
        buttonIndex14.clicked.connect(function(){
            if(buttonIndex14.text =='0'){
                buttonIndex14.text ='1'
            }else if (buttonIndex14.text =='1'){
                buttonIndex14.text ='0'
            }
        });
        buttonIndex13.clicked.connect(function(){
            if(buttonIndex13.text =='0'){
                buttonIndex13.text ='1'
            }else if (buttonIndex13.text =='1'){
                buttonIndex13.text ='0'
            }
        });
        buttonIndex12.clicked.connect(function(){
            if(buttonIndex12.text =='0'){
                buttonIndex12.text ='1'
            }else if (buttonIndex12.text =='1'){
                buttonIndex12.text ='0'
            }
        });
        buttonIndex11.clicked.connect(function(){
            if(buttonIndex11.text =='0'){
                buttonIndex11.text ='1'
            }else if (buttonIndex11.text =='1'){
                buttonIndex11.text ='0'
            }
        });
        buttonIndex10.clicked.connect(function(){
            if(buttonIndex10.text =='0'){
                buttonIndex10.text ='1'
            }else if (buttonIndex10.text =='1'){
                buttonIndex10.text ='0'
            }
        });
        buttonIndex9.clicked.connect(function(){
            if(buttonIndex9.text =='0'){
                buttonIndex9.text ='1'
            }else if (buttonIndex9.text =='1'){
                buttonIndex9.text ='0'
            }
        });
        buttonIndex8.clicked.connect(function(){
            if(buttonIndex8.text =='0'){
                buttonIndex8.text ='1'
            }else if (buttonIndex8.text =='1'){
                buttonIndex8.text ='0'
            }
        });
        buttonIndex7.clicked.connect(function(){
            if(buttonIndex7.text =='0'){
                buttonIndex7.text ='1'
            }else if (buttonIndex7.text =='1'){
                buttonIndex7.text ='0'
            }
        });
        buttonIndex6.clicked.connect(function(){
            if(buttonIndex6.text =='0'){
                buttonIndex6.text ='1'
            }else if (buttonIndex6.text =='1'){
                buttonIndex6.text ='0'
            }
        });
        buttonIndex5.clicked.connect(function(){
            if(buttonIndex5.text =='0'){
                buttonIndex5.text ='1'
            }else if (buttonIndex5.text =='1'){
                buttonIndex5.text ='0'
            }
        });
        buttonIndex4.clicked.connect(function(){
            if(buttonIndex4.text =='0'){
                buttonIndex4.text ='1'
            }else if (buttonIndex4.text =='1'){
                buttonIndex4.text ='0'
            }
        });
        buttonIndex3.clicked.connect(function(){
            if(buttonIndex3.text =='0'){
                buttonIndex3.text ='1'
            }else if (buttonIndex3.text =='1'){
                buttonIndex3.text ='0'
            }
        });
        buttonIndex2.clicked.connect(function(){
            if(buttonIndex2.text =='0'){
                buttonIndex2.text ='1'
            }else if (buttonIndex2.text =='1'){
                buttonIndex2.text ='0'
            }
        });
        buttonIndex1.clicked.connect(function(){
            if(buttonIndex1.text =='0'){
                buttonIndex1.text ='1'
            }else if (buttonIndex1.text =='1'){
                buttonIndex1.text ='0'
            }
        });
        buttonIndex0.clicked.connect(function(){
            if(buttonIndex0.text =='0'){
                buttonIndex0.text ='1'
            }else if (buttonIndex0.text =='1'){
                buttonIndex0.text ='0'
            }
        });

    }
}





