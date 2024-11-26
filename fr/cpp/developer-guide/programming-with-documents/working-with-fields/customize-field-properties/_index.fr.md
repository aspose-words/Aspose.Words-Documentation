---
title: Personnaliser les propriétés des champs en C++
second_title: Aspose.Words pour C++
articleTitle: Personnaliser les Propriétés du Champ
linktitle: Personnaliser les Propriétés du Champ
description: "Apprenez à personnaliser les propriétés des champs en C++. Renommez les champs de fusion ou obtenez des résultats pour les champs sans nœud séparateur en C++."
type: docs
weight: 27
url: /fr/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words offre la possibilité d'interagir par programmation avec diverses propriétés de champ. Dans cet article, nous examinerons quelques exemples afin que vous compreniez le principe de base de l'utilisation des propriétés de champ. Vous pouvez voir la liste complète des propriétés pour chaque type de champ dans la classe correspondante dans le [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Mise à Jour des Propriétés de Champ

Parfois, les utilisateurs doivent modifier la valeur d'une propriété de champ. Par exemple, mettez à jour la propriété [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) du champ `AUTHOR` ou modifiez la propriété [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) du champ `MERGEFIELD`.

L'exemple de code suivant montre comment renommer les champs de fusion dans un document Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Résultat D'Affichage de Champ

Aspose.Words fournit une propriété pour obtenir le résultat du champ pour les champs qui n'ont pas de nœud séparateur de champ. Nous appelons ce "faux résultat" ou résultat d'affichage; Microsoft Word l'affiche dans le document en calculant la valeur du champ à la volée, mais il n'y a pas une telle valeur dans le modèle de document.

L'exemple de code suivant montre l'utilisation de la propriété [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
