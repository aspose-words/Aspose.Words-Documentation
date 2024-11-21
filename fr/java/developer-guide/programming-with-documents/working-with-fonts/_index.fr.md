---
title: Travailler avec Fonts dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec Fonts
linktitle: Travailler avec Fonts
description: "Formatage des polices dans les détails en utilisant Java."
type: docs
weight: 230
url: /fr/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Une police est un ensemble de caractères avec une certaine taille, couleur et design. Aspose.Words vous permet de travailler avec des polices en utilisant différentes classes de police, y compris le [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) En cours.

## Formatage des polices

Le formatage actuel des polices est représenté par une **Font** objet retourné par [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) propriété. Les **Font** classe contient une grande variété de propriétés de police possible dans Microsoft Word.

L'exemple de code suivant montre comment définir le formatage de police:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Les propriétés de remplissage sont maintenant également disponibles pour les polices pour définir le formatage de remplissage du texte. Il donne la possibilité de changer, par exemple, la couleur de premier plan ou la transparence du remplissage de texte.

## Getting Font Line Spacing

L'espacement des lignes d'une police est la distance verticale entre les lignes de base de deux lignes de texte consécutives. Ainsi, l'espacement des lignes comprend l'espace vide entre les lignes avec la hauteur du personnage lui-même.

Les [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) la propriété a été introduite dans le **Font** classe pour obtenir cette valeur comme indiqué dans l'exemple ci-dessous:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Marquer l'accent sur la police

Les **Font** la classe fournit [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) propriété pour obtenir ou définir les valeurs de dénombrement de EmphaseMark à appliquer dans le formatage.

L'exemple de code suivant montre comment définir le **EphasisMark** Biens

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
