import QtQuick.Controls
import QtQuick.Window

import demo 1.0

Window {
    title: qsTr("Hello App")
    visible: true
    height: 480
    width: 640
    color: "#282828"

    Rot {
        id: rot
        plain: ""
        secret: ""
    }

    Column {
      anchors.horizontalCenter: parent.horizontalCenter
      anchors.verticalCenter: parent.verticalCenter
      spacing: 10 

      Label {
        text: "Keep your secret safe 🔒"
        font.bold: true
        color: "#ebdbb2"
      }

      InputArea {
        placeholderText: qsTr("whatever")
        text: rot.plain
        onTextChanged: rot.secret = rot.encrypt(text)
      }
      
      InputArea {
        placeholderText: qsTr("whatever")
        text: rot.secret
        onTextChanged: rot.plain = rot.decrypt(text)
      }
    }
}
