---
title: Travailler avec Hyperliens dans Java
second_title: Aspose.Words pour Java
articleTitle: Ajouter ou modifier des hyperliens
linktitle: Ajouter ou modifier des hyperliens
description: "Comment ajouter un hyperlien à votre document en utilisant Java."
type: docs
weight: 50
url: /fr/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Un hyperlien dans Microsoft Word les documents sont les `HYPERLINK` sur le terrain. En Aspose.Words, les hyperliens sont implémentés par l'intermédiaire [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) En cours.

## Insérer un hyperlien

Utiliser [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) méthode pour insérer un hyperlien dans le document. Cette méthode accepte trois paramètres:

1. Texte du lien à afficher dans le document
2. Lien destination (URL ou nom d'un signet dans le document)
3. Paramètre booléen qui devrait être true si les `URL` est un nom d'un signet dans un document

Les **InsertHyperlink** méthode ajoute toujours apostrophes au début et à la fin de l'URL

{{% alert color="primary" %}}

Notez que vous devez spécifier le formatage de police pour l'affichage du texte de l'hyperlien explicitement en utilisant le `Font` propriété.

{{% /alert %}}

L'exemple de code suivant montre comment insérer un hyperlien dans un document en utilisant [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Remplacer ou modifier les hyperliens

Hyperlien Microsoft Word les documents sont un champ. Un champ dans un document Word, comme nous l'avons dit plus tôt, est une structure complexe composée de nœuds multiples qui incluent le début du champ, le code de champ, le séparateur de champ, le résultat du champ et la fin du champ. Les champs peuvent être imbriqués, contenir du contenu riche et couvrir plusieurs paragraphes ou sections dans un document.

Pour remplacer ou modifier les hyperliens, il est nécessaire de trouver les hyperliens dans le document et de remplacer soit leur texte, URL, ou les deux.

L'exemple de code suivant montre comment trouver tous les hyperliens dans le document Word et modifie leur `URL` et afficher le nom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
