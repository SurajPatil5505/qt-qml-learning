#include "StringConcatenate.h"
#include <QCoreApplication>
#include <QTextStream>
#include <iostream>
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    StringConcatenation  stringConcatenate;

    QTextStream inputString(stdin);
    QString string1, string2;

    std::cout << "First string:" << std::endl;
    inputString >> string1;

    std::cout << "second string" << std::endl;
    inputString >> string2;

    QString finalString = stringConcatenate.concatenateStrings( string1, string2 );

    qDebug() << finalString;

    return a.exec();
}
