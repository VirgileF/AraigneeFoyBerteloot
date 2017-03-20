#include "compteur.h"


Compteur::Compteur(QObject *parent) : QObject(parent)
{
    fCompteur=1;
    cptChanged();
}

QString Compteur::readCompteur()
{
    return QString::number(fCompteur);
}

QString Compteur::increment(int x,int y) {
    QString couleur;
    if (fCompteur % 2 == 1) {
        tableau[x][y] = 1;
        couleur = "#00ff00";
    }
    else {
        tableau[x][y] = 2;
        couleur = "#ff0000";
    }
    fCompteur++;
    cptChanged();
    return couleur;
}


