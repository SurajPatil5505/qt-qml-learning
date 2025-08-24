#ifndef TEXTFILEREADER_HPP
#define TEXTFILEREADER_HPP

#include <QString>
#include <QObject>

class TextFileReader: public QObject{

    Q_OBJECT

public:
TextFileReader( const QString& filePath, QObject* parent = nullptr );
bool readAndPrintFile();

private:
QString filePath;

};

#endif // TEXTFILEREADER_HPP
