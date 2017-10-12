import QtQuick 2.0
import QtQuick.Controls 2.2
import "./implements/LoginImplements.js" as LoginImplements

Rectangle {
    id: root_item
    border.color: "#808080"
    width: 320
    height: 240

    signal loginSuccess()
    signal failedToLogin(string message)

    Text {
        id: text1
        x: 221
        y: 24
        width: 172
        height: 12
        text: qsTr("登录")
        anchors.horizontalCenterOffset: 0
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        verticalAlignment: Qt.AlignVCenter
        font.pixelSize: 12
    }

    Text {
        id: text2
        x: 40
        y: 79
        text: qsTr("用户名:")
        font.pixelSize: 12
        verticalAlignment: Qt.AlignVCenter
    }

    Text {
        id: text3
        x: 40
        y: 125
        text: qsTr("密码:")
        font.pixelSize: 12
        verticalAlignment: Qt.AlignVCenter
    }

    Button {
        id: button_login
        x: 264
        y: 183
        text: qsTr("登录")
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: {
            //参数检测

            //登录
            var result = LoginImplements.login(textinput_username.text, textinput_password.text)

            if (result.lenth === 0)
            {
                emit: root_item.loginSuccess()
            }
            else
            {
                emit: root_item.failedToLogin(result)
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 88
        y: 72
        width: 200
        height: 27
        color: "#ffffff"
        border.color: "#808080"

        TextInput {
            id: textinput_username
            anchors.leftMargin: 10
            anchors.fill: parent
            font.family: "Tahoma"
            font.pixelSize: 12
            verticalAlignment: Qt.AlignVCenter
        }
    }

    Rectangle {
        id: rectangle1
        x: 88
        y: 118
        width: 200
        height: 27
        color: "#ffffff"
        TextInput {
            id: textinput_password
            anchors.leftMargin: 10
            font.pixelSize: 12
            font.family: "Tahoma"
            anchors.fill: parent
            verticalAlignment: Qt.AlignVCenter
        }
        border.color: "#808080"
    }
}
