#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "call.h"
#include "mycalllistmodel.h"
#include <QStringList>
#include <qqmlengine.h>
#include <qqmlcontext.h>
#include <qqml.h>
#include <QtQuick/qquickitem.h>
#include <QtQuick/qquickview.h>
#include <QPointer>
#include <QDebug>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);


    QQmlApplicationEngine engine;


    auto dTime = QDateTime::currentDateTime();

    myCallListModel MyModel;


    MyModel.addCall(Call(3,"fo",dTime,2));
    MyModel.addCall(Call(11,"foo",dTime,1));
    MyModel.addCall(Call(3,"fooo",dTime,2));
    MyModel.addCall(Call(11,"bar",dTime,1));
    MyModel.addCall(Call(3,"bar",dTime,1));
    MyModel.addCall(Call(3,"zlpkt",dTime,1));
    MyModel.addCall(Call(3,"zlpkt2",dTime,2));
    MyModel.addCall(Call(11,"zlpkt3",dTime,1));


    myCallListModel MyMissedModel;
    MyMissedModel.addCall(Call(3,"fo",dTime,2));
    MyMissedModel.addCall(Call(3,"fooo",dTime,2));
    MyMissedModel.addCall(Call(3,"zlpkt2",dTime,2));

    engine.rootContext()->setContextProperty("myModel",&MyModel);
    engine.rootContext()->setContextProperty("myMissedModel",&MyMissedModel);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}


