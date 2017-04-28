#ifndef MYCALLLISTMODEL_H
#define MYCALLLISTMODEL_H

#include <QAbstractListModel>
#include <QStringList>
#include"call.h"

class myCallListModel : public QAbstractListModel
{
    Q_OBJECT

public:
    enum CallRoles {
           CallerRole = Qt::UserRole + 1,
           DateRole,
           CallTypeRole
       };
    explicit myCallListModel(QObject *parent = 0);

    QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const override;

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

    void addCall(const Call &call);

    Call get_Call(QModelIndex &index);


protected:
    QHash<int, QByteArray> roleNames() const;

private:
    QList<Call> m_calls;
};

#endif // MYCALLLISTMODEL_H
