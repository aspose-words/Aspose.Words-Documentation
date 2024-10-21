---
title: Qu'est-ce qu'une mise en page en C++
second_title: Aspose.Words pour C++
articleTitle: Qu'est-ce qu'une mise en page
linktitle: Qu'est-ce qu'une mise en page
description: "Voyons ce qu'est une mise en page. Une mise en page décrit la géométrie du contenu contenu dans un document."
type: docs
weight: 5
url: /fr/cpp/what-is-a-page-layout/
---

Un **document page layout** est une structure de données décrivant l'emplacement d'un objet particulier sur les pages de tous les objets du document. De plus, étant donné que les objets ont des propriétés qui affectent leur apparence, telles que la taille de la police, l'ombrage ou les effets de dessin, vous devez non seulement savoir où se trouve l'objet, mais également quelle (s) zone (s) de la page il occupe et s'il s'appliquera à plusieurs pages afin que d'autres objets ne chevauchent pas la ou les mêmes zones.

## À Quoi Sert une Mise En Page?

Aspose.Words implémente en interne la fonctionnalité de mise en page lui permettant de produire tous les formats de page fixes, tels que PDF, XPS et divers formats d'image. Sans mise en page, les informations stockées dans le fichier de document de page fixe ne seraient pas disponibles et tous ces formats ne seraient pas pris en charge.

La relation entre un document et une mise en page est assez simple. Alors qu'un document décrit le contenu, la mise en page correspondante décrit la géométrie de ce contenu. Notez qu'une mise en page ne peut exister sans document car il n'y aurait pas de contenu pour calculer la géométrie, mais un document peut exister sans mise en page. Par exemple, lorsqu'un document DOCX est converti en document RTF, il n'est généralement pas nécessaire de connaître la géométrie, car aucun des deux formats ne la stocke.

## Voir Aussi

* [Création d'une mise en page](/words/cpp/creating-a-page-layout/)
* [Enregistrement d'un document au format de page fixe](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Spécifier Les Options De Mise En Page](/words/cpp/specify-layout-options/)