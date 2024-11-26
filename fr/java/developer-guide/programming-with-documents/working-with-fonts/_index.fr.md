---
title: Utilisation des polices dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des polices
linktitle: Travailler avec des polices
description: "Mise en forme de la police dans les détails à l'aide de Java."
type: docs
weight: 230
url: /fr/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Une police est un ensemble de caractères avec une certaine taille, couleur et conception. Aspose.Words vous permet de travailler avec des polices en utilisant diverses classes liées aux polices, y compris la classe [Font](https://reference.aspose.com/words/java/com.aspose.words/font/).

## Formatage des Polices

La mise en forme actuelle de la police est représentée par un objet **Font** renvoyé par la propriété [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont). La classe **Font** contient une grande variété de propriétés de police possibles dans Microsoft Word.

L'exemple de code suivant montre comment définir le formatage des polices:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Les propriétés de remplissage sont désormais également disponibles pour les polices afin de définir la mise en forme de remplissage du texte. Il permet de modifier, par exemple, la couleur de premier plan ou la transparence du remplissage du texte.

## Obtenir L'Interligne De La Police

L'interligne d'une police est la distance verticale entre les lignes de base de deux lignes de texte consécutives. Ainsi, l'interligne inclut l'espace vide entre les lignes ainsi que la hauteur du caractère lui-même.

La propriété [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) a été introduite dans la classe **Font** pour obtenir cette valeur comme indiqué dans l'exemple ci-dessous:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Police EmphasisMark

La classe **Font** fournit la propriété [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) pour obtenir ou définir les valeurs d'énumération EmphasisMark à appliquer dans la mise en forme.

L'exemple de code suivant montre comment définir la propriété **EphasisMark**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
