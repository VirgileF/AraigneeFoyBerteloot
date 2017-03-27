#include "compteur.h"

bool victoire(int tableau[3][3], int j) {
    int d1=0;
    int d2=0;
    for(int i=0; i<3; i++) {
        int ci=0;
        int li=0;
        for(int l=0; l<3; l++){
            if (tableau[i][l]==j) {
                ci++;
            }
            if (tableau[l][i]==j) {
                li++;
            }
        }
        if (li==3 || ci==3) {
            return true;
        }
        if (tableau[i][i]==j) {
            d1++;
        }
        if (tableau[i][2-i]==j) {
            d2++;
        }
    }
    if (d1==3 || d2==3) {
        return true;
    }
    return false;
}

Compteur::Compteur(QObject *parent) : QObject(parent)
{
    fCompteur=1;
    etat_victoire1=false;
    etat_victoire2=false;
    place=false;
    cptChanged();
    tableau[1][0]=3;
}

QString Compteur::readCompteur()
{
    return QString::number(fCompteur);
}

QString Compteur::increment(int x,int y) {
    QString couleur="#bbd2e1";
    if (!(etat_victoire1 || etat_victoire2)) {
        if (fCompteur<7) {
            if ((tableau[x][y]!=1) && (tableau[x][y]!=0)) {
                if (fCompteur%2 == 1) {
                    tableau[x][y] = 1;
                    couleur = "#00ff00";
                    if (victoire(tableau,1)) {
                        etat_victoire1 = true;
                    }
                }
                else {
                    tableau[x][y] = 0;
                    couleur = "#ff0000";
                    if (victoire(tableau,0)) {
                        etat_victoire2 = true;
                    }
                }
                fCompteur++;
                cptChanged();
                }
            else {
                if (tableau[x][y] == 0) {
                    couleur = "#ff0000";
                }
                else if (tableau[x][y]==1) {
                    couleur = "#00ff00";
                }
            }
        }
        else {
            if ((place) && ((tableau[x][y]!=1) || (tableau[x][y]!=0))) {
                if (fCompteur % 2 == 1) {
                    tableau[x][y] = 1;
                    couleur = "#00ff00";
                    if (victoire(tableau,1)) {
                            etat_victoire1 = true;
                    }
                }
                else {
                    tableau[x][y] = 0;
                    couleur = "#ff0000";
                    if (victoire(tableau,0)) {
                        etat_victoire2 = true;
                    }
                }
             fCompteur++;
             cptChanged();
             place=false;
            }
            else if ((!place) && (tableau[x][y]==fCompteur%2)) {
                tableau[x][y]=3;
                place=true;
                return couleur;
            }
            else {
                if (tableau[x][y] == 0) {
                  couleur = "#ff0000";
                }
                else if (tableau[x][y] == 1) {
                    couleur = "#00ff00";
                }
            }
        }
    }
    else {
        if (tableau[x][y] == 0) {
            couleur = "#ff0000";
        }
        else if (tableau[x][y] == 1) {
            couleur = "#00ff00";
        }
    }
return couleur;
}

void Compteur::init() {
    fCompteur=1;
    etat_victoire1=false;
    etat_victoire2=false;
    place=false;
    cptChanged();
    for(int i=0; i<3; i++) {
        for(int j=0; j<3; j++){
            tableau[i][j]=3;
        }
    }
}



