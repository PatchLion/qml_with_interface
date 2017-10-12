import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    LoginForm{

        anchors.centerIn: parent

        onLoginSuccess: {
            console.log("登录成功")
        }

        onFailedToLogin: {
            console.log("登录失败! 失败原因:", message)
        }
    }
}
