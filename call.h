#ifndef CALL_H
#define CALL_H
#include<QDateTime>
#include<QObject>



class Call
{
public:
    Call();

    Call(int id,QString callr,QDateTime dateT,int callT);


    int callId() const;
    QString caller() const;
    QDateTime dateTime() const;
    int callType() const ;


protected:
    void setCallId(const int id);
    void setCaller(const QString callr);
    void setDateTime(const QDateTime dateT);
    void setCallType(const int callT);


private:
    int _callId;
    QString _caller;
    QDateTime _dateTime;
    int _callType;


};

 Q_DECLARE_METATYPE(Call);

#endif // CALL_H
