---
title: Utilisation du contrôle de contenu SDT dans Java
second_title: Aspose.Words pour Java
articleTitle: Utilisation du contrôle de contenu SDT
linktitle: Utilisation du contrôle de contenu SDT
type: docs
description: "Gestion avancée du contenu des documents, comment créer et manipuler des contrôles de contenu (Balises de document structurées) à l'aide de Java."
weight: 390
url: /fr/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Dans Microsoft Word, vous pouvez créer un formulaire en commençant par un modèle et en ajoutant des contrôles de contenu, notamment checkboxes, des zones de texte, des sélecteurs de date et des listes déroulantes. Dans Aspose.Words, une balise de document structuré ou un contrôle de contenu de tout document chargé dans Aspose.Words est importé en tant que nœud StructuredDocumentTag. Les balises de document structurées (SDT ou contrôle de contenu) permettent d'intégrer la sémantique définie par le client ainsi que son comportement et son apparence dans un document.

StructuredDocumentTag peut apparaître dans un document aux endroits suivants:

- Niveau bloc - Parmi les paragraphes et les tableaux, en tant qu'enfant d'un Corps, HeaderFooter, d'un Commentaire, d'une note de bas de page ou d'un nœud de forme.
- Niveau de ligne-Parmi les lignes d'une table, en tant qu'enfant d'un nœud de table.
- Au niveau de la cellule-Parmi les cellules d'une ligne de tableau, en tant qu'enfant d'un nœud de ligne.
- Inline-level-Parmi le contenu en ligne à l'intérieur, en tant qu'enfant d'un paragraphe.
- Imbriqué dans un autre StructuredDocumentTag.

## Insertion de contrôles de contenu dans un document

Dans cette version de Aspose.Words, les types suivants de SDT ou de contrôle de contenu peuvent être créés:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Groupe
- `Picture`
- RichText
- PlainText

L'exemple de code suivant montre comment créer un contrôle de contenu de type checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

L'exemple de code suivant montre comment créer un contrôle de contenu de type zone de texte enrichi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

L'exemple de code suivant montre comment créer un contrôle de contenu de type liste déroulante:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Comment mettre à jour les Contrôles de contenu

Cette section explique comment mettre à jour les valeurs de SDT ou de contrôle de contenu par programmation.

L'exemple de code suivant montre comment définir l'état actuel du checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

L'exemple de code suivant montre comment modifier les contrôles de contenu de type zone de texte brut, liste déroulante et image:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de ces exemples à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Liaison du Contrôle de contenu aux parties XML personnalisées

Vous pouvez lier des contrôles de contenu avec des données XML (*custom XML part*) dans des documents Word.

L'exemple de code suivant montre comment lier le contrôle de contenu aux parties XML personnalisées:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Effacer le contenu d'un contrôle de contenu

Vous pouvez effacer le contenu d'un contrôle de contenu en affichant un espace réservé. La méthode **StructuredDocumentTag.clear()** efface le contenu de cette balise de document structuré et affiche un espace réservé s'il est défini. Cependant, il n'est pas possible d'effacer le contenu d'un contrôle de contenu s'il comporte des révisions. Si un contrôle de contenu n'a pas d'espace réservé, cinq espaces sont insérés comme dans MS Word (à l'exception des sections répétitives, des éléments de section répétitifs, des groupes, des cases à cocher, des citations). Si un contrôle de contenu est mappé sur custom XML, le nœud XML référencé est effacé.

L'exemple de code suivant montre comment effacer le contenu du contrôle de contenu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Modifier les couleurs d'arrière-plan et de Bordure du Contrôle du contenu

La propriété `StructuredDocumentTag.Color` vous permet d'obtenir ou de définir la couleur du contrôle de contenu. La couleur affecte le contrôle du contenu dans deux situations:

1. MS Word met en surbrillance l'arrière-plan du contrôle de contenu lorsque la souris survole le contrôle de contenu. Cela aide à identifier le contrôle du contenu. La couleur de surbrillance est un peu plus "douce" que le *Color*. Par exemple, le mot MS met en surbrillance l'arrière-plan avec la couleur rose, lorsque *Color* est rouge.
2. Lorsque vous interagissez (édition, sélection, etc.) avec le contrôle de contenu, la bordure du contrôle de contenu est colorée avec le *Color*.

L'exemple de code suivant montre comment modifier la couleur du contrôle de contenu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Comment définir le Style pour Formater le Texte saisi dans le Contrôle de contenu

Si vous souhaitez définir le style de contrôle du contenu, vous pouvez utiliser les propriétés `StructuredDocumentTag.Style` ou `StructuredDocumentTag.StyleName`. Lorsque vous tapez le texte dans le contrôle de contenu dans le document de sortie, le texte tapé aura le style "Citation".

{{% alert color="primary" %}}

Notez que seuls les styles Liés et de caractère peuvent être appliqués au contrôle du contenu. Un InvalidOperationException ("Impossible d'appliquer ce style au SDT") est lancé lorsqu'un style qui existe mais n'est pas lié ou qu'un style de caractère est appliqué.

{{% /alert %}}

L'exemple de code suivant montre comment définir le style de contrôle du contenu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Utilisation du Contrôle du contenu des Sections répétitives

Le contrôle de contenu de section répétitif permet de répéter le contenu qu'il contient. En utilisant Aspose.Words, les nœuds de balises de document structuré des types d'éléments de section répétitive et de section répétitive peuvent être créés et à cette fin, [SdtType type d'énumération](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) fournit REPEATING_SECTION_ITEM membre.

L'exemple de code suivant montre comment lier un contrôle de contenu de section répétitif à une table:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

