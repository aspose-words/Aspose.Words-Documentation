---
title: Exigences de Mémoire
second_title: Aspose.Words pour Java
articleTitle: Exigences de Mémoire
linktitle: Exigences de Mémoire
description: "De combien de mémoire Aspose.Words pour Java a-t-il besoin pour travailler avec des documents? Apprenez les détails."
type: docs
weight: 10
url: /fr/java/memory-requirements/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words fournit un large éventail de fonctionnalités pour travailler avec des documents dans différents formats. Il est important de noter qu'il n'y a aucune limite sur la taille maximale d'un fichier de document que Aspose.Words peut traiter ou afficher. La seule limitation est la quantité de RAM (mémoire) disponible de votre côté.

## De Combien de Mémoire Aspose.Words A Besoin

Habituellement, Aspose.Words a besoin de plusieurs fois plus de mémoire que la taille du document pour créer un modèle du document en mémoire. Par exemple, si la taille de votre document est de 1 MB, Aspose.Words a besoin de 10 à 20 MB sur RAM pour créer son modèle d'objet de document (DOM) en mémoire. Le multiplicateur dépend du format car certains formats sont plus compacts que d'autres. Par exemple, DOCX est plus compact que DOC et RTF, et DOC est plus compact que RTF.

Il n'existe aucun moyen exact d'estimer la quantité de mémoire Aspose.Words réellement consommée lors du traitement d'un fichier de document particulier. Comme vous le savez peut-être, Java stocke des données dans des classes, chaque instance de classe utilise de la mémoire pour JVM (Java machine virtuelle) à des fins internes. Ainsi, tout paragraphe ou texte formaté (même s'il se compose d'un caractère) prend un peu de mémoire supplémentaire après le chargement dans le DOM. De plus, le moteur de garbage collector Java utilise un algorithme complexe pour déterminer le meilleur moment pour effectuer une collecte de mémoire, ce qui rend difficile la détermination de la consommation réelle de mémoire.

## Comment calculer la Quantité de mémoire

Considérons deux documents:

1. DOCX "A" document - 0.35 MB taille (2 mille pages), texte uniquement
2. DOCX "B" document- 0.35 MB taille (seulement 1 page), avec PNG image à l'intérieur

Comme vous le savez, beaucoup de formats modernes comme DOCX, ODT, etc. sont de simples archives ZIP. Donc, nous obtenons l'algorithme de calcul suivant:
1. Décompression. Le document décompressé "A" a une taille de 20 MB, le document "B" a une taille de 0.4 MB
2. Chargement du document dans le modèle (construction de son modèle d'objet de document - DOM):
* La création de DOM du premier document "A" nécessite une taille de 49 MB
* La création de DOM du deuxième document "B" ne nécessite que 2 MB tailles.
3. Mesurer la quantité de mémoire requise pour rendre ces documents à PDF. Pour cette opération, Aspose.Words nécessite:
  *  294 MB pour le document "A"
  * 7 MB pour le document "B"

Ainsi, comme vous pouvez le voir, il n'y a pas de dépendance linéaire sur la taille du document d'entrée. De nombreux facteurs peuvent affecter la taille RAM requise – le format du document, sa complexité et sa structure, le nombre d'images et leur format, ainsi que de nombreux autres facteurs.

## Comment Calculer le Multiplicateur de Mémoire Le Plus Précisément

Des expériences avec des milliers de documents réels montrent que généralement Aspose.Words nécessite plusieurs fois plus de mémoire que la taille moyenne du document pour créer un modèle de document en mémoire et effectuer des opérations simples comme la conversion entre les formats de flux, mail merge, analyser, remplacer, etc. Parfois, nous parlons d'un multiplicateur de 2, et parfois de 20.

Des opérations plus complexes comme le rendu (conversion vers des formats de page fixes), la mise à jour des champs, le fractionnement de page, etc., pour certains documents nécessitent 20 fois plus de ressources que la mémoire allouée par le document chargé dans Aspose.Words DOM.

Si les résultats de votre profilage indiquent un possible problème de mémoire dans Aspose.Words, veuillez contacter notre [Équipe de Soutien](/words/java/technical-support/) et incluez toutes les informations de diagnostic.

## Voir Aussi

* [Rendu](/words/java/rendering/)
* [Mail Merge et rapports](/words/java/mail-merge-and-reporting/)
* [Travailler avec des Champs](/words/java/working-with-fields/)
