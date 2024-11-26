---
title: Personnaliser les propriétés de champ dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Personnaliser les propriétés du champ
linktitle: Personnaliser les propriétés du champ
description: "Découvrez comment personnaliser les propriétés des champs dans Python. Renommez les champs de fusion ou obtenez les résultats pour les champs sans nœud séparateur dans Python via .NET."
type: docs
weight: 27
url: /fr/python-net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words offre la possibilité d'interagir par programmation avec diverses propriétés de champ. Dans cet article, nous examinerons quelques exemples afin que vous compreniez le principe de base du travail avec les propriétés de champ. Vous pouvez voir la liste complète des propriétés pour chaque type de champ dans la classe correspondante dans le [Module Champs](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## Mise à jour des propriétés du champ

Parfois, les utilisateurs doivent modifier la valeur d'une propriété de champ. Par exemple, mettez à jour la propriété [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) du champ `AUTHOR` ou modifiez la propriété [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) du champ `MERGEFIELD`.

L'exemple de code suivant montre comment renommer les champs de fusion dans un document Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Résultat d'affichage du champ

Aspose.Words fournit une propriété permettant d'obtenir le résultat du champ pour les champs qui n'ont pas de nœud séparateur de champ. Nous appelons cela "faux résultat" ou résultat d'affichage ; MS Word l'affiche dans le document en calculant la valeur du champ à la volée, mais une telle valeur n'existe pas dans le modèle de document.

L'exemple de code suivant montre l'utilisation de la propriété [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}
