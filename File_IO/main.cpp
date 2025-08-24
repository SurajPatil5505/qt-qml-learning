#include <QCoreApplication>
#include "TextFileReader.hpp"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QString filePath = "../Demo.txt";

    TextFileReader fileReader( filePath );

    fileReader.readAndPrintFile();

    return a.exec();
}
