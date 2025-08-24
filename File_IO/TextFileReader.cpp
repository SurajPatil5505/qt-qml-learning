#include "TextFileReader.hpp"
#include <QDebug>
#include <QFile>
#include <QTextStream>
#include <iostream>

TextFileReader:: TextFileReader( const QString& filePath,  QObject* parent ):
    QObject( parent ),
    filePath( filePath )
{

}

bool TextFileReader:: readAndPrintFile( )
{
        QFile file ( filePath );

        try {
            if ( !file.open( QIODevice::ReadOnly | QIODevice::Text ) ) {
                throw QString( "Error opening file: " ) + file.errorString();
            }

            QTextStream in( &file );

            while ( !in.atEnd() ) {
                QString line = in.readLine();
                std::string printLine = line.toStdString();
                std::cout << printLine << std::endl;
            }

            file.close();

            return true;

        } catch ( const QString& errorMessage ) {

            qDebug() << errorMessage;

            return false;
        }
}
