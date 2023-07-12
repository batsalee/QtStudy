// myclass.h

#ifndef MYCLASS_H
#define MYCLASS_H

#include <QObject>

class MyClass : public QObject
{
    Q_OBJECT
public:
    explicit MyClass(QObject *parent = nullptr);

signals:
    void resultReady(int result);

public slots:
    void addNumbers(int number1, int number2);
};

#endif // MYCLASS_H
