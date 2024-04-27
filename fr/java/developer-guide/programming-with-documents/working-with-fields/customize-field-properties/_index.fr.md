---
title: Personnaliser les propriétés du champ
second_title: Aspose.Words pour Java
articleTitle: Personnaliser les propriétés du champ
linktitle: Personnaliser les propriétés du champ
description: "Découvrez comment personnaliser les propriétés du champ dans Java. Renommer les champs fusionner ou obtenir des résultats pour les champs sans noeud séparateur dans Java."
type: docs
weight: 27
url: /fr/java/customize-field-properties/
---

Aspose.Words offre la possibilité d'interagir programmatiquement avec diverses propriétés de terrain. Dans cet article, nous allons examiner quelques exemples afin que vous compreniez le principe de base de travailler avec les propriétés du champ. Vous pouvez voir la liste complète des propriétés pour chaque type de champ dans la classe correspondante.

## Mise à jour des biens du champ

Parfois, les utilisateurs doivent changer la valeur d'une propriété de champ. Par exemple, mettre à jour la [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) propriété des `AUTHOR` ou modifier le champ [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) propriété des `MERGEFIELD` sur le terrain.

L'exemple de code suivant montre comment renommer les champs de fusion dans un document Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Résultat de l'affichage des champs

Aspose.Words fournit une propriété pour obtenir le résultat du champ pour les champs qui n'ont pas de noeud de séparateur de champ. Nous appelons ce "faux résultat" ou résultat d'affichage; MS Word l'affiche dans le document en calculant la valeur du champ à la volée, mais il n'y a pas de telle valeur dans le modèle de document.

L'exemple de code suivant montre l'utilisation de [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) Biens

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
