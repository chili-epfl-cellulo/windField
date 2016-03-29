import QtQuick 2.0
import QtCanvas3D 1.0
import Cellulo 1.0
import "renderer.js" as GLRender
Item {
    width: parent.width
    height: parent.height
    property variant robot: robotComm
    property variant windfield: windField

    Canvas3D {
        id: windField
        width: parent.width
        height: parent.height


        property int menuMargin: 50
        property int fieldWidth: 2500
        property int fieldHeight: 950

        property int robotMinX: (windField.width - windField.fieldWidth)/2
        property int robotMinY: (windField.height - windField.fieldHeight)/2
        property int robotMaxX: robotMinX + windField.fieldWidth
        property int robotMaxY: robotMinY + windField.fieldHeight

        //Game UI variables, kept here so that all components can have access to them
        property bool paused: true
        property bool drawPressureGrid: true
        property bool drawForceGrid: true
        property bool drawLeafVelocityVector: true
        property bool drawLeafForceVectors: true
        property bool drawPrediction: false
        property int currentAction: 0

        //Set the leaves here
        property variant leaves: [testLeaf]
        property int numLeaves: 1

        function setInitialTestConfiguration(){
            //Set pressure point
            pressurefield.addPressurePoint(0,0,3)
            pressurefield.addPressurePoint(14,0,3)
            pressurefield.addPressurePoint(0,25,3)
            pressurefield.addPressurePoint(14,25,3)
            pressurefield.addPressurePoint(7,12,-3)
            pressurefield.addPressurePoint(8,12,-3)
            pressurefield.addPressurePoint(7,13,-3)
            pressurefield.addPressurePoint(8,13,-3)

            setObstacles()
            //Set test leaf info
            testLeaf.leafX = 4*pressurefield.xGridSpacing
            testLeaf.leafY = 2*pressurefield.yGridSpacing
            testLeaf.leafXV = 0
            testLeaf.leafYV = 0
            testLeaf.leafMass = 1
            testLeaf.leafSize = 50
            testLeaf.leafXF = 0
            testLeaf.leafYF = 0
            testLeaf.leafXFDrag = 0
            testLeaf.leafYFDrag = 0
            testLeaf.collided = false

            /*testLeaf2.leafX = 10*pressurefield.xGridSpacing
            testLeaf2.leafY = 2*pressurefield.yGridSpacing
            testLeaf2.leafXV = 0
            testLeaf2.leafYV = 0
            testLeaf2.leafMass = 1
            testLeaf2.leafSize = 50
            testLeaf2.leafXF = 0
            testLeaf2.leafYF = 0
            testLeaf2.leafXFDrag = 0
            testLeaf2.leafYFDrag = 0*/

            pauseSimulation()
            //testLeaf.robotComm.macAddr = "00:06:66:74:43:01"
        }

        function setObstacles() {
            //Set obstacle spots
            pressurefield.pressureGrid[13][24][6] = 0
            pressurefield.pressureGrid[13][23][6] = 0
            pressurefield.pressureGrid[14][23][6] = 0
            pressurefield.pressureGrid[14][24][6] = 0

            pressurefield.pressureGrid[4][7][6] = 0
            pressurefield.pressureGrid[4][8][6] = 0
            pressurefield.pressureGrid[5][7][6] = 0
            pressurefield.pressureGrid[5][8][6] = 0
            pressurefield.pressureGrid[6][7][6] = 0
            pressurefield.pressureGrid[6][8][6] = 0
            pressurefield.pressureGrid[6][6][6] = 0
        }

        function pauseSimulation() {
            paused = false;
            controls.togglePaused()
        }

        onInitializeGL: {
            GLRender.initializeGL(windField, pressurefield, leaves, numLeaves)
        }

        //Since we do no update the pressure grid while the simulation is running, the only thing we have to update then are the leaves
        onPaintGL: {
            if (!paused) {
                for (var i = 0; i < numLeaves; i++)
                    leaves[i].updateLeaf()
            }
            GLRender.paintGL(pressurefield, leaves, numLeaves)
        }

        function setPressureFieldTextureDirty() {
            GLRender.pressureFieldUpdated = true;
        }

        Component.onCompleted: {
            pressurefield.resetWindField()
            setInitialTestConfiguration()
            testLeaf.robotComm.macAddr = "00:06:66:74:43:01"
        }

        PressureField {
            width: windField.fieldWidth
            height: windField.fieldHeight
            x: windField.robotMinX
            y: windField.robotMinY
            id: pressurefield
        }

        Leaf {
            id: testLeaf
            field: pressurefield
             robot: robotComm
        }


    }

    UIPanel {
        anchors.fill: parent
        id: controls
        robot: robotComm
        windfield: windField
    }

    Column {
        id: stockView
        x: 10
        y: parent.height -300
        width: parent.width - 10
        //state: "CLOSED"
        height: 300 -10


        Rectangle {
            anchors.fill: parent
            border.width: 5
            border.color: "white"
            color: Qt.rgba(0.75,0.75,0.75,1.0)
            opacity: 0.4
            radius:30
        }
    }


}