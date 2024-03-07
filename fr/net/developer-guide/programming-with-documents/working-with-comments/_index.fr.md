---
title: Travailler avec des commentaires dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des commentaires
linktitle: Travailler avec des commentaires
description: "Travailler avec des commentaires en utilisant C#."
type: docs
weight: 260
url: /fr/net/working-with-comments/
---

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Supprimer les annotations en ligne gratuitement](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permet aux utilisateurs de travailler avec des commentaires – les commentaires dans un document Aspose.Words sont représentés par la classe [Comment](https://reference.aspose.com/words/fr/net/aspose.words/comment/). Utilisez également les classes [CommentRangeStart](https://reference.aspose.com/words/fr/net/aspose.words/commentrangestart/) et [CommentRangeEnd](https://reference.aspose.com/words/fr/net/aspose.words/commentrangeend/) pour spécifier la zone de texte qui doit être associée à un commentaire.

## Ajouter un commentaire

Aspose.Words vous permet d'ajouter des commentaires de plusieurs manières:

1. Utilisation de la classe [Comment](https://reference.aspose.com/words/fr/net/aspose.words/comment/)
2. Utilisation des classes [CommentRangeStart](https://reference.aspose.com/words/fr/net/aspose.words/commentrangestart/) et [CommentRangeEnd](https://reference.aspose.com/words/fr/net/aspose.words/commentrangeend/)

L'exemple de code suivant montre comment ajouter un commentaire à un paragraphe à l'aide de la classe **Comment**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

L'exemple de code suivant montre comment ajouter un commentaire à un paragraphe à l'aide d'une zone de texte et des classes **CommentRangeStart** et **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Extraire ou supprimer des commentaires

L'utilisation de commentaires dans un document Word (en plus du suivi des modifications) est une pratique courante lors de la révision de documents, en particulier lorsqu'il y a plusieurs réviseurs. Il peut y avoir des situations où la seule chose dont vous avez besoin dans un document, ce sont les commentaires. Supposons que vous souhaitiez générer une liste des résultats de l'examen, ou que vous ayez collecté toutes les informations utiles du document et que vous souhaitiez simplement supprimer les commentaires inutiles. Vous souhaiterez peut-être afficher ou supprimer les commentaires d'un évaluateur particulier.

Dans cet exemple, nous allons examiner quelques méthodes simples permettant à la fois de collecter des informations à partir des commentaires dans un document et de supprimer des commentaires d'un document. Plus précisément, nous expliquerons comment:

- Extraire tous les commentaires d'un document ou uniquement ceux faits par un auteur particulier
- Supprimer tous les commentaires d'un document ou uniquement d'un auteur en particulier

### Comment extraire ou supprimer des commentaires

Le code de cet exemple est en réalité assez simple et toutes les méthodes sont basées sur la même approche. Un commentaire dans un document Word est représenté par un objet [Comment](https://reference.aspose.com/words/fr/net/aspose.words/comment/) dans le modèle objet du document Aspose.Words. Pour collecter tous les commentaires d'un document, utilisez la méthode [GetChildNodes](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/getchildnodes/) avec le premier paramètre défini sur [NodeType.Comment](https://reference.aspose.com/words/fr/net/aspose.words/nodetype/). Assurez-vous que le deuxième paramètre de la méthode **GetChildNodes** est défini sur true: cela force le **GetChildNodes** à sélectionner récursivement parmi tous les nœuds enfants, plutôt que de collecter uniquement les enfants immédiats.

Pour illustrer comment extraire et supprimer des commentaires d'un document, nous passerons par les étapes suivantes:

1. Ouvrez un document Word à l'aide de la classe [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/)
2. Récupérez tous les commentaires du document dans une collection
3. Pour extraire des commentaires:
   1. Parcourez la collection à l'aide de l'opérateur foreach
   2. Extrayez et répertoriez le nom de l'auteur, la date, l'heure et le texte de tous les commentaires
   3. Extrayez et répertoriez le nom de l'auteur, la date, l'heure et le texte des commentaires rédigés par un auteur spécifique, dans ce cas l'auteur 'ks'
4. Pour supprimer des commentaires:
   1. Remontez la collection en utilisant l'opérateur for
   2. Supprimer les commentaires
5. Enregistrez les modifications

### Comment extraire tous les commentaires

La méthode **GetChildNodes** est très utile et vous pouvez l'utiliser chaque fois que vous avez besoin d'obtenir une liste de nœuds de document de tout type. La collection résultante ne crée pas de surcharge immédiate car les nœuds sont sélectionnés dans cette collection uniquement lorsque vous énumérez ou accédez aux éléments qu'elle contient.

L'exemple de code suivant montre comment extraire le nom de l'auteur, la date et l'heure et le texte de tous les commentaires du document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Comment extraire les commentaires d'un auteur spécifié

Après avoir sélectionné les nœuds **Comment** dans une collection, tout ce que vous avez à faire est d'extraire les informations dont vous avez besoin. Dans cet exemple, les initiales de l'auteur, la date, l'heure et le texte brut du commentaire sont combinés en une seule chaîne ; vous pouvez choisir de le stocker d’une autre manière.

La méthode surchargée qui extrait les commentaires d'un auteur particulier est presque la même, elle vérifie simplement le nom de l'auteur avant d'ajouter les informations dans le tableau.

L'exemple de code suivant montre comment extraire le nom de l'auteur, la date et l'heure et le texte des commentaires de l'auteur spécifié:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Comment supprimer des commentaires

Si vous supprimez tous les commentaires, il n'est pas nécessaire de parcourir la collection en supprimant les commentaires un par un. Vous pouvez les supprimer en appelant la méthode [Clear](https://reference.aspose.com/words/fr/net/aspose.words/nodecollection/clear/) sur la collection de commentaires.

L'exemple de code suivant montre comment supprimer tous les commentaires du document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Lorsque vous devez supprimer sélectivement des commentaires, le processus devient plus similaire au code que nous avons utilisé pour l'extraction des commentaires.

L'exemple de code suivant montre comment supprimer les commentaires de l'auteur spécifié:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Le point principal à souligner ici est l’utilisation de l’opérateur for. Contrairement à la simple extraction, vous souhaitez ici supprimer un commentaire. Une astuce appropriée consiste à parcourir la collection en arrière du dernier commentaire au premier. La raison en est que si vous commencez par la fin et reculez, l'index des éléments précédents reste inchangé et vous pouvez revenir au premier élément de la collection.

L'exemple de code suivant montre les méthodes d'extraction et de suppression des commentaires:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Comment supprimer un commentaire entre CommentRangeStart et CommentRangeEnd

En utilisant Aspose.Words, vous pouvez également supprimer les commentaires entre les nœuds **CommentRangeStart** et **CommentRangeEnd**.

L'exemple de code suivant montre comment supprimer du texte entre **CommentRangeStart** et **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Ajouter ou supprimer la réponse du commentaire

La méthode [AddReply](https://reference.aspose.com/words/fr/net/aspose.words/comment/addreply/) ajoute une réponse à ce commentaire. Veuillez noter qu'en raison des limitations existantes de Microsoft Office, un seul niveau de réponse est autorisé dans le document. Une exception de type *InvalidOperationException* sera levée si cette méthode est appelée sur le commentaire Reply existant.

Vous pouvez utiliser la méthode [RemoveReply](https://reference.aspose.com/words/fr/net/aspose.words/comment/removereply/) pour supprimer la réponse spécifiée à ce commentaire.

L'exemple de code suivant montre comment ajouter une réponse au commentaire et supprimer la réponse du commentaire:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Lire la réponse du commentaire

La propriété [Replies](https://reference.aspose.com/words/fr/net/aspose.words/comment/replies/) renvoie une collection d'objets [Comment](https://reference.aspose.com/words/fr/net/aspose.words/comment/) qui sont les enfants immédiats du commentaire spécifié.

L'exemple de code suivant montre comment parcourir les réponses d'un commentaire et les résoudre:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
