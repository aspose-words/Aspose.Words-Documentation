---
title: Travailler avec les signets dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les signets
linktitle: Travailler avec les signets
description: "Comprendre les concepts de signets et comment utiliser le signets dans votre programme Java."
type: docs
weight: 180
url: /fr/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Les signets identifient dans un Microsoft Word documentez les emplacements ou fragments que vous nommez et identifiez pour référence future. Par exemple, vous pouvez utiliser un signet pour identifier le texte que vous souhaitez réviser plus tard. Au lieu de défiler dans le document pour localiser le texte, vous pouvez y aller en utilisant la boîte de dialogue Signet.

Avec Aspose.Words, vous pouvez utiliser des signets dans des rapports ou des documents pour insérer certaines données dans le signet ou appliquer un formatage spécial à son contenu. Vous pouvez également utiliser des signets pour récupérer du texte depuis un certain emplacement dans votre document.

Les actions qui peuvent être effectuées avec des signets en utilisant Aspose.Words sont les mêmes que ceux que vous pouvez effectuer en utilisant Microsoft Word. Vous pouvez insérer un nouveau signet, supprimer, déplacer vers un signet, obtenir ou définir un nom de signet, obtenir ou définir le texte qui y est joint.

## Insérer un signet

Utilisation [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) et [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) pour créer un signet en marquant son début et sa fin, respectivement. N'oubliez pas de transmettre le même nom de signet aux deux méthodes. Les signets d'un document peuvent se chevaucher et s'étendre sur n'importe quelle plage. Les signets mal formés ou les signets avec des noms dupliqués seront ignorés lors de la sauvegarde du document.

{{% alert color="primary" %}}

Tous les espaces blancs des signets ont été remplacés par des accents. Cette restriction provient des formats MS Word, puisque les signets dans les formats MS Word, comme DOCX ou DOC, ne peuvent pas avoir d'espaces blancs. Cependant, PDF permet ces signets. Donc maintenant, si vous devez utiliser des signets en PDF, XPS ou SWF contours, vous pouvez les utiliser avec des espaces blancs.

{{% /alert %}}

L'exemple de code suivant montre comment créer un nouveau signet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Obtenir des signets

Parfois, il est nécessaire d'obtenir une collection de signets pour l'itérer par des signets ou à d'autres fins. Utiliser **Node.getRange** les biens exposés par tout noeud de document qui retourne une **Range** objet représentant la partie du document contenue dans ce nœud. Utilisez cet objet pour récupérer un **BookmarkCollection** puis utilisez l'indexeur de collection pour obtenir un signet spécifique.

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple des exemples suivants: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

L'exemple de code suivant montre comment obtenir des signets d'une collection de signets:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

L'exemple de code suivant montre comment obtenir ou définir un nom de signet et un texte:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

L'exemple de code suivant montre comment marquer un tableau:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Si vous changez le nom d'un signet en un nom qui existe déjà dans le document, aucune erreur ne sera générée et seul le premier signet sera enregistré lors de l'enregistrement du document.

Notez que certains signets dans le document sont assignés à des champs de formulaire. Le passage à un tel signet et l'insertion de texte y insèrent le texte dans le code de champ du formulaire. Bien que cela n'invalide pas le champ de formulaire, le texte inséré ne sera pas visible parce qu'il devient partie intégrante du code de champ.

L'exemple de code suivant montre comment accéder aux colonnes de la table bookmarked:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Déplacer vers un signet

Si vous avez besoin d'insérer du contenu riche (pas seulement du texte simple) dans un signet, vous devez utiliser [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) pour déplacer le curseur vers le signet puis utiliser **DocumentBuilder** méthodes et propriétés pour insérer du contenu.

## Afficher le contenu des signets

Tout le signet (*y compris le contenu de signet*) peut être encapsulé dans la partie véritable de la `IF` champ en utilisant Aspose.Words. Cela peut être de telle sorte que les `IF` champ contient un champ de fusion imbriqué dans l'expression (*Left of Operator*) et selon la valeur de champ de fusion, le `IF` champ affiche ou masque le contenu de Signet dans Word Document.

L'exemple de code suivant montre comment afficher/ masquer les signets.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
