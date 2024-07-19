import QtQuick 2.12
import QtQuick.Window 2.12
import SddmComponents 2.0

Column {

    id: loginPanel

    width: Math.max(180, Screen.width*0.12)
    height: 180

    anchors.centerIn: parent
    spacing: 15

    function login(){
        console.log()
        console.log("loging in")
        console.log(userField.text)
        console.log(passwordField.text)
        console.log(sessionField.index)
        console.log()
        sddm.login(userField.text,passwordField.text, sessionField.index)
    }

    UserField {
        id: userField
        height : 30
        width: parent.width

        
        KeyNavigation.backtab: rebootButton
        KeyNavigation.tab: passwordField
        //KeyNavigation.enter: passwordField
    }

    PasswordField {
        id: passwordField
        height: 30
        width: parent.width

        loginFunction: login

        KeyNavigation.backtab: userField
        KeyNavigation.tab: sessionField
    }

    SessionField {
        id: sessionField
        height: 30
        width: parent.width 

        KeyNavigation.backtab: passwordField
        KeyNavigation.tab: loginButton
    }

    //error message
    Column {
        width: parent.width
        Text {
            id: errorMessage
            anchors.horizontalCenter: parent.horizontalCenter
            //text: textConstants.prompt
            font.family: config.fontFamily
            font.pixelSize: config.fontSize
        }
    }

    LoginButton {
        id: loginButton
        
        width: 100
        height: 30
        
        loginFunction: login

        anchors.horizontalCenter: parent.horizontalCenter
        
        KeyNavigation.backtab: sessionField
        KeyNavigation.tab: shutdownButton
    }
}

