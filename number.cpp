#include "number.h"
#include <QDebug>
#include <iostream>
#include <charconv>

using namespace std;

Number::Number(QObject *parent) : QObject(parent)
{

}

Number::~Number()
{

}

void Number::setDecNumber(int iNumber)
{
    m_decNumber = iNumber;
    m_hexNumber = castFromDecToHex(m_decNumber);
    m_octNumber = castFromDecToOct(m_decNumber);
    m_binNumber = castFromDecToBin(m_decNumber);

    qDebug() << "dec" << m_decNumber;
    qDebug() << "hex" << m_hexNumber;
    qDebug() << "oct" << m_octNumber;
    qDebug() << "bin" << m_binNumber;
}

void Number::setHexNumber(QVector<char> hNumber)
{
    m_hexNumber = hNumber;
}

void Number::setBinNumber(QVector<int> bNumber)
{
    m_binNumber = bNumber;
}

void Number::setOctNumber(QVector<int> oNumber)
{
    m_octNumber = oNumber;
}

int Number::getDecNumber()
{
    return m_decNumber;
}

QString Number::getHexNumber()
{
    QString result = "";

    for (auto v: m_hexNumber)
    {
        char c = v;
        result.push_back(c);
    }

    return result;
}

QString Number::getOctNumber()
{
    QString result = "";

    for (auto v: m_octNumber)
    {
        string s = std::to_string(v);
        result.push_back(s.c_str());
    }

    return result;
}

QString Number::getBinNumber()
{
    QString result = "";

    for (auto v: m_binNumber)
    {
        string s = std::to_string(v);
        result.push_back(s.c_str());
    }

    return result;
}

int Number::castNumberFromHexToDec(QVector<char> m_hexNumber)
{
    int len = m_hexNumber.size();

    // Initializing base value to 1, i.e 16^0
    int base = 1;


    // Extracting characters as digits from last character
    for (int i=len-1; i>=0; i--)
    {
        // if character lies in '0'-'9', converting
        // it to integral 0-9 by subtracting 48 from
        // ASCII value.
        if (m_hexNumber[i]>='0' && m_hexNumber[i]<='9')
        {
            m_decNumber += (m_hexNumber[i] - 48)*base;

            // incrementing base by power
            base = base * 16;
        }

        // if character lies in 'A'-'F' , converting
        // it to integral 10 - 15 by subtracting 55
        // from ASCII value
        else if (m_hexNumber[i]>='A' && m_hexNumber[i]<='F')
        {
            m_decNumber += (m_hexNumber[i] - 55)*base;

            // incrementing base by power
            base = base*16;
        }
    }
    return m_decNumber;
}


int Number::castNumberFromOctToDec(QVector<int> m_octNumber)
{
    int base = 8;
    for(int i = m_octNumber.length()-1,j=0;i>=0;i--,j++){
        m_decNumber += (m_octNumber[j]-48)*(pow(base,i));
    }
    return m_decNumber;
}

int Number::castNumberFromBinToDec(QVector<int> m_binNumber)
{
    int base = 2;
    for(int i = m_binNumber.length()-1,j=0;i>=0;i--,j++){
        m_decNumber += (m_binNumber[j]-48)*(pow(base,i));
    }
    return m_decNumber;

}

QVector<char> Number::castFromDecToHex(int number)
{
    QVector<char> dNumber;
    char hexaDeciNum[100];
    int i = 0;
    while (number != 0) {
        int temp = 0;

        temp = number % 16;

        if (temp < 10) {
            hexaDeciNum[i] = temp + 48;
            i++;
        }
        else {
            hexaDeciNum[i] = temp + 55;
            i++;
        }

        number = number / 16;
    }

    for (int j = i - 1; j >= 0; j--)
    {
        dNumber.push_back(hexaDeciNum[j]);
    }


    return dNumber;
}

QVector<int> Number::castFromDecToOct(int number)
{
    QVector<int> octNumber;
    int octalNum[100];

    int i = 0;
    while (number != 0) {
        octalNum[i] = number % 8;
        number = number / 8;
        i++;
    }

    for (int j = i - 1; j >= 0; j--)
    {
        octNumber.push_back(octalNum[j]);
    }

    return octNumber;
}

QVector<int> Number::castFromDecToBin(int number)
{
    QVector<int> binNumber;
    int binaryNum[32];

    int i = 0;
    while (number > 0) {
        binaryNum[i] = number % 2;
        number = number / 2;
        i++;
    }

    for (int j = i - 1; j >= 0; j--)
    {
        binNumber.push_back(binaryNum[j]);
    }

    return binNumber;
}



