---
title: Travailler avec le contrôle de contenu SDT dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec le contrôle de contenu SDT
linktitle: Travailler avec le contrôle de contenu SDT
type: docs
description: "Gestion avancée du contenu des documents, comment créer et manipuler les contrôles de contenu (étiquettes de document structuré) en utilisant Java."
weight: 390
url: /fr/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

En Microsoft Word, Vous pouvez créer un formulaire en commençant par un modèle et en ajoutant des contrôles de contenu, y compris les cases à cocher, les cases de texte, les sélectionneurs de dates et les listes déroulantes. En <span notrans="<span notrans=" Aspose.Words"=""></span>""> une étiquette de document structuré ou un contrôle de contenu de tout document chargé dans Aspose.Words est importé en tant que noeud structuredDocumentTag. Les balises de document structurées (SDT ou contrôle de contenu) permettent d'intégrer la sémantique définie par le client ainsi que son comportement et son apparence dans un document.

Document structuré L'étiquette peut se trouver dans un document aux endroits suivants:

- Niveau de bloc - Parmi les paragraphes et les tableaux, comme un enfant d'un corps, HeaderFooter, Commentaire, Note de bas de page ou un noeud de forme.
- Niveau de rangée - Parmi les rangées dans une table, comme un enfant d'un noeud de table.
- Niveau cellulaire - Parmi les cellules dans une rangée de tableau, comme un enfant d'un noeud de ligne.
- Niveau en ligne - Parmi le contenu en ligne à l'intérieur, comme un enfant d'un paragraphe.
- Niché dans une autre structure.

## Insérer des contrôles de contenu dans un document

Dans cette version de Aspose.Words, les types suivants de DTS ou de contrôle de contenu peuvent être créés:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

L'exemple de code suivant montre comment créer le contrôle de contenu de la case à cocher de type:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

L'exemple de code suivant montre comment créer le contrôle de contenu de la zone de texte riche de type:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

L'exemple de code suivant montre comment créer le contrôle de contenu de la boîte combo type:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Comment mettre à jour les contrôles de contenu

Cette section explique comment mettre à jour les valeurs du TSD ou du contrôle de contenu programmatiquement.

L'exemple de code suivant montre comment définir l'état actuel de la case à cocher:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

L'exemple de code suivant montre comment modifier les contrôles de contenu de type zone de texte simple, liste déroulante et image:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de ces exemples à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Reliure le contrôle du contenu aux pièces XML personnalisées

Vous pouvez lier les contrôles de contenu avec des données XML (*partie XML personnalisée*) dans des documents Word

L'exemple de code suivant montre comment lier le contrôle de contenu à des parties XML personnalisées:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Contenu clair d'un contrôle de contenu

Vous pouvez effacer le contenu d'un contrôle de contenu en affichant un détenteur de place. **Document structuréTag.clear()** méthode efface le contenu de cette balise de document structuré et affiche un placeholder s'il est défini. Toutefois, Il n'est pas possible d'effacer le contenu d'un contrôle de contenu s'il a des révisions. Si un contrôle de contenu n'a pas de placeholder, cinq espaces sont insérés comme dans MS Word (sauf les sections répétitives, les éléments de section répétitifs, les groupes, les cases à cocher, les citations). Si un contrôle de contenu est cartographié en XML personnalisé, le nœud XML référencé est effacé.

L'exemple de code suivant montre comment effacer le contenu du contrôle de contenu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Changer les couleurs de fond et de bordure du contrôle du contenu

Les `StructuredDocumentTag.Color` propriété vous permet d'obtenir ou de définir la couleur du contrôle de contenu. La couleur affecte le contrôle du contenu dans deux situations:

1. MS Word souligne l'arrière-plan du contrôle de contenu lorsque la souris passe au-dessus du contrôle de contenu. Cela aide à identifier le contrôle de contenu. La couleur de mise en évidence est un peu plus "douce" que le *Color*. Par exemple, MS Word met en évidence le fond avec la couleur rose, quand *Color* est rouge.
2. Lorsque vous interagissez (édition, cueillette, etc.) avec le contrôle de contenu, la bordure du contrôle de contenu est colorée avec le *Color*.

L'exemple de code suivant montre comment changer la couleur du contrôle de contenu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Comment définir le style pour formater le texte saisi dans le contrôle du contenu

Si vous voulez définir le style de contrôle de contenu, vous pouvez utiliser `StructuredDocumentTag.Style` ou `StructuredDocumentTag.StyleName` propriétés. Lorsque vous tapez le texte dans le contrôle de contenu dans le document de sortie, le texte dactylographié aura le style "Quote".

{{% alert color="primary" %}}

Notez que seuls les styles Linked et Character peuvent être appliqués au contrôle du contenu. Une exception d'opération non valide ("ne peut pas appliquer ce style au SDT") est lancée lorsqu'un style qui existe mais n'est pas lié ou le style Caractère est appliqué.

{{% /alert %}}

L'exemple de code suivant montre comment définir le style de contrôle du contenu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Travailler avec le contrôle du contenu de la section de répétition

Le contrôle de contenu de la section répétitive permet de répéter le contenu contenu. Utilisation Aspose.Words, les nœuds structurés de la balise de document de la section répétitive et les types d'éléments de section répétitive peuvent être créés et à cette fin, [Type de désignation Type Sdt](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) fournit un membre REPEATING_SECTION_ITEM.

L'exemple de code suivant montre comment lier un contrôle de contenu de section répétitive à une table:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

