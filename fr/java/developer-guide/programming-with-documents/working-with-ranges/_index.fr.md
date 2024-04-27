---
title: Travailler avec Ranges en Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des gammes
linktitle: Travailler avec des gammes
description: "Introduction à la fonction Range dans Aspose.Words pour Java."
type: docs
weight: 130
url: /fr/java/working-with-ranges/
---

{{% alert color="primary" %}}

En Aspose.Words, a Gamme est une fenêtre plate d'un autre type d'arbre du document.

{{% /alert %}}

Si vous avez travaillé avec Microsoft Word Automatisation, vous savez probablement que l'un des principaux outils pour examiner et modifier le contenu de document est `Range` objet. La plage est comme une "fenêtre" dans le contenu du document et le formatage.

Aspose.Words a également [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) et il est conçu pour regarder et agir de la même façon **Range** en Microsoft Word. Bien que **Range** ne peut couvrir une partie arbitraire d'un document et n'a pas de **Start** et **End**, vous pouvez accéder à la gamme couverte par n'importe quel noeud de document, y compris le [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) lui-même. En d'autres termes, chaque noeud a sa propre portée. Les **Range** objet vous permet d'accéder et de modifier le texte, les signets et les champs de formulaire dans la plage.

## Récupération d'un texte clair

Utiliser [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) propriété pour récupérer le texte non formaté de la plage.

L'exemple de code suivant montre comment obtenir un texte simple et non formaté d'une plage:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Supprimer le texte

Les `Range` class permet la suppression de tous les caractères de la plage en appelant [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

L'exemple de code suivant montre comment supprimer tous les caractères d'une plage:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 