#ifndef COMPTEUR_H
#define COMPTEUR_H

#include <QObject>

class Compteur : public QObject
{
    Q_OBJECT
public:
    explicit Compteur(QObject *parent = 0);
    Q_INVOKABLE QString increment(int x,int y);
    Q_PROPERTY(QString cptQML READ readCompteur NOTIFY cptChanged);
    QString readCompteur();
    Q_INVOKABLE void init();

signals:
    void cptChanged();

public slots:

private:
    int fCompteur;
    int tableau[3][3];
    bool etat_victoire1;
    bool etat_victoire2;
    bool place;
};

#endif // COMPTEUR_H
