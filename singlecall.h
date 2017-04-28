#ifndef SINGLECALL_H
#define SINGLECALL_H
#include<QDateTime>

class SingleCall
{

public:
    SingleCall(int id,QString callr,QDateTime dateT,int callT);

    SingleCall(SingleCall* s);

    SingleCall();

    int callId();
    void setCallId(const int id);

    QString caller();
    void setCaller(const QString callr);

    QDateTime dateTime();
    void setDetTime(const QDateTime dateT);

    int callType();
    void setCallType(const int callT);

private:
    int _callId;
    QString _caller;
    QDateTime _dateTime;
    int _calltype;
};

#endif // SINGLECALL_H
