import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15
import RinUI
import "../components"
import "../assets"

FluentPage {
    title: qsTr("Navigation")
    wrapperWidth: parent.width - 42*2

    Grid {
        Layout.fillWidth: true
        columns: Math.floor(width / (360 + 6)) // 自动算列数
        rowSpacing: 12
        columnSpacing: 12
        layoutDirection: GridLayout.LeftToRight

        Repeater {
            model: ItemData.getItemsByType("navigation")
            delegate: ControlClip { }
        }
    }
}
