---
title: Utilisation de SDT de contrôle de contenu
second_title: Aspose.Words pour Python via .NET
articleTitle: Utilisation de SDT de contrôle de contenu
linktitle: Utilisation de SDT de contrôle de contenu
description: "En utilisant Python, vous pouvez intégrer une sémantique définie par le client ainsi que son comportement et son apparence dans un document."
type: docs
weight: 390
url: /fr/python-net/working-with-content-control-sdt/
---

Dans Microsoft Word, vous pouvez créer un formulaire en commençant par un modèle et en ajoutant des contrôles de contenu, notamment des cases à cocher, des zones de texte, des sélecteurs de date et des listes déroulantes. Dans Aspose.Words, une balise de document structuré ou un contrôle de contenu de tout document chargé dans Aspose.Words est importé en tant que nœud [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/). Les balises de document structurées (SDT ou contrôle de contenu) permettent d'intégrer la sémantique définie par le client ainsi que son comportement et son apparence dans un document. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) peut apparaître dans un document aux endroits suivants:

- Au niveau bloc - Parmi les paragraphes et les tableaux, en tant qu'enfant d'un nœud [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) ou [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- Au niveau des lignes - Parmi les lignes d'une table, en tant qu'enfant d'un nœud [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- Au niveau des cellules: parmi les cellules d'une ligne de tableau, en tant qu'enfant d'un nœud [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- Niveau en ligne - Parmi le contenu en ligne à l'intérieur, en tant qu'enfant d'un [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Niché dans un autre [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

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

L’exemple de code suivant montre comment créer un contrôle de contenu de type case à cocher.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

L’exemple de code suivant montre comment créer un contrôle de contenu de type zone de texte enrichi.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

L’exemple de code suivant montre comment créer un contrôle de contenu de type zone de liste déroulante.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Comment mettre à jour les contrôles de contenu

Cette section explique comment mettre à jour les valeurs de SDT ou de contrôle de contenu par programmation

L'exemple de code suivant montre comment définir l'état actuel de la case à cocher:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

L'exemple de code suivant montre comment modifier les contrôles de contenu de type zone de texte brut, liste déroulante et image:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de ces exemples à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Liaison du contrôle de contenu à des parties XML personnalisées

Vous pouvez lier des contrôles de contenu avec des données XML (*partie XML personnalisée*) dans des documents Word.

L'exemple de code suivant montre comment lier le contrôle de contenu à des parties XML personnalisées:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping de la plage de balises de documents structurés

Vous pouvez obtenir le mappage de cette plage de balises de document structuré avec des données XML dans une partie XML personnalisée du document actuel à l'aide de la propriété [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/). Cependant, la méthode [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) peut être utilisée pour mapper une plage de balises de document structuré à des données XML.

L'exemple de code suivant montre comment définir le mappage XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Effacer le contenu d'un contrôle de contenu

Vous pouvez effacer le contenu d'un contrôle de contenu en affichant un espace réservé. La méthode [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) efface le contenu de cette balise de document structuré et affiche un espace réservé s'il est défini. Cependant, il n'est pas possible d'effacer le contenu d'un contrôle de contenu s'il comporte des révisions. Si un contrôle de contenu n'a pas d'espace réservé, cinq espaces sont insérés comme dans MS Word (sauf les sections répétitives, les éléments de section répétitifs, les groupes, les cases à cocher, les citations). Si un contrôle de contenu est mappé à du XML personnalisé, le nœud XML référencé est effacé.

L'exemple de code suivant montre comment effacer le contenu du contrôle de contenu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Modifier les couleurs d'arrière-plan et de bordure du contrôle de contenu

La propriété [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) vous permet d'obtenir ou de définir la couleur du contrôle de contenu. La couleur affecte le contrôle du contenu dans deux situations:

1. MS Word met en évidence l'arrière-plan du contrôle de contenu lorsque la souris se déplace sur le contrôle de contenu. Cela permet d'identifier le contrôle de contenu. La couleur de surbrillance est un peu plus "douce" que celle du *color*. Par exemple, MS Word met en évidence l'arrière-plan avec la couleur rose, alors que *color* est rouge.
2. Lorsque vous interagissez (édition, sélection, etc.) avec le contrôle de contenu, la bordure du contrôle de contenu est colorée avec le *color*.

L'exemple de code suivant montre comment modifier la couleur du contrôle de contenu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Comment définir le style pour formater le texte saisi dans le contrôle de contenu

Si vous souhaitez définir le style de contrôle de contenu, vous pouvez utiliser les propriétés [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) ou [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/). Lorsque vous tapez le texte dans le contrôle de contenu dans le document de sortie, le texte saisi aura le style "Citation".

{{% alert color="primary" %}}

Notez que seuls les styles Lié et Caractère peuvent être appliqués au contrôle de contenu. Une exception ("Impossible d'appliquer ce style au SDT") est levée lorsqu'un style qui existe mais qui n'est pas lié ou un style de caractère est appliqué.

{{% /alert %}}

L'exemple de code suivant montre comment définir le style du contrôle de contenu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Utilisation du contrôle de contenu de section répétitive

Le contrôle du contenu de la section répétitive permet de répéter le contenu qu'elle contient. À l'aide de Aspose.Words, les nœuds de balises de document structurés des types d'éléments de section répétitive et de section répétitive peuvent être créés et à cet effet, le type d'énumération [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) fournit une propriété [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item).

L'exemple de code suivant montre comment lier un contrôle de contenu de section répétitive à une table:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
