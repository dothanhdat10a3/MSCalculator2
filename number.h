#ifndef NUMBER_H
#define NUMBER_H
#include <QObject>
#include <QDebug>
#include <QVector>
#include <iostream>
#include <QJSValue>
#include <QString>

#include <math.h>
#include <string.h>

using namespace std;

enum RADIX_TYPE{
    HEX_RADIX_TYPE = 0,
    DEC_RADIX_TYPE,
    OCT_RADIX_TYPE,
    BIN_RADIX_TYPE
};

#define TOTAL_BITS 64

class Number : public QObject
{
    Q_OBJECT

public:
    explicit Number(QObject *parent = nullptr);
    ~Number();

public:
    void castToDecimal(RADIX_TYPE radixType);
    // setter
    void setNumberFromDecToRadixOther();
    void setRootObject(QObject* rootObject);

    //getter
    int getDecNumber();
    QString getHexNumber();
    QString getOctNumber();
    QString getBinNumber();

    //cast other radix to Decimal
    int castNumberFromHexToDec(string numberInput);
    int castNumberFromDecToDec(string numberInput);
    int castNumberFromOctToDec(string numberInput);
    int castNumberFromBinToDec(string numberInput);

    // convert Radix from Dec
    QVector<char> castFromDecToHex(int number);
    QVector<int> castFromDecToOct(int number);
    QVector<int> castFromDecToBin(int number);

public:
    Q_INVOKABLE void setNumberInput(int numberInput);


private:
    int m_number = 0;
    string m_numberInput= "300";//100006: DEC

    int m_decNumber = 0;
    QVector<char> m_hexNumber;
    QVector<int> m_octNumber = {0};
    QVector<int> m_binNumber = {0};
    QObject* m_rootObject;
};
#endif // NUMBER_H
