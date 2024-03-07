---
title: Travailler avec des hyperliens dans C#
second_title: Aspose.Words pour .NET
articleTitle: Ajouter ou modifier des hyperliens
linktitle: Ajouter ou modifier des hyperliens
description: "Comment ajouter un lien hypertexte dans votre document dans C# à l'aide de Aspose.Words pour .NET."
type: docs
weight: 50
url: /fr/net/working-with-hyperlinks/
---

Un lien hypertexte dans les documents Microsoft Word est le champ `HYPERLINK`. En Aspose.Words, les hyperliens sont implémentés via la classe [FieldHyperlink](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldhyperlink/).

## Insérer un lien hypertexte

Utilisez la méthode [InsertHyperlink](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/inserthyperlink/) pour insérer un lien hypertexte dans le document. Cette méthode accepte trois paramètres:

1. Texte du lien à afficher dans le document
2. Destination du lien (URL ou nom d'un signet à l'intérieur du document)
3. Paramètre booléen qui doit être true si le `URL` est le nom d'un signet dans un document

La méthode **InsertHyperlink** ajoute toujours des apostrophes au début et à la fin de l'URL

{{% alert color="primary" %}}

Notez que vous devez spécifier explicitement le formatage de la police pour le texte affiché du lien hypertexte à l’aide de la propriété `Font`.

{{% /alert %}}

L'exemple de code suivant montre comment insérer un lien hypertexte dans un document à l'aide de [DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Remplacer ou modifier les hyperliens

Le lien hypertexte dans les documents Microsoft Word est un champ. Un champ dans un document Word, comme nous l'avons dit précédemment, est une structure complexe composée de plusieurs nœuds qui incluent le début du champ, le code du champ, le séparateur de champ, le résultat du champ et la fin du champ. Les champs peuvent être imbriqués, contenir un contenu riche et s'étendre sur plusieurs paragraphes ou sections d'un document.

Pour remplacer ou modifier des hyperliens, il est nécessaire de rechercher les hyperliens dans le document et de remplacer soit leur texte, soit leurs URL, soit les deux.

L'exemple de code suivant montre comment rechercher tous les hyperliens dans un document Word et modifier leur `URL` et leur nom d'affichage:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
