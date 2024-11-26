---
title: Utilisation de SDT de contrôle de contenu
second_title: Aspose.Words pour .NET
articleTitle: Utilisation de SDT de contrôle de contenu
linktitle: Utilisation de SDT de contrôle de contenu
description: "Gestion avancée du contenu des documents, comment créer et manipuler des contrôles de contenu (balises de document structurées) à l'aide de C#."
type: docs
weight: 390
url: /fr/net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Dans Microsoft Word, vous pouvez créer un formulaire en commençant par un modèle et en ajoutant des contrôles de contenu, notamment des cases à cocher, des zones de texte, des sélecteurs de date et des listes déroulantes. Dans Aspose.Words, une balise de document structuré ou un contrôle de contenu de tout document chargé dans Aspose.Words est importé en tant que nœud StructuredDocumentTag. Les balises de document structurées (SDT ou contrôle de contenu) permettent d'intégrer la sémantique définie par le client ainsi que son comportement et son apparence dans un document.

StructuredDocumentTag peut apparaître dans un document aux endroits suivants:

- Au niveau du bloc – Parmi les paragraphes et les tableaux, en tant qu'enfant d'un nœud Body, HeaderFooter, Comment, Footnote ou Shape
- Au niveau des lignes – Parmi les lignes d'une table, en tant qu'enfant d'un nœud Table
- Au niveau des cellules – Parmi les cellules d'une ligne de tableau, en tant qu'enfant d'un nœud Row
- Niveau en ligne – Parmi le contenu en ligne à l'intérieur, en tant qu'enfant d'un paragraphe
- Imbriqué dans un autre StructuredDocumentTag

## Insertion de contrôles de contenu dans un document

Dans cette version de Aspose.Words, les types suivants de SDT ou de contrôle de contenu peuvent être créés:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

L'exemple de code suivant montre comment créer un contrôle de contenu de type case à cocher:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

L'exemple de code suivant montre comment créer un contrôle de contenu de type zone de texte enrichi:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

L'exemple de code suivant montre comment créer un contrôle de contenu du type zone de liste déroulante:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## Comment mettre à jour les contrôles de contenu

Cette section explique comment mettre à jour les valeurs de SDT ou de contrôle de contenu par programmation.

L'exemple de code suivant montre comment définir l'état actuel de la case à cocher:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

L'exemple de code suivant montre comment modifier les contrôles de contenu de type zone de texte brut, liste déroulante et image:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Liaison du contrôle de contenu à des parties XML personnalisées

Vous pouvez lier des contrôles de contenu avec des données XML (*partie XML personnalisée*) dans des documents Word.

L'exemple de code suivant montre comment lier le contrôle de contenu à des parties XML personnalisées:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## XMLMapping de la plage de balises de documents structurés

Vous pouvez obtenir le mappage de cette plage de balises de document structuré avec des données XML dans une partie XML personnalisée du document actuel à l'aide du **Propriété StructuredDocumentTagRangeStart.XmlMapping**. Cependant, la méthode [SetMapping](https://reference.aspose.com/words/fr/net/aspose.words.markup/xmlmapping/setmapping/) peut être utilisée pour mapper une plage de balises de document structuré à des données XML.

L'exemple de code suivant montre comment définir le mappage XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Effacer le contenu d'un contrôle de contenu

Vous pouvez effacer le contenu d'un contrôle de contenu en affichant un espace réservé. La méthode **StructuredDocumentTag.Clear** efface le contenu de cette balise de document structuré et affiche un espace réservé s'il est défini. Cependant, il n'est pas possible d'effacer le contenu d'un contrôle de contenu s'il comporte des révisions. Si un contrôle de contenu n'a pas d'espace réservé, cinq espaces sont insérés comme dans Microsoft Word (sauf sections répétitives, éléments de section répétitifs, groupes, cases à cocher, citations). Si un contrôle de contenu est mappé à du XML personnalisé, le nœud XML référencé est effacé.

L'exemple de code suivant montre comment effacer le contenu du contrôle de contenu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Modifier les couleurs d'arrière-plan et de bordure du contrôle de contenu

La propriété `StructuredDocumentTag.Color` vous permet d'obtenir ou de définir la couleur du contrôle de contenu. La couleur affecte le contrôle du contenu dans deux situations:

1. MS Word met en évidence l'arrière-plan du contrôle de contenu lorsque la souris se déplace sur le contrôle de contenu. Cela permet d'identifier le contrôle de contenu. La couleur de surbrillance est un peu plus "douce" que celle du *Color*. Par exemple, MS Word met en évidence l'arrière-plan avec la couleur rose, lorsque *Color* est rouge.
2. Lorsque vous interagissez (édition, sélection, etc.) avec le contrôle de contenu, la bordure du contrôle de contenu est colorée avec le *Color*.

L'exemple de code suivant montre comment modifier la couleur du contrôle de contenu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## Comment définir le style pour formater le texte saisi dans le contrôle de contenu

Si vous souhaitez définir le style de contrôle de contenu, vous pouvez utiliser les propriétés `StructuredDocumentTag.Style` ou `StructuredDocumentTag.StyleName`. Lorsque vous tapez le texte dans le contrôle de contenu dans le document de sortie, le texte saisi aura le style "Citation".

{{% alert color="primary" %}}

Notez que seuls les styles Lié et Caractère peuvent être appliqués au contrôle de contenu. Une InvalidOperationException ("Impossible d'appliquer ce style au SDT") est levée lorsqu'un style qui existe mais qui n'est pas lié ou un style de caractère est appliqué.

{{% /alert %}}

L'exemple de code suivant montre comment définir le style du contrôle de contenu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Utilisation du contrôle de contenu de section répétitive

Le contrôle du contenu de la section répétitive permet de répéter le contenu qu'elle contient. À l'aide de Aspose.Words, les nœuds de balises de document structurés des types d'éléments de section répétitive et de section répétitive peuvent être créés et à cet effet, [Type d'énumération SdtType](https://reference.aspose.com/words/fr/net/aspose.words.markup/sdttype/) fournit une propriété **RepeatingSectionItem**.

L’exemple de code suivant montre comment lier un contrôle de contenu de section répétitive à une table.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
