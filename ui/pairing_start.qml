/*
 * Copyright 2018 by Aditya Mehra <aix.m@outlook.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

import QtQuick.Layouts 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0
import org.kde.kirigami 2.4 as Kirigami

import Mycroft 1.0 as Mycroft
import org.kde.lottie 1.0

Mycroft.Delegate {
    id: root
    leftPadding: 0
    rightPadding: 0
    bottomPadding: 0
    topPadding: 0
    skillBackgroundColorOverlay: Qt.rgba(0, 0, 0, 1)
    
    Rectangle {
        color: "#000000"
        anchors.fill: parent
        anchors.margins: Mycroft.Units.gridUnit * 2

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: Kirigami.Units.largeSpacing
                    
            Kirigami.Heading {
                id: sentence2
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                elide: Text.ElideRight
                color: "#ff0000"
                font.family: "Noto Sans"
                font.bold: true
                font.weight: Font.Bold
                font.pixelSize: root.width * 0.035
                text: "Fetching Pairing Code" 
            }
            
            LottieAnimation {
                id: l1
                Layout.fillWidth: true
                Layout.fillHeight: true
                source: Qt.resolvedUrl("animations/connected-waiting.json")
                loops: Animation.Infinite
                fillMode: Image.PreserveAspectFit
                running: true
            }
            
            Kirigami.Heading {
                id: sentence
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                elide: Text.ElideRight
                color: "white"
                font.family: "Noto Sans"
                font.bold: true
                font.weight: Font.Bold
                font.pixelSize: parent.height * 0.075
                text: "I'm connected\nand need to be\nactivated" 
            }
        }
    }
}  
