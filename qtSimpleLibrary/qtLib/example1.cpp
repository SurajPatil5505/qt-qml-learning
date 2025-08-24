/**
 * This file is subject to the terms and conditions defined in file 'LICENSE.txt', which is part of this source code package.
 *
 *
 * - Description: This class provides library functions for application.
 *
 */
#include <QDebug>
#include "example1.h"

Example1::Example1()
{
    qDebug() << "Example1::constructor";
}

void Example1::print()
{
    qDebug() << "Print function in library Called!";
}
