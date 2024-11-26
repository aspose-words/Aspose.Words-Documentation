---
title: Travailler avec des hyperliens en C++
second_title: Aspose.Words pour C++
articleTitle: Ajouter ou Modifier des hyperliens
linktitle: Ajouter ou Modifier des hyperliens
description: "Comment ajouter un lien hypertexte dans votre document en utilisant Aspose.Words pour C++."
type: docs
weight: 180
url: /fr/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Un lien hypertexte dans les documents Microsoft Word est le champ `HYPERLINK`. Dans Aspose.Words, les hyperliens sont implémentés via la classe [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## Insertion d'un Lien hypertexte

Utilisez la méthode [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) pour insérer un lien hypertexte dans le document. Cette méthode accepte trois paramètres:

1. Texte du lien à afficher dans le document
2. Destination du lien (URL ou nom d'un signet à l'intérieur du document)
3. Paramètre booléen qui doit être vrai si `URL` est le nom d'un signet à l'intérieur du document

La méthode **InsertHyperlink** ajoute toujours des apostrophes au début et à la fin de l'URL.

{{% alert color="primary" %}}

Notez que vous devez spécifier explicitement la mise en forme de la police pour le texte d'affichage du lien hypertexte à l'aide de la propriété `Font`.

{{% /alert %}}

L'exemple de code suivant montre comment insérer un lien hypertexte dans un document à l'aide de [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Remplacer ou Modifier des hyperliens

Le lien hypertexte dans les documents Microsoft Word est un champ. Un champ dans un document Word est une structure complexe composée de plusieurs nœuds qui incluent le début du champ, le code du champ, le séparateur de champ, le résultat du champ et la fin du champ. Les champs peuvent être imbriqués, contenir un contenu riche et s'étendre sur plusieurs paragraphes ou sections d'un document.

La classe `FieldHyperlink` implémente le champ `HYPERLINK`.

L'exemple de code suivant montre comment rechercher tous les liens hypertexte dans un document Word et modifier leur `URL` et leur nom d'affichage:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
