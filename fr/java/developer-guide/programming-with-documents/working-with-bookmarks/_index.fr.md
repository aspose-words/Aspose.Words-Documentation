---
title: Utilisation des signets dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des signets
linktitle: Travailler avec des signets
description: "Comprendre les concepts de signets et comment les signets peuvent être utilisés dans votre programme en utilisant Java."
type: docs
weight: 180
url: /fr/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Les signets identifient dans un document Microsoft Word les emplacements ou fragments que vous nommez et identifiez pour référence ultérieure. Par exemple, vous pouvez utiliser un signet pour identifier le texte que vous souhaitez réviser ultérieurement. Au lieu de faire défiler le document pour localiser le texte, vous pouvez y accéder à l'aide de la boîte de dialogue Signet.

Avec Aspose.Words, vous pouvez utiliser des signets dans des rapports ou des documents pour insérer des données dans le signet ou appliquer une mise en forme spéciale à son contenu. Vous pouvez également utiliser des signets pour récupérer du texte à partir d'un certain emplacement dans votre document.

Les actions qui peuvent être effectuées avec des signets en utilisant Aspose.Words sont les mêmes que celles que vous pouvez effectuer en utilisant Microsoft Word. Vous pouvez insérer un nouveau signet, supprimer, déplacer vers un signet, obtenir ou définir un nom de signet, obtenir ou définir le texte qui y est inclus.

## Insérer un Signet

Utilisez [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) et [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) pour créer un signet en marquant son début et sa fin, respectivement. N'oubliez pas de passer le même nom de signet aux deux méthodes. Les signets d'un document peuvent se chevaucher et s'étendre sur n'importe quelle plage. Les signets mal formés ou les signets avec des noms en double seront ignorés lors de l'enregistrement du document.

{{% alert color="primary" %}}

Tous les espaces blancs dans les signets ont été remplacés par des traits de soulignement. Cette restriction provient des formats MS Mots, car les signets dans les formats MS Mots, comme DOCX ou DOC, ne peuvent pas comporter d'espaces blancs. Cependant, PDF autorise de tels signets. Alors maintenant, si vous devez utiliser des signets dans les contours PDF, XPS ou SWF, vous pouvez les utiliser avec des espaces blancs.

{{% /alert %}}

L'exemple de code suivant montre comment créer un nouveau signet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Obtenir des Signets

Parfois, il est nécessaire d'obtenir une collection de signets pour parcourir les signets ou à d'autres fins. Utilisez la propriété **Node.getRange** exposée par tout nœud de document qui renvoie un objet **Range** représentant la partie du document contenue dans ce nœud. Utilisez cet objet pour récupérer un **BookmarkCollection**, puis utilisez l'indexeur de collection pour obtenir un signet spécifique.

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple des exemples suivants à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

L'exemple de code suivant montre comment obtenir des signets à partir d'une collection de signets:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

L'exemple de code suivant montre comment obtenir ou définir un nom et un texte de signet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

L'exemple de code suivant montre comment ajouter un signet à un tableau:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Si vous remplacez le nom d'un signet par un nom qui existe déjà dans le document, aucune erreur ne sera générée et seul le premier signet sera stocké lors de l'enregistrement du document.

Notez que certains signets dans le document sont affectés à des champs de formulaire. Passer à un tel signet et y insérer du texte insère le texte dans le code du champ de formulaire. Bien que cela n'invalide pas le champ de formulaire, le texte inséré ne sera pas visible car il fait partie du code du champ.

L'exemple de code suivant montre comment accéder aux colonnes de la table marquée d'un signet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Déplacer vers un signet

Si vous devez insérer du contenu enrichi (pas seulement du texte brut) dans un signet, vous devez utiliser [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) pour déplacer le curseur vers le signet, puis utiliser **DocumentBuilder** méthodes et propriétés pour insérer du contenu.

## Afficher Masquer le Contenu des Signets

Le signet entier (*including the bookmarked content*) peut être encapsulé dans la partie vraie du champ `IF` en utilisant Aspose.Words. Cela peut être de telle sorte que le champ `IF` contienne un champ de fusion imbriqué dans l'expression (*Left of Operator*) et en fonction de la valeur du champ de fusion, le champ `IF` affiche ou masque le contenu du signet dans le document Word.

L'exemple de code suivant montre comment afficher/ masquer les signets.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
