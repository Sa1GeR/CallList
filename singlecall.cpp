#include "singlecall.h"



SingleCall::SingleCall(int id, QString callr, QDateTime dateT, int callT)
{
    _callId=id;
    _caller=callr;
    _dateTime=dateT;
    _calltype=callt;
}

SingleCall::SingleCall(SingleCall *s)
{

}

int SingleCall::callId()
{
    return _callId;
}

void SingleCall::setCallId(const int id)
{
    _callId = id;
}

QString SingleCall::caller()
{
    return caller;
}

void SingleCall::setCaller(const QString callr)
{
    _caller=callr;
}

QDateTime SingleCall::dateTime()
{
    return _dateTime;
}

void SingleCall::setDetTime(const QDateTime dateT)
{
    _dateTime=dateT;
}

int SingleCall::callType()
{
    return _callType;
}

void SingleCall::setCallType(const int callT)
{
    _calltype=callT;
}
