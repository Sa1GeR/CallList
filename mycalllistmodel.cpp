#include "mycalllistmodel.h"
#include <QDebug>

myCallListModel::myCallListModel(QObject *parent)
    : QAbstractListModel(parent)
{
}

QVariant myCallListModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    // FIXME: Implement me!
    return 0;
}

int myCallListModel::rowCount(const QModelIndex &parent) const
{
    return m_calls.count();
}

QVariant myCallListModel::data(const QModelIndex &index, int role) const
{
    if (index.row() < 0 || index.row() >= m_calls.count())
        return QVariant();

    const Call &call = m_calls.at(index.row());
    if (role == CallerRole)
        return call.caller();
    else if (role == DateRole)
        return call.dateTime();
    else if (role == CallTypeRole)
        return call.callType();

    return QVariant();
}

void myCallListModel::addCall(const Call &call)
{
    m_calls.append(call);
}

Call myCallListModel::get_Call(QModelIndex &index)
{
    const Call &call = m_calls.at(index.row());
    return call;
}

QHash<int, QByteArray> myCallListModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[CallerRole] = "caller";
    roles[DateRole] = "dateTime";
    roles[CallTypeRole] = "callType";
    return roles;
}



