/***************************************************************************
* Copyright (c) 2013 Abdurrahman AVCI <abdurrahmanavci@gmail.com>
*
* Permission is hereby granted, free of charge, to any person
* obtaining a copy of this software and associated documentation
* files (the "Software"), to deal in the Software without restriction,
* including without limitation the rights to use, copy, modify, merge,
* publish, distribute, sublicense, and/or sell copies of the Software,
* and to permit persons to whom the Software is furnished to do so,
* subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included
* in all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
* OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
* OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
* ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
* OR OTHER DEALINGS IN THE SOFTWARE.
*
***************************************************************************/

import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import SddmComponents 2.0
import "components"

Rectangle {
    id: container
    width: Screen.width
    height: Screen.height

    LayoutMirroring.enabled: Qt.locale().textDirection == Qt.RightToLeft
    LayoutMirroring.childrenInherit: true

    TextConstants { id: textConstants }

    Connections {
        target: sddm

        function onLoginSucceeded() {
            errorMessage.color = "steelblue"
            errorMessage.text = textConstants.loginSucceeded
        }

        function onLoginFailed() {
            password.text = ""
            errorMessage.color = "red"
            errorMessage.text = textConstants.loginFailed
        }
    }

    Rectangle {
        id: background
        anchors.fill: parent
        height: parent.height
        width: parent.width
        z: 0
        color: config.backgroundColor
    }
    Image {
        id: backgroundImage
        anchors.fill: parent
        height: parent.height
        width: parent.width
        fillMode: Image.PreserveAspectCrop
        visible: config.CustomBackground == "true" ? true : false
        z: 1
        source: config.background
        asynchronous: false
        cache: true
        mipmap: true
        clip: true
    }

    Item {
        id: mainPanel
        anchors.fill: parent
        anchors.margins: 50
        z:3

        LoginPanel {
            id: loginPanel
            anchors.centerIn: parent
        }

        StatsPanel {
            id: statsPanel

            visible: config.statsPanelEnabled == "true" ? true : false
            
            anchors.bottom: parent.bottom
            anchors.left: parent.left
        }

        Clock_ {
            id: clock_

            anchors {
                margins: config.clockSize*2
                top: parent.top
                horizontalCenter:parent.horizontalCenter
            }

            visible: config.clockEnabled == "true" ? true : false
        }

        Column {

            anchors.bottom:  parent.bottom
            anchors.left: parent.left
            spacing: 10

            ShutdownButton{
                id: shutdownButton

                width: 50
                height: 50

                KeyNavigation.tab: rebootButton
            }

            RebootButton {
                id: rebootButton
               
                width: 50
                height: 50
                
                KeyNavigation.backtab: shutdownButton 
            }
        }
    }
}


