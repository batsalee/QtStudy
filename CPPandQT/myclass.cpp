// myclass.cpp

#include "myclass.h"
#include <QDebug>

MyClass::MyClass(QObject *parent) : QObject(parent)
{

}

void MyClass::addNumbers(int number1, int number2)
{
    int sum = number1 + number2;
    qDebug() << "Sum:" << sum;
    emit resultReady(sum);
}
