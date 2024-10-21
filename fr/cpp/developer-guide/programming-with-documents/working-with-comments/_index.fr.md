---
title: Travailler avec des commentaires en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec des commentaires
linktitle: Travailler avec des commentaires
description: "Travailler avec des commentaires en utilisant C++."
type: docs
weight: 260
url: /fr/cpp/working-with-comments/
---

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Gratuit en ligne supprimer les annotations](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permet aux utilisateurs de travailler avec des commentaires – les commentaires d'un document dans Aspose.Words sont représentés par la classe [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/). Utilisez également les classes [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) et [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/) pour spécifier la région de texte qui doit être associée à un commentaire.

## Ajouter un Commentaire

Aspose.Words vous permet d'ajouter des commentaires de plusieurs manières:

1. Utilisation de la classe [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)
2. Utilisation des classes [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) et [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

L'exemple de code suivant montre comment ajouter un commentaire à un paragraphe à l'aide de la classe **Comment**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

L'exemple de code suivant montre comment ajouter un commentaire à un paragraphe en utilisant une région de texte et les classes **CommentRangeStart** et **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## Extraire ou Supprimer des Commentaires

L'utilisation de commentaires dans un document Word (en plus du suivi des modifications) est une pratique courante lors de la révision de documents, en particulier lorsqu'il y a plusieurs réviseurs. Il peut y avoir des situations où la seule chose dont vous avez besoin d'un document est les commentaires. Supposons que vous souhaitiez générer une liste des résultats de l'examen, ou peut-être que vous avez rassemblé toutes les informations utiles du document et que vous souhaitez simplement supprimer les commentaires inutiles. Vous souhaiterez peut-être afficher ou supprimer les commentaires d'un réviseur particulier.

Dans cet exemple, nous allons examiner quelques méthodes simples pour collecter des informations à partir des commentaires d'un document et pour supprimer des commentaires d'un document. Plus précisément, nous expliquerons comment:

- Extraire tous les commentaires d'un document ou seulement ceux d'un auteur particulier.
- Supprimez tous les commentaires d'un document ou uniquement d'un auteur particulier.

### Comment extraire ou Supprimer des Commentaires

Le code de cet exemple est en fait assez simple et toutes les méthodes sont basées sur la même approche. Un commentaire dans un document Word est représenté par un objet [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) dans le modèle d'objet de document Aspose.Words. Pour collecter tous les commentaires dans un document, utilisez la méthode [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) avec le premier paramètre défini sur [NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/). Assurez-vous que le deuxième paramètre de la méthode **GetChildNodes** est défini sur true: cela force **GetChildNodes** à sélectionner récursivement parmi tous les nœuds enfants, plutôt que de ne collecter que les enfants immédiats.

Pour illustrer comment extraire et supprimer des commentaires d'un document, nous allons suivre les étapes suivantes:

1. Ouvrez un document Word à l'aide de la classe [Document](https://reference.aspose.com/words/cpp/aspose.words/document/)
1. Obtenir tous les commentaires du document dans une collection
1. Pour extraire des commentaires:
   1. Parcourez la collection en utilisant l'opérateur foreach
   1. Extraire et répertorier le nom de l'auteur, la date et l'heure et le texte de tous les commentaires
   1. Extraire et répertorier le nom de l'auteur, la date et l'heure et le texte des commentaires écrits par un auteur spécifique, dans ce cas, l'auteur " ks’
1. Pour supprimer des commentaires:
   1. Revenez en arrière dans la collection en utilisant l'opérateur pour l'opérateur
   1. Supprimer des commentaires
1. Enregistrez les modifications

### Comment extraire Tous les Commentaires

La méthode **GetChildNodes** est très utile et vous pouvez l'utiliser chaque fois que vous avez besoin d'obtenir une liste de nœuds de document de tout type. La collection résultante ne crée pas de surcharge immédiate car les nœuds sont sélectionnés dans cette collection uniquement lorsque vous énumérez ou accédez à des éléments qu'elle contient.

L'exemple de code suivant montre comment extraire le nom de l'auteur, la date et l'heure et le texte de tous les commentaires du document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### Comment extraire les Commentaires d'un Auteur spécifié

Une fois que vous avez sélectionné des nœuds de commentaires dans une collection, tout ce que vous avez à faire est d'extraire les informations dont vous avez besoin. Dans cet exemple, les initiales de l'auteur, la date, l'heure et le texte brut du commentaire sont combinés en une seule chaîne; vous pouvez choisir de le stocker d'une autre manière à la place.

La méthode surchargée qui extrait les commentaires d'un auteur particulier est presque la même, elle vérifie simplement le nom de l'auteur avant d'ajouter les informations dans le tableau.

L'exemple de code suivant montre comment extraire le nom de l'auteur, la date et l'heure et le texte des commentaires de l'auteur spécifié:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### Comment supprimer des Commentaires

Si vous supprimez tous les commentaires, il n'est pas nécessaire de parcourir la collection en supprimant les commentaires un par un; vous pouvez les supprimer en appelant `NodeCollection.Clear` sur la collection de commentaires.

L'exemple de code suivant montre comment supprimer tous les commentaires dans le document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

Lorsque vous devez supprimer sélectivement des commentaires, le processus devient plus similaire au code que nous avons utilisé pour l'extraction des commentaires.

L'exemple de code suivant montre comment supprimer les commentaires de l'auteur spécifié:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

Le point principal à souligner ici est l'utilisation de l'opérateur for. Contrairement à la simple extraction, ici vous souhaitez supprimer un commentaire. Une astuce appropriée consiste à itérer la collection en arrière du dernier commentaire au premier. La raison en est que si vous commencez par la fin et revenez en arrière, l'index des éléments précédents reste inchangé et vous pouvez revenir au premier élément de la collection.

L'exemple de code suivant montre les méthodes d'extraction et de suppression des commentaires:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Comment supprimer un commentaire entre CommentRangeStart et CommentRangeEnd

En utilisant Aspose.Words, vous pouvez également supprimer les commentaires entre les nœuds **CommentRangeStart** et **CommentRangeEnd**.

L'exemple de code suivant montre comment supprimer du texte entre **CommentRangeStart** et **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## Ajouter et Supprimer la réponse du Commentaire

La méthode [AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/) ajoute une réponse à ce commentaire. Veuillez noter qu'en raison des limitations existantes de Microsoft Office, seul le niveau 1 de réponses est autorisé dans le document. Une exception de type *InvalidOperationException* sera levée si cette méthode est appelée sur le commentaire de réponse existant.

Vous pouvez utiliser la méthode [RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/) pour supprimer la réponse spécifiée à ce commentaire.

L'exemple de code suivant montre comment ajouter une réponse au commentaire et supprimer la réponse du commentaire:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## Lire la Réponse du Commentaire

La propriété [Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/) renvoie une collection des objets **Comment** qui sont des enfants immédiats du commentaire spécifié.

L'exemple de code suivant montre comment parcourir les réponses d'un commentaire et les résoudre:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}