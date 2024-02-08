---
title: Exigences de mémoire
second_title: Aspose.Words pour .NET
articleTitle: Exigences de mémoire
linktitle: Exigences de mémoire
description: "De quelle quantité de mémoire Aspose.Words pour .NET a-t-il besoin pour travailler avec des documents? Apprenez les détails."
type: docs
weight: 10
url: /fr/net/memory-requirements/
---

Aspose.Words offre un large éventail de fonctionnalités pour travailler avec des documents dans différents formats. Il est important de noter qu'il n'y a aucune limite quant à la taille maximale d'un fichier de document que Aspose.Words peut traiter ou restituer. La seule limitation est la quantité de RAM (mémoire) disponible de votre côté.

## De combien de mémoire Aspose.Words a-t-il besoin

Habituellement, Aspose.Words a besoin de plusieurs fois plus de mémoire que la taille du document pour créer un modèle du document en mémoire. Par exemple, si la taille de votre document est de 1 Mo, Aspose.Words a besoin de 10 à 20 Mo de RAM pour créer son Document Object Model (DOM) en mémoire. Le multiplicateur dépend du format car certains formats sont plus compacts que d'autres. Par exemple, DOCX est plus compact que DOC et RTF, et DOC est plus compact que RTF.

Il n'existe aucun moyen exact d'estimer la quantité de mémoire réellement consommée par Aspose.Words lors du traitement d'un fichier de document particulier. Comme vous le savez peut-être, .NET stocke les données dans des classes, chaque instance de classe utilise de la mémoire à des fins internes au CLR. Ainsi, tout paragraphe ou texte formaté (même s'il est composé d'un seul caractère) prend de la mémoire supplémentaire après son chargement dans le DOM. De plus, le moteur du garbage collector .NET utilise un algorithme complexe pour déterminer le meilleur moment pour effectuer une collecte de mémoire, ce qui rend difficile la détermination de la consommation réelle de mémoire.

## Comment calculer la quantité de mémoire

Considérons deux documents:

1. Document DOCX "A" – taille 0,35 Mo (2 000 pages), texte uniquement
2. Document DOCX "B" – taille 0,35 Mo (seulement 1 page), avec une image PNG à l'intérieur

Comme vous le savez, de nombreux formats modernes comme DOCX, ODT, etc. sont de simples archives ZIP. On obtient donc l'algorithme de calcul suivant:
1. Décompression. Le document "A" décompressé a une taille de 20 Mo, le document "B" a une taille de 0,4 Mo
2. Chargement du document dans le modèle (construction de son Document Object Model – DOM):
* La création du DOM du premier document "A" nécessite une taille de 49 Mo
* La création du DOM du deuxième document "B" ne nécessite que 2 Mo.
3. Mesurer la quantité de mémoire requise pour restituer ces documents au format PDF. Pour cette opération, Aspose.Words nécessite:
  * 294 Mo pour le document "A"
  * 7 Mo pour le document "B"

Ainsi, comme vous pouvez le constater, il n’y a pas de dépendance linéaire à la taille du document d’entrée. De nombreux facteurs peuvent affecter la taille de RAM requise: le format du document, sa complexité et sa structure, le nombre d'images et leur format, et bien d'autres facteurs.

## Comment calculer le multiplicateur de mémoire avec la plus grande précision

Des expériences avec des milliers de documents réels montrent que Aspose.Words nécessite généralement plusieurs fois plus de mémoire que la taille moyenne d'un document pour créer un modèle de document en mémoire et effectuer des opérations simples telles que la conversion entre les formats de flux, mail merge, l'analyse, le remplacement, etc. Parfois on parle d'un multiplicateur de 2, et parfois de 20.

Des opérations plus complexes telles que le rendu (conversion vers des formats de page fixes), la mise à jour des champs, le fractionnement de la page, etc., nécessitent pour certains documents 20 fois plus de ressources que la mémoire allouée par le document chargé dans Aspose.Words DOM.

Si vos résultats de profilage indiquent un possible problème de mémoire dans Aspose.Words, veuillez contacter notre [Soutien technique](/words/fr/net/technical-support/) et inclure toutes les informations de diagnostic.

## Voir également

* [Mesurer l'utilisation de la mémoire dans Visual Studio (C#, Visual Basic, C++, F#)](https://learn.microsoft.com/en-us/visualstudio/profiling/memory-usage?view=vs-2022)
* [Le rendu](/words/fr/net/rendering/)
* [Mail Merge et rapports](https://docs.aspose.com/words/net/mail-merge-and-reporting/)
* [Travailler avec des champs](/words/fr/net/working-with-fields/)