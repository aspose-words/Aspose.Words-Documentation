---
title: Travailler avec Content Control SDT
second_title: Aspose.Words pour C++
articleTitle: Travailler avec Content Control SDT
linktitle: Travailler avec Content Control SDT
type: docs
description: "Gestion avancée du contenu des documents, comment créer et manipuler des contrôles de contenu (Balises de document structurées) à l'aide de C++."
weight: 390
url: /fr/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

Dans Microsoft Word, vous pouvez créer un formulaire en commençant par un modèle et en ajoutant des contrôles de contenu, notamment des cases à cocher, des zones de texte, des sélecteurs de date et des listes déroulantes. Dans Aspose.Words, une balise de document structuré ou un contrôle de contenu de tout document chargé dans Aspose.Words est importé en tant que nœud StructuredDocumentTag. Les balises de document structurées (SDT ou content control) permettent d'intégrer la sémantique définie par le client ainsi que son comportement et son apparence dans un document. StructuredDocumentTag peut apparaître dans un document aux endroits suivants:

- Niveau bloc - Parmi les paragraphes et les tableaux, en tant qu'enfant d'un Corps, HeaderFooter, d'un Commentaire, d'une note de bas de page ou d'un nœud de forme
- Niveau de ligne-Parmi les lignes d'une table, en tant qu'enfant d'un nœud de table
- Niveau cellule-Parmi les cellules d'une ligne de tableau, en tant qu'enfant d'un nœud de ligne
- Inline-level-Parmi le contenu en ligne à l'intérieur, en tant qu'enfant d'un paragraphe
- Imbriqué dans un autre StructuredDocumentTag

## Comment définir le Style pour Formater le Texte saisi dans le Contrôle de contenu

Si vous souhaitez définir le style de contrôle du contenu, vous pouvez utiliser les propriétés `StructuredDocumentTag.Style` ou `StructuredDocumentTag.StyleName`. Lorsque vous tapez le texte dans le contrôle de contenu dans le document de sortie, le texte tapé aura le style "Citation".

{{% alert color="primary" %}}

Notez que seuls les styles Liés et de caractère peuvent être appliqués au contrôle du contenu. Un InvalidOperationException ("Impossible d'appliquer ce style au SDT") est lancé lorsqu'un style qui existe mais n'est pas lié ou qu'un style de caractère est appliqué.

{{% /alert %}}

L'exemple de code suivant montre comment définir le style de contrôle du contenu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Utilisation du Contrôle du contenu des Sections répétitives

Le contrôle de contenu de section répétitif permet de répéter le contenu qu'il contient. En utilisant Aspose.Words, les nœuds de balises de document structuré des types d'éléments de section répétitive et de section répétitive peuvent être créés et à cette fin, le type d'énumération SdtType fournit la propriété **RepeatingSectionItem**.

L'exemple de code suivant montre comment lier un contrôle de contenu de section répétitif à une table:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
