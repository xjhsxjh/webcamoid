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
    id: clyProgramInfo

    RowLayout {
        Image {
            fillMode: Image.PreserveAspectFit
            Layout.minimumWidth: 128
            Layout.minimumHeight: 128
            Layout.maximumWidth: 128
            Layout.maximumHeight: 128
            source: "image://icons/webcamoid"
            sourceSize: Qt.size(width, height)
        }

        ColumnLayout {
            Label {
                text: Webcamoid.applicationName()
                font.bold: true
                font.pointSize: 12
            }
            Label {
                text: qsTr("Version %1").arg(Webcamoid.applicationVersion())
                font.bold: true
            }
            Label {
                text: qsTr("Using Qt %1")
                        .arg(Webcamoid.qtVersion())
            }
            Button {
                text: qsTr("Website")
                icon.source: "image://icons/applications-internet"

                onClicked: Qt.openUrlExternally(Webcamoid.projectUrl())
            }
        }
    }

    Label {
        text: qsTr("Webcam capture application.")
    }
    Label {
        text: qsTr("A simple webcam application for picture and video capture.")
    }
    Label {
        text: Webcamoid.copyrightNotice()
    }
}
