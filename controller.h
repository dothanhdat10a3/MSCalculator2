#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <QObject>
#include <number.h>

class Controller : public QObject
{
    Q_OBJECT

public:
    static Controller *getInstance();

private:
    explicit Controller(QObject *parent = nullptr);
    ~Controller();

public:
    void setMainView(QObject* mainView);
    // invoke method
public:
    Q_INVOKABLE void addNumber(QString expression);

public slots:
    void manageDataTransferFromQmlToCpp();

signals:

private:
    Number* number;
    QObject* m_mainView;
};

#endif // CONTROLLER_H
