#include "number.h"
#include <QDebug>
#include <iostream>

using namespace std;

Number::Number(QObject *parent) : QObject(parent)
{

}

Number::~Number()
{

}

//////// BEGIN CAST OTHER RADIX TO DECIMAIL
void Number::setNumberInput( int numberInput)
{
    qDebug("called");
    m_numberInput = to_string(numberInput);
    castToDecimal(DEC_RADIX_TYPE);
    setNumberFromDecToRadixOther();
}

void Number::castToDecimal(RADIX_TYPE radixType)
{
    switch (radixType) {
    case HEX_RADIX_TYPE:
        m_number = castNumberFromHexToDec(m_numberInput);
        break;
    case DEC_RADIX_TYPE:
        m_number = castNumberFromDecToDec(m_numberInput);
        qDebug("m_number: %d", m_number);
        break;
    case OCT_RADIX_TYPE:
        m_number = castNumberFromOctToDec(m_numberInput);
        break;
    case BIN_RADIX_TYPE:
        m_number = castNumberFromBinToDec(m_numberInput);
        break;
    default:
        break;
    }
}

int Number::castNumberFromHexToDec(string numberInput)
{
    int base = 16;
    int m_decNumberOne = 0 , m_decNumberTwo = 0;

    for(int i = numberInput.length() - 1, j = 0; i >= 0; i--, j++){
        char temp = numberInput[j];

        if(temp >=65){
            m_decNumberOne += (numberInput[j]-55)*(pow(base,i));
            qDebug("temp: %c", temp);
        }

        else {
             m_decNumberTwo += (numberInput[j]-48)*(pow(base,i));
        }
        m_decNumber = m_decNumberOne + m_decNumberTwo;
    }

    return m_decNumber;
}

int Number::castNumberFromDecToDec(string numberInput)
{
    int base = 10;

    for(int i = numberInput.length() - 1, j = 0; i >= 0; i--, j++){

        m_decNumber += (numberInput[j] - 48)*(pow(base,i));
    }

    return m_decNumber;
}

int Number::castNumberFromOctToDec(string numberInput)
{
    int base = 8;
    for(int i = numberInput.length() - 1, j = 0; i >= 0; i--, j++){
        m_decNumber += (numberInput[j]-48)*(pow(base,i));
    }

    return m_decNumber;
}

int Number::castNumberFromBinToDec(string numberInput)
{
    int base = 2;
    for(int i = numberInput.length() - 1, j = 0; i >= 0; i--, j++){
        m_decNumber += (numberInput[j]-48)*(pow(base,i));
    }

    return m_decNumber;
}

////////END CAST OTHER RADIX TO DECIMAL


//////// BEGIN CAST DECCIMAL RADIX TO OTHER RADIX
void Number::setNumberFromDecToRadixOther()
{
    m_decNumber = m_number;
    qDebug("m_decNumber: %d", m_decNumber);
    m_hexNumber = castFromDecToHex(m_decNumber);
    m_octNumber = castFromDecToOct(m_decNumber);
    m_binNumber = castFromDecToBin(m_decNumber);

    qDebug() << "hex" << m_hexNumber;
    qDebug() << "dec" << m_decNumber;
    qDebug() << "oct" << m_octNumber;
    qDebug() << "bin" << m_binNumber;
    m_rootObject->setProperty("numberHex", getHexNumber());
    m_rootObject->setProperty("numberDec", getDecNumber());
    m_rootObject->setProperty("numberOct", getOctNumber());
    m_rootObject->setProperty("numberBin", getBinNumber());

    m_decNumber = 0; // If we don't have this line, it will be add +=

}

void Number::setRootObject(QObject *rootObject)
{
    m_rootObject = rootObject;
}

int Number::getDecNumber()
{
    return m_decNumber;
}

QString Number::getHexNumber()
{
    QString result = "";//0

    for (auto v: m_hexNumber)
    {
        char c = v;
        //result.clear();
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

QVector<char> Number::castFromDecToHex(int number)
{
    QVector<char> hexNumber;
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
        hexNumber.push_back(hexaDeciNum[j]);
    }

    return hexNumber;
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
//////// BEGIN CAST DECCIMAL RADIX TO OTHER RADIX
