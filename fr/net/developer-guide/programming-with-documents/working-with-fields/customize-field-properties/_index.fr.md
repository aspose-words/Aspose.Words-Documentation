---
title: Personnaliser les propriétés de champ dans C#
second_title: Aspose.Words pour .NET
articleTitle: Personnaliser les propriétés du champ
linktitle: Personnaliser les propriétés du champ
description: "Découvrez comment personnaliser les propriétés des champs dans C#. Renommez les champs de fusion ou obtenez les résultats pour les champs sans nœud séparateur dans .NET."
type: docs
weight: 27
url: /fr/net/customize-field-properties/
---

Aspose.Words offre la possibilité d'interagir par programmation avec diverses propriétés de champ. Dans cet article, nous examinerons quelques exemples afin que vous compreniez le principe de base du travail avec les propriétés de champ. Vous pouvez voir la liste complète des propriétés pour chaque type de champ dans la classe correspondante dans le [Espace de noms des champs](https://reference.aspose.com/words/net/aspose.words.fields/).

## Mise à jour des propriétés du champ

Parfois, les utilisateurs doivent modifier la valeur d'une propriété de champ. Par exemple, mettez à jour la propriété [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) du champ `AUTHOR` ou modifiez la propriété [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) du champ `MERGEFIELD`.

L'exemple de code suivant montre comment renommer les champs de fusion dans un document Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Résultat d'affichage du champ

Aspose.Words fournit une propriété permettant d'obtenir le résultat du champ pour les champs qui n'ont pas de nœud séparateur de champ. Nous appelons cela "faux résultat" ou résultat d'affichage ; MS Word l'affiche dans le document en calculant la valeur du champ à la volée, mais une telle valeur n'existe pas dans le modèle de document.

L'exemple de code suivant montre l'utilisation de la propriété [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
