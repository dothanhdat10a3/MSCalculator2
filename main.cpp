#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQmlEngine>
#include <QCoreApplication>
#include <QVariantList>
#include <QStringList>

#include <number.h>
#include <controller.h>

int main(int argc, char *argv[])
{

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    Number *number = new Number();
    /*Number* number = new Number();
    number->castToDecimal(DEC_RADIX_TYPE);
    number->setNumberFromDecToRadixOther();*/

    QQmlApplicationEngine engine;
    // engine.rootContext()->setContextProperty("number", number);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    QQmlContext* rootContext = engine.rootContext();
    rootContext->setContextProperty("number", number);

   // QQmlContext* context = engine.rootContext();
    //context->setContextProperty("calController", Controller::getInstance());


    QObject* root = engine.rootObjects().first();
    number->setRootObject(root);
    /*
    root->setProperty("numberHex", number->getHexNumber());
    root->setProperty("numberDec", number->getDecNumber());
    root->setProperty("numberOct",number->getOctNumber());
    root->setProperty("numberBin",number->getBinNumber());*/

    return app.exec();
}
