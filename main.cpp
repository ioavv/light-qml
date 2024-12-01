#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "lightcontroller.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<LightController>("com.example.light", 1, 0, "LightController");


    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
                     &app, []() { QCoreApplication::exit(-1); },
    Qt::QueuedConnection);
    engine.loadFromModule("light", "Main");

    return app.exec();
}
