---
title: Utilisation des hyperliens dans Java
second_title: Aspose.Words pour Java
articleTitle: Ajouter ou Modifier des hyperliens
linktitle: Ajouter ou Modifier des hyperliens
description: "Comment ajouter un lien hypertexte dans votre document en utilisant Java."
type: docs
weight: 50
url: /fr/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Un lien hypertexte dans Microsoft Word documents est le champ `HYPERLINK`. Dans Aspose.Words, les hyperliens sont implémentés via la classe [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/).

## Insérer un Lien Hypertexte

Utilisez la méthode [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) pour insérer un lien hypertexte dans le document. Cette méthode accepte trois paramètres:

1. Texte du lien à afficher dans le document
2. Destination du lien (URL ou le nom d'un signet à l'intérieur du document)
3. Paramètre booléen qui doit être vrai si `URL` est le nom d'un signet dans un document

La méthode **InsertHyperlink** ajoute toujours des apostrophes au début et à la fin du URL.

{{% alert color="primary" %}}

Notez que vous devez spécifier explicitement la mise en forme de la police pour le texte d'affichage du lien hypertexte à l'aide de la propriété `Font`.

{{% /alert %}}

L'exemple de code suivant montre comment insérer un lien hypertexte dans un document à l'aide de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Remplacer ou Modifier des hyperliens

Le lien hypertexte dans Microsoft Word documents est un champ. Un champ dans un document Word, comme nous l'avons dit précédemment, est une structure complexe composée de plusieurs nœuds qui incluent le début du champ, le code du champ, le séparateur de champ, le résultat du champ et la fin du champ. Les champs peuvent être imbriqués, contenir un contenu riche et s'étendre sur plusieurs paragraphes ou sections d'un document.

Pour remplacer ou modifier des hyperliens, il est nécessaire de rechercher les hyperliens dans le document et de remplacer soit leur texte, URLs, soit les deux.

L'exemple de code suivant montre comment rechercher tous les liens hypertexte dans un document Word et modifier leur `URL` et leur nom d'affichage:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
