---
title: Travailler avec des listes en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler Avec Des Listes
linktitle: Travailler Avec Des Listes
description: "Introduction à la fonction de formatage de numérotation dans Aspose.Words pour C++."
type: docs
weight: 200
url: /fr/cpp/working-with-lists/
---

Une liste dans un document Microsoft Word est un ensemble de propriétés de formatage de liste. Les listes peuvent être utilisées dans vos documents pour formater, organiser et mettre en valeur le texte. Les listes sont un excellent moyen d'organiser les données dans les documents et permettent aux lecteurs de mieux comprendre les points clés.

Chaque liste peut avoir jusqu'à 9 niveaux et les propriétés de formatage, telles que le style numérique, la valeur de départ, le retrait, la position de tabulation, etc. sont définies séparément pour chaque niveau.

Dans Aspose.Words, le travail avec les listes est représenté par l'espace de noms [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/). Cependant, l'objet [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) appartient toujours à la collection [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

Cette rubrique décrit comment travailler par programmation avec des listes à l'aide de Aspose.Words.

## Spécifier le formatage pour un niveau de liste

Les objets au niveau de la liste sont créés automatiquement lorsqu'une liste est créée. Utilisez les propriétés et les méthodes de la classe [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) pour contrôler la mise en forme des niveaux individuels d'une liste.

## Liste de redémarrage pour chaque section

Vous pouvez redémarrer une liste pour chaque section à l'aide de la propriété [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Notez que cette option n'est prise en charge que dans les formats de document RTF, DOC et DOCX. Cette option sera écrite dans DOCX uniquement si OoxmlCompliance est supérieur à Ecma376.

L'exemple de code suivant montre comment créer une liste et la redémarrer pour chaque section:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
