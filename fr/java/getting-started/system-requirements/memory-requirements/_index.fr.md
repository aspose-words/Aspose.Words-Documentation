---
title: Besoins en mémoire
second_title: Aspose.Words pour Java
articleTitle: Besoins en mémoire
linktitle: Besoins en mémoire
description: "Combien de mémoire fait Aspose.Words pour Java besoin de travailler avec des documents? Apprenez les détails."
type: docs
weight: 10
url: /fr/java/memory-requirements/
---

Aspose.Words fournit un large éventail de fonctionnalités pour travailler avec des documents dans différents formats. Il est important de noter qu'il n'y a pas de limite à la taille maximale d'un fichier de documents qui Aspose.Words peut traiter ou rendre. La seule limitation est la quantité de RAM (mémoire) disponible sur votre côté.

## Combien de mémoire Aspose.Words Besoins

Habituellement Aspose.Words nécessite plusieurs fois plus de mémoire que la taille du document pour construire un modèle du document en mémoire. Par exemple, si votre document est de 1 Mo, Aspose.Words besoin de 10-20 Mo de RAM pour construire son Document Object Model (DOM) en mémoire. Le multiplicateur dépend du format car certains formats sont plus compacts que d'autres. Par exemple, DOCX est plus compact que DOC et RTF, et DOC est plus compact que RTF.

Il n'y a pas de moyen exact d'estimer combien de mémoire Aspose.Words Consomme réellement pendant le traitement de tout fichier de document particulier. Comme vous le savez Java stocke les données dans les classes, chaque instance de classe utilise une certaine mémoire pour JVM (Java machine virtuelle) à des fins internes. Donc, tout paragraphe ou texte formaté (même il se compose d'un caractère) prend une mémoire supplémentaire après le chargement dans le DOM. En outre, Java Le moteur de collecte des ordures utilise un algorithme complexe pour déterminer le meilleur moment pour effectuer une collecte de mémoire, ce qui rend difficile de déterminer la consommation réelle de mémoire.

## Comment calculer la quantité de mémoire

Voyons deux documents:

1. Document DOCX "A" – taille de 0,35 Mo (2 000 pages), texte seulement
2. Document DOCX "B" – taille 0,35 Mo (seulement 1 page), avec image PNG à l'intérieur

Comme vous le savez, beaucoup de formats modernes comme DOCX, ODT, etc. sont de simples archives ZIP. Donc, nous obtenons l'algorithme de calcul suivant:
1. Dézipper. Le document "A" a une taille de 20 Mo, le document "B" a une taille de 0,4 Mo
2. Chargement du document dans le modèle Document Object Model – DOM):
* Création DOM du premier document "A" nécessite 49 Mo
* Création DOM du deuxième document "B" ne nécessite que 2 Mo.
3. Mesurer la quantité de mémoire requise pour rendre ces documents en PDF. Pour cette opération, Aspose.Words nécessite:
  * 294 Mo pour le document "A"
  * 7 Mo pour le document "B"

Ainsi, comme vous pouvez le voir, il n'y a pas de dépendance linéaire à la taille du document d'entrée. De nombreux facteurs peuvent influer sur la taille de la mémoire vive requise: le format du document, sa complexité et sa structure, le nombre d'images et leur format, et beaucoup d'autres facteurs.

## Comment calculer le multiplicateur de mémoire le plus précisément

Des expériences avec des milliers de documents réels montrent que généralement Aspose.Words nécessite plusieurs fois plus de mémoire que la taille moyenne du document pour construire un modèle de document en mémoire et effectuer des opérations simples comme la conversion entre les formats de flux, mail merge, parse, remplacer, et ainsi de suite. Parfois, nous parlons d'un multiplicateur de 2, et parfois de 20.

Des opérations plus complexes comme le rendu (convertir vers des formats de pages fixes), la mise à jour des champs, le fractionnement des pages, etc., pour certains documents nécessitent 20 fois plus de ressources que la mémoire attribuée par le document chargé dans Aspose.Words DOM.

Si vos résultats de profilage indiquent un problème de mémoire possible dans Aspose.Words, s'il vous plaît contacter notre [Appui technique](/words/fr/java/technical-support/) et inclure toutes les informations diagnostiques.

## Voir aussi

* [Rendus](/words/fr/java/rendering/)
* [Mail Merge et rapports](/words/java/mail-merge-and-reporting/)
* [Travailleur avec Champs](/words/fr/java/working-with-fields/)