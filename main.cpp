#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <number.h>

#include <QQuickView>
#include <QQmlContext>
#include <QQmlEngine>
#include <QCoreApplication>
#include <QVariantList>
#include <QStringList>

int main(int argc, char *argv[])
{

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    qmlRegisterType<Number>("ToDo",1,0,"Number");

    Number* number = new Number();
    number->setDecNumber(1510);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    QObject* root = engine.rootObjects().first();
    root->setProperty("numberHex", number->getHexNumber());
    root->setProperty("numberDec", number->getDecNumber());
    root->setProperty("numberOct", number->getOctNumber());
    root->setProperty("numberBin", number->getBinNumber());

    return app.exec();
}
