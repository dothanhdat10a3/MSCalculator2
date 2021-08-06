#ifndef MEMORYLIST_H
#define MEMORYLIST_H

#include <QAbstractListModel>

class MemoryList : public QAbstractListModel
{
    Q_OBJECT

public:
    explicit MemoryList(QObject *parent = nullptr);

    // Header:
    QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const override;

    // Basic functionality:
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

private:
};

#endif // MEMORYLIST_H
