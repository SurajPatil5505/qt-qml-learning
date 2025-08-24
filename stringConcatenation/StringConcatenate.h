#ifndef STRINGCONCATENATE_H
#define STRINGCONCATENATE_H

#include <QString>
#include <QObject>

class StringConcatenation : public QObject
{
    Q_OBJECT

public:
    StringConcatenation( QObject* parent = nullptr );

    QString concatenateStrings( const QString& str1, const QString& str2 );
};

#endif // STRINGCONCATENATE_H
