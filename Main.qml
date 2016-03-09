import QtQuick 2.0
import Ubuntu.Components 1.1
import ubuntu_component_store.Curated.CircleImage 1.0

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "circleimage.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("circleimage")

        Column {
            anchors.centerIn: parent
            spacing: units.gu(3)

            Image {
                width: units.gu(30)
                height: width
                source: "images/pic.jpg"
            }

            CircleImage {

                width: units.gu(30)
                height: width
                source: Qt.resolvedUrl("images/pic.jpg")
            }

        }
    }
}

