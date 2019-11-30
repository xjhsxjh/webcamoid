/* Webcamoid, webcam capture application.
 * Copyright (C) 2015  Gonzalo Exequiel Pedone
 *
 * Webcamoid is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Webcamoid is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Webcamoid. If not, see <http://www.gnu.org/licenses/>.
 *
 * Web-Site: http://webcamoid.github.io/
 */

import QtQuick 2.7
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ColumnLayout {
    spacing: 16

    Label {
        text: qsTr("The followings are the licences for 3rd-party work incorporated into Webcamoid. <b>These licences DOES NOT applies to Webcamoid itself.</b>")
        wrapMode: Text.WordWrap
        Layout.fillWidth: true
    }
    Label {
        text: qsTr("Licence for resources taken from openclipart.org:")
        wrapMode: Text.WordWrap
        Layout.fillWidth: true
    }
    TextArea {
        text: Webcamoid.readFile(":/Webcamoid/share/3rd-party/licenses/openclipart.txt")
        font.family: "Courier"
        readOnly: true
        Layout.fillWidth: true
    }
    Label {
        text: qsTr("Licence for code taken from OpenCV:")
        wrapMode: Text.WordWrap
        Layout.fillWidth: true
    }
    TextArea {
        text: Webcamoid.readFile(":/Webcamoid/share/3rd-party/licenses/OpenCV.txt")
        font.family: "Courier"
        readOnly: true
        Layout.fillWidth: true
    }
    Label {
        text: qsTr("Licence for code and algorithms used in Temperature plugin:")
        wrapMode: Text.WordWrap
        Layout.fillWidth: true
    }
    TextArea {
        text: Webcamoid.readFile(":/Webcamoid/share/3rd-party/licenses/TemperatureAlgorithm.txt")
        font.family: "Courier"
        readOnly: true
        Layout.fillWidth: true
    }
    Label {
        text: qsTr("Licence for the usb.ids file:")
        wrapMode: Text.WordWrap
        Layout.fillWidth: true
    }
    TextArea {
        text: Webcamoid.readFile(":/Webcamoid/share/3rd-party/licenses/UsbIds.txt")
        font.family: "Courier"
        readOnly: true
        Layout.fillWidth: true
    }
}
