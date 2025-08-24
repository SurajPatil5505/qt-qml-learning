#include "StringConcatenate.h"
#include <QDebug>

StringConcatenation:: StringConcatenation( QObject* parent ) :
    QObject( parent )
{

}

QString StringConcatenation::concatenateStrings( const QString& str1, const QString& str2 )
{

    QString concatenateString = str1 + str2;

     return concatenateString ;

}
