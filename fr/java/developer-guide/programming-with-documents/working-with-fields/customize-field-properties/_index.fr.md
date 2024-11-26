---
title: Personnaliser les Propriétés du Champ
second_title: Aspose.Words pour Java
articleTitle: Personnaliser les Propriétés du Champ
linktitle: Personnaliser les Propriétés du Champ
description: "Découvrez comment personnaliser les propriétés de champ dans Java. Renommez les champs de fusion ou obtenez des résultats pour les champs sans nœud séparateur dans Java."
type: docs
weight: 27
url: /fr/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words offre la possibilité d'interagir par programmation avec diverses propriétés de champ. Dans cet article, nous examinerons quelques exemples afin que vous compreniez le principe de base de l'utilisation des propriétés de champ. Vous pouvez voir la liste complète des propriétés pour chaque type de champ dans la classe correspondante.

## Mise à Jour des Propriétés de Champ

Parfois, les utilisateurs doivent modifier la valeur d'une propriété de champ. Par exemple, mettez à jour la propriété [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) du champ `AUTHOR` ou modifiez la propriété [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) du champ `MERGEFIELD`.

L'exemple de code suivant montre comment renommer les champs de fusion dans un document Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Résultat D'Affichage de Champ

Aspose.Words fournit une propriété pour obtenir le résultat du champ pour les champs qui n'ont pas de nœud séparateur de champ. Nous appelons ce "faux résultat" ou résultat d'affichage; MS Word l'affiche dans le document en calculant la valeur du champ à la volée, mais il n'y a pas une telle valeur dans le modèle de document.

L'exemple de code suivant montre l'utilisation de la propriété [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
