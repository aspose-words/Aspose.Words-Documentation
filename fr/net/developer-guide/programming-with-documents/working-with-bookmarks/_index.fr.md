---
title: Travailler avec des signets dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des signets
linktitle: Travailler avec des signets
description: "Comprendre les concepts des signets et comment les signets peuvent être utilisés dans votre programme à l'aide de C#."
type: docs
weight: 180
url: /fr/net/working-with-bookmarks/
---

Les signets identifient dans un document Microsoft Word les emplacements ou fragments que vous nommez et identifiez pour référence future. Par exemple, vous pouvez utiliser un signet pour identifier le texte que vous souhaitez réviser ultérieurement. Au lieu de faire défiler le document pour localiser le texte, vous pouvez y accéder en utilisant la boîte de dialogue Signet.

Les actions pouvant être effectuées avec les signets à l'aide de Aspose.Words sont les mêmes que celles que vous pouvez effectuer à l'aide de Microsoft Word. Vous pouvez insérer un nouveau signet, supprimer, déplacer vers un signet, obtenir ou définir un nom de signet, obtenir ou définir le texte qu'il contient.

## Insérer un signet

Utilisez [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) et [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/) pour créer un signet en marquant respectivement son début et sa fin. N'oubliez pas de transmettre le même nom de signet aux deux méthodes. Les signets d’un document peuvent se chevaucher et s’étendre sur n’importe quelle plage. Les signets mal formés ou les signets avec des noms en double seront ignorés lors de l'enregistrement du document.

{{% alert color="primary" %}}

Tous les espaces blancs dans les signets ont été remplacés par des traits de soulignement. Cette restriction provenait des formats Microsoft Word, puisque les signets dans les formats Word comme DOCX ou DOC ne peuvent pas avoir d'espaces blancs. Cependant, le PDF autorise de tels signets. Alors maintenant, si vous devez utiliser des signets dans des plans PDF ou XPS, vous pouvez les utiliser avec des espaces blancs.

{{% /alert %}}

L'exemple de code suivant montre comment créer un nouveau signet:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Obtenir des signets

Parfois, il est nécessaire d'obtenir une collection de signets pour parcourir les signets ou à d'autres fins. Utilisez la propriété [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) exposée par n'importe quel nœud de document qui renvoie un objet [Range](https://reference.aspose.com/words/net/aspose.words/range/) représentant la partie du document contenue dans ce nœud. Utilisez cet objet pour récupérer un [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/), puis utilisez l'indexeur de collection pour obtenir un signet spécifique.

L'exemple de code suivant montre comment obtenir des signets à partir d'une collection de signets:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}


L'exemple de code suivant montre comment obtenir ou définir un nom et un texte de signet:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

L'exemple de code suivant montre comment ajouter une table à vos favoris:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Si vous remplacez le nom d'un signet par un nom qui existe déjà dans le document, aucune erreur ne sera générée et seul le premier signet sera stocké lorsque vous enregistrerez le document.

Notez que certains signets du document sont affectés à des champs de formulaire. Passer à un tel signet et y insérer du texte insère le texte dans le code du champ du formulaire. Bien que cela n'invalide pas le champ du formulaire, le texte inséré ne sera pas visible car il fait partie du code du champ.

L'exemple de code suivant montre comment accéder aux colonnes de la table marquée de favoris:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Déplacer vers un signet

Si vous devez insérer du contenu riche (pas seulement du texte brut) dans un signet, vous devez utiliser [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/) pour déplacer le curseur vers le signet, puis utiliser les méthodes et propriétés [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) pour insérer du contenu.

## Afficher Masquer le contenu des favoris

L'intégralité du signet (*y compris le contenu mis en signet*) peut être encapsulée dans la partie Vrai du champ `IF` à l'aide de Aspose.Words. Il peut en être ainsi que le champ `IF` contienne un champ de fusion imbriqué dans l'expression (*À gauche de l'opérateur*) et en fonction de la valeur du champ de fusion, le champ `IF` affiche ou masque le contenu du signet dans le document Word.

L'exemple de code suivant montre comment afficher/masquer les favoris:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
