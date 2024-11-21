---
title: Travailler avec des commentaires dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des commentaires
linktitle: Travailler avec des commentaires
description: "Comment ajouter, supprimer ou manipuler des commentaires dans un document à l'aide de Python."
type: docs
weight: 260
url: /fr/python-net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Supprimer les annotations en ligne gratuitement](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permet aux utilisateurs de travailler avec des commentaires – les commentaires dans un document Aspose.Words sont représentés par la classe [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Utilisez également les classes [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) et [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) pour spécifier la zone de texte qui doit être associée à un commentaire.

## Ajouter un commentaire

Aspose.Words vous permet d'ajouter des commentaires de plusieurs manières:

1. Utilisation de la classe [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
2. Utilisation des classes [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) et [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)

L'exemple de code suivant montre comment ajouter un commentaire à un paragraphe à l'aide de la classe **Comment**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

L'exemple de code suivant montre comment ajouter un commentaire à un paragraphe à l'aide d'une zone de texte et des classes **CommentRangeStart** et **CommentRangeEnd**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Extraire ou supprimer des commentaires

L'utilisation de commentaires dans un document Word (en plus du suivi des modifications) est une pratique courante lors de la révision de documents, en particulier lorsqu'il y a plusieurs réviseurs. Il peut y avoir des situations où la seule chose dont vous avez besoin dans un document, ce sont les commentaires. Supposons que vous souhaitiez générer une liste des résultats de l'examen, ou que vous ayez collecté toutes les informations utiles du document et que vous souhaitiez simplement supprimer les commentaires inutiles. Vous souhaiterez peut-être afficher ou supprimer les commentaires d'un évaluateur particulier.

Dans cet exemple, nous allons examiner quelques méthodes simples permettant à la fois de collecter des informations à partir des commentaires dans un document et de supprimer des commentaires d'un document. Plus précisément, nous expliquerons comment:

- Extraire tous les commentaires d'un document ou uniquement ceux formulés par un auteur particulier.
- Supprimer tous les commentaires d'un document ou uniquement d'un auteur en particulier.

### Comment extraire ou supprimer des commentaires

Le code de cet exemple est en réalité assez simple et toutes les méthodes sont basées sur la même approche. Un commentaire dans un document Word est représenté par un objet [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) dans le modèle objet du document Aspose.Words. Pour collecter tous les commentaires d'un document, utilisez la méthode [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) avec le premier paramètre défini sur [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). Assurez-vous que le deuxième paramètre de la méthode **get_child_nodes** est défini sur true: cela force le **get_child_nodes** à sélectionner récursivement parmi tous les nœuds enfants, plutôt que de collecter uniquement les enfants immédiats.

Pour illustrer comment extraire et supprimer des commentaires d'un document, nous passerons par les étapes suivantes:

1. Ouvrez un document Word à l'aide de la classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)
1. Récupérez tous les commentaires du document dans une collection
1. Pour extraire des commentaires:
   1. Parcourez la collection à l'aide de l'opérateur foreach
   1. Extrayez et répertoriez le nom de l'auteur, la date, l'heure et le texte de tous les commentaires
   1. Extrayez et répertoriez le nom de l'auteur, la date, l'heure et le texte des commentaires rédigés par un auteur spécifique, dans ce cas l'auteur 'ks'
1. Pour supprimer des commentaires:
   1. Remontez la collection en utilisant l'opérateur for
   1. Supprimer les commentaires
1. Enregistrez les modifications

### Comment extraire tous les commentaires

La méthode [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) est très utile et vous pouvez l'utiliser chaque fois que vous avez besoin d'obtenir une liste de nœuds de document de tout type. La collection résultante ne crée pas de surcharge immédiate car les nœuds sont sélectionnés dans cette collection uniquement lorsque vous énumérez ou accédez aux éléments qu'elle contient.

L'exemple de code suivant montre comment extraire le nom de l'auteur, la date et l'heure et le texte de tous les commentaires du document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### Comment extraire les commentaires d'un auteur spécifié

Après avoir sélectionné les nœuds [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) dans une collection, tout ce que vous avez à faire est d'extraire les informations dont vous avez besoin. Dans cet exemple, les initiales de l'auteur, la date, l'heure et le texte brut du commentaire sont combinés en une seule chaîne ; vous pouvez choisir de le stocker d’une autre manière.

La méthode surchargée qui extrait les commentaires d'un auteur particulier est presque la même, elle vérifie simplement le nom de l'auteur avant d'ajouter les informations dans le tableau.

L'exemple de code suivant montre comment extraire le nom de l'auteur, la date et l'heure et le texte des commentaires de l'auteur spécifié:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### Comment supprimer des commentaires

Si vous supprimez tous les commentaires, il n'est pas nécessaire de parcourir la collection en supprimant les commentaires un par un ; vous pouvez les supprimer en appelant [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) sur la collection de commentaires.

L'exemple de code suivant montre comment supprimer tous les commentaires du document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

Lorsque vous devez supprimer sélectivement des commentaires, le processus devient plus similaire au code que nous avons utilisé pour l'extraction des commentaires.

L'exemple de code suivant montre comment supprimer les commentaires de l'auteur spécifié:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

Le point principal à souligner ici est l’utilisation de l’opérateur for. Contrairement à la simple extraction, vous souhaitez ici supprimer un commentaire. Une astuce appropriée consiste à parcourir la collection en arrière du dernier [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) au premier. La raison en est que si vous commencez par la fin et reculez, l'index des éléments précédents reste inchangé et vous pouvez revenir au premier élément de la collection.

L'exemple de code suivant montre les méthodes d'extraction et de suppression des commentaires:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Comment supprimer un commentaire entre CommentRangeStart et CommentRangeEnd

En utilisant Aspose.Words, vous pouvez également supprimer les commentaires entre les nœuds **CommentRangeStart** et **CommentRangeEnd**.

L'exemple de code suivant montre comment supprimer du texte entre **CommentRangeStart** et **CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## Ajouter ou supprimer la réponse du commentaire

La méthode [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) ajoute une réponse à ce commentaire. Veuillez noter qu'en raison des limitations existantes de Microsoft Office, un seul niveau de réponse est autorisé dans le document. Une exception de type **InvalidOperationException** sera levée si cette méthode est appelée sur le commentaire Reply existant.

Vous pouvez utiliser la méthode [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) pour supprimer la réponse spécifiée à ce commentaire.

L'exemple de code suivant montre comment ajouter une réponse au commentaire et supprimer la réponse du commentaire:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Lire la réponse du commentaire

La propriété [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) renvoie une collection d'objets [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) qui sont les enfants immédiats du commentaire spécifié.

L'exemple de code suivant montre comment parcourir les réponses d'un commentaire et les résoudre:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}
