#include "call.h"

Call::Call()
{

}

Call::Call(int id, QString callr, QDateTime dateT, int callT)
{
    _callId=id;
    _caller=callr;
    _dateTime=dateT;
    _callType=callT;
}

int Call::callId() const
{
    return _callId;
}

void Call::setCallId(const int id)
{
    _callId = id;
}

QString Call::caller() const
{
    return _caller;
}

void Call::setCaller(const QString callr)
{
    _caller=callr;
}

QDateTime Call::dateTime() const
{
    return _dateTime;
}

void Call::setDateTime(const QDateTime dateT)
{
    _dateTime=dateT;
}

int Call::callType() const
{
    return  _callType;
}


void Call::setCallType(const int callT)
{
    _callType=callT;
}
