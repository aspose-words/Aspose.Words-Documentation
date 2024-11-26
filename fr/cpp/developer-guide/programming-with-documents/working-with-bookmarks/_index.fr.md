---
title: Travailler avec des signets en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec des signets
linktitle: Travailler avec des signets
description: "Comprendre les concepts de signets et comment les signets peuvent être utilisés dans votre programme en utilisant C++."
type: docs
weight: 180
url: /fr/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Les signets identifient dans un document Microsoft Word les emplacements ou fragments que vous nommez et identifiez pour référence ultérieure. Par exemple, vous pouvez utiliser un signet pour identifier le texte que vous souhaitez réviser ultérieurement. Au lieu de faire défiler le document pour localiser le texte, vous pouvez y accéder à l'aide de la boîte de dialogue Signet.

Les actions qui peuvent être effectuées avec des signets à l'aide de Aspose.Words sont les mêmes que celles que vous pouvez effectuer à l'aide de Microsoft Word. Vous pouvez insérer un nouveau signet, supprimer, déplacer vers un signet, obtenir ou définir un nom de signet, obtenir ou définir le texte qui y est inclus. Avec Aspose.Words, vous pouvez également utiliser des signets dans des rapports ou des documents pour insérer des données dans le signet ou appliquer une mise en forme spéciale à son contenu. Vous pouvez également utiliser des signets pour récupérer du texte à partir d'un certain emplacement dans votre document.

## Insérer un Signet

Utilisez [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) et [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) pour créer un signet en marquant son début et sa fin, respectivement. N'oubliez pas de passer le même nom de signet aux deux méthodes. Les signets d'un document peuvent se chevaucher et s'étendre sur n'importe quelle plage. Les signets mal formés ou les signets avec des noms en double seront ignorés lors de l'enregistrement du document.

L'exemple de code suivant montre comment créer un nouveau signet:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Obtenir des Signets

Parfois, il est nécessaire d'obtenir une collection de signets pour parcourir les signets ou à d'autres fins. Utilisez la propriété [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) exposée par tout nœud de document qui renvoie un objet [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) représentant la partie du document contenue dans ce nœud. Utilisez cet objet pour récupérer un [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/), puis utilisez l'indexeur de collection pour obtenir un signet spécifique.

L'exemple de code suivant montre comment obtenir des signets à partir d'une collection de signets:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

L'exemple de code suivant montre comment obtenir ou définir un nom et un texte de signet:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

L'exemple de code suivant montre comment ajouter un signet à un tableau:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Si vous remplacez le nom d'un signet par un nom qui existe déjà dans le document, aucune erreur ne sera générée et seul le premier signet sera stocké lors de l'enregistrement du document.

{{% alert color="primary" %}}

Notez que certains signets dans le document sont affectés à des champs de formulaire. Passer à un tel signet et y insérer du texte insère le texte dans le code du champ de formulaire. Bien que cela n'invalide pas le champ de formulaire, le texte inséré ne sera pas visible car il fait partie du code du champ.

{{% /alert %}}

## Déplacer vers un signet

Si vous devez insérer du contenu enrichi (pas seulement du texte brut) dans un signet, vous devez utiliser [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) pour déplacer le curseur vers le signet, puis utiliser les méthodes et propriétés [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) pour insérer du contenu.

## Afficher Masquer le Contenu des Signets

Le signet entier (*including the bookmarked content*) peut être encapsulé dans la partie vraie du champ `IF` en utilisant Aspose.Words. Cela peut être de telle sorte que le champ `IF` contienne un champ de fusion imbriqué dans l'expression (*Left of Operator*) et en fonction de la valeur du champ de fusion, le champ `IF` affiche ou masque le contenu du signet dans le document Word.

L'exemple de code suivant montre comment afficher/ masquer les signets:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
