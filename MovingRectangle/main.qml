import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    title: "Moving & bouncing Rectangle with Keys"

    Rectangle {
        id: movingRect
        width: 50
        height: 50
        color: "orange"

        focus: true
        Keys.onPressed: {
            if ( !movingRect.bouncing )
            {
                if ( event.key === Qt.Key_Up )
                {
                    if ( movingRect.y - movingRect.speed >= 0 )
                    {
                        movingRect.y -= movingRect.speed;
                        onYChanged: console.log( "Y coordinate:", y )
                    }
                    else {
                        movingRect.bouncing = true;
                        bounceY.start();
                    }
                }
                else if ( event.key === Qt.Key_Down )
                {
                    if ( movingRect.y + movingRect.height + movingRect.speed <= parent.height )
                    {
                        movingRect.y += movingRect.speed;
                        onYChanged: console.log( "Y coordinate:", y )
                    }
                    else
                    {
                        movingRect.bouncing = true;
                        bounceY.start();
                    }
                }
                else if ( event.key === Qt.Key_Left )
                {
                    if ( movingRect.x - movingRect.speed >= 0 )
                    {
                        movingRect.x -= movingRect.speed;
                        onXChanged: console.log( "X coordinate:", x )
                    }
                    else {
                        movingRect.bouncing = true;
                        bounceX.start();
                    }
                }
                else if ( event.key === Qt.Key_Right )
                {
                    if ( movingRect.x + movingRect.width + movingRect.speed <= parent.width )
                    {
                        movingRect.x += movingRect.speed;
                        onXChanged: console.log( "X coordinate:", x )
                    }
                    else
                    {
                        movingRect.bouncing = true;
                        bounceX.start();
                    }
                }
            }
        }

        SequentialAnimation {
            id: bounceY

            NumberAnimation {
                target: movingRect
                property: "y"
                to: movingRect.y - 20
                duration: 100
            }

            NumberAnimation {
                target: movingRect
                property: "y"
                to: movingRect.y
                duration: 100
            }

            onRunningChanged: {
                if ( !bounceY.running )
                {
                    movingRect.bouncing = false;
                }
            }
        }

        SequentialAnimation {
            id: bounceX

            NumberAnimation {
                target: movingRect
                property: "x"
                to: movingRect.x - 20
                duration: 100
            }

            NumberAnimation {
                target: movingRect
                property: "x"
                to: movingRect.x
                duration: 100
            }

            onRunningChanged: {
                if ( !bounceX.running )
                {
                    movingRect.bouncing = false;
                }
            }
        }


        property int speed: 10
        property bool bouncing: false
    }
}
