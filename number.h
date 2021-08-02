#ifndef NUMBER_H
#define NUMBER_H

#include <QObject>
#include <QDebug>
#include <QVector>
#include <iostream>
#include <math.h>
#include <string>

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
    // setter
    void setDecNumber(int iNumber);
    void setBinNumber(QVector<int> bNumber);
    void setHexNumber(QVector<char> hNumber);
    void setOctNumber(QVector<int> oNumber);

    //getter
    int getDecNumber();
    QString getHexNumber();
    QString getOctNumber();
    QString getBinNumber();


    // convert data
    //cast other radix to Decimal
    int castNumberFromHexToDec(QVector<char> m_hexNumber);
    int castNumberFromOctToDec(QVector<int> m_octNumber);
    int castNumberFromBinToDec(QVector<int> m_binNumber);

    // convert Radix from Dec
    QVector<char> castFromDecToHex(int number);
    QVector<int> castFromDecToOct(int number);
    QVector<int> castFromDecToBin(int number);

private:

    int m_decNumber;
    QVector<char> m_hexNumber;
    QVector<int> m_octNumber;
    QVector<int> m_binNumber;
};
#endif // NUMBER_H
