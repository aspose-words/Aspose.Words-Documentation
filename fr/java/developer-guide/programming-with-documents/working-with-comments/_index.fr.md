---
title: Travailler avec les commentaires Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les commentaires
linktitle: Travailler avec les commentaires
description: "Travailler avec les commentaires en utilisant Java."
type: docs
weight: 260
url: /fr/java/working-with-comments/
---

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Gratuit en ligne supprimer les annotations](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permet aux utilisateurs de travailler avec les commentaires – commentaires dans un document dans Aspose.Words sont représentés par les [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) En cours. Utilisez également la [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) et [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) les classes pour spécifier la région de texte qui devrait être associée à un commentaire.

## Ajouter un commentaire

Aspose.Words vous permet d'ajouter des commentaires de plusieurs façons:

1. Utilisation [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) classe
2. Utilisation [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) et [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) classes

L'exemple de code suivant montre comment ajouter un commentaire à un paragraphe **Comment** classe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

L'exemple de code suivant montre comment ajouter un commentaire à un paragraphe en utilisant une région de texte et le **CommentRangeStart** et **CommentRangeEnd** classes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Extraire ou supprimer les commentaires

L'utilisation de commentaires dans un document Word (en plus de suivre les changements) est une pratique courante lors de l'examen des documents, particulièrement lorsqu'il y a plusieurs évaluateurs. Il peut y avoir des situations où la seule chose dont vous avez besoin d'un document est les commentaires. Dites que vous voulez générer une liste des conclusions de l'examen, ou peut-être avez-vous recueilli toutes les informations utiles du document et vous voulez simplement supprimer les commentaires inutiles. Vous pouvez consulter ou supprimer les commentaires d'un examinateur particulier.

Dans cet échantillon, nous allons examiner certaines méthodes simples pour recueillir de l'information à partir des commentaires dans un document et pour retirer les commentaires d'un document. Plus précisément, nous aborderons comment:

- Extraire tous les commentaires d'un document ou seulement ceux d'un auteur particulier.
- Supprimer tous les commentaires d'un document ou seulement d'un auteur particulier.

### Comment extraire ou supprimer les commentaires

Le code de cet échantillon est assez simple et toutes les méthodes sont basées sur la même approche. Un commentaire dans un document Word est représenté par `Comment` objet dans le Aspose.Words modèle d'objet de document. Pour recueillir tous les commentaires d'un document, [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) méthode avec le premier paramètre défini à `NodeType.Comment`. Assurez-vous que le deuxième paramètre du **GetChildNodes** la méthode est définie à true: cela force les **GetChildNodes** choisir à partir de tous les nœuds d'enfant récursivement, plutôt que de recueillir uniquement les enfants immédiats.

Pour illustrer comment extraire et retirer les commentaires d'un document, nous passerons par les étapes suivantes:

1. Ouvrir un document Word en utilisant le [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe
1. Obtenez tous les commentaires du document dans une collection
1. Pour obtenir des commentaires:
   1. Passez par la collecte en utilisant le pour l'opérateur
   1. Extraire et lister le nom de l'auteur, la date et l'heure et le texte de tous les commentaires
   1. Extraire et lister le nom de l'auteur, la date et l'heure et le texte des commentaires écrits par un auteur spécifique, en l'occurrence l'auteur "ks"
1. Pour supprimer les commentaires:
   1. Retourne dans la collection en utilisant le pour l'opérateur
   1. Supprimer les commentaires
1. Enregistrer les changements.

Nous allons utiliser le document Word suivant pour cet exercice:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Comme vous pouvez le voir, il contient plusieurs commentaires de deux auteurs avec les initiales -pm et -ks.

### Comment extraire tous les commentaires

Les [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) méthode est très utile et vous pouvez l'utiliser à chaque fois que vous avez besoin d'obtenir une liste de nœuds de document de n'importe quel type. La collection résultante ne crée pas de frais généraux immédiats parce que les nœuds sont sélectionnés dans cette collection seulement lorsque vous énumérez ou y accédez des éléments.

L'exemple de code suivant montre comment extraire le nom de l'auteur, la date et l'heure et le texte de tous les commentaires dans le document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Comment extraire les commentaires d'un auteur spécifié

Une fois que vous avez sélectionné des nœuds Comment dans une collection, il suffit d'extraire les informations dont vous avez besoin. Dans cet échantillon, les initiales de l'auteur, la date, l'heure et le texte simple du commentaire sont combinés en une seule chaîne; vous pouvez choisir de le stocker d'une autre manière.

La méthode surchargée qui extrait les Commentaires d'un auteur particulier est presque la même, il suffit de vérifier le nom de l'auteur avant d'ajouter les informations dans le tableau.

L'exemple de code suivant montre comment extraire le nom de l'auteur, la date et l'heure et le texte des commentaires de l'auteur spécifié:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Comment supprimer les commentaires

Si vous supprimez tous les commentaires, il n'est pas nécessaire de passer par la collection en supprimant les commentaires un par un; vous pouvez les supprimer en appelant [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) sur la collecte des commentaires.

L'exemple de code suivant montre comment supprimer tous les commentaires dans le document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Lorsque vous devez supprimer sélectivement les commentaires, le processus devient plus similaire au code que nous avons utilisé pour l'extraction des commentaires.

L'exemple de code suivant montre comment supprimer les commentaires de l'auteur spécifié:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Le point principal à souligner ici est l'utilisation de l'opérateur. Contrairement à l'extraction simple, ici vous voulez supprimer un commentaire. Un truc approprié est d' itérer la collection à l'envers du dernier commentaire au premier. La raison de cela si vous commencez à partir de la fin et reculez, l'index des éléments précédents reste inchangé, et vous pouvez travailler votre chemin de retour au premier élément de la collection.

L'exemple de code suivant montre les méthodes d'extraction et de suppression des commentaires:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Lors du lancement, l'échantillon affiche les résultats suivants. Tout d'abord, il énumère tous les commentaires de tous les auteurs, puis il liste les commentaires de l'auteur sélectionné seulement. Enfin, le code supprime tous les commentaires.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

La sortie Word document a maintenant les commentaires supprimés de lui:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Comment supprimer le texte entre CommentRangeStart et CommentRangeEnd

Utilisation Aspose.Words Vous pouvez également supprimer les commentaires entre les nœuds CommentRangeStart et CommentRangeEnd.

L'exemple de code suivant montre comment supprimer le texte entre CommentRangeStart et CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Ajouter ou supprimer la réponse du commentaire

Les [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) méthode ajoute une réponse à ce commentaire. Veuillez noter qu'en raison des limites actuelles de l'Office des États membres, un seul (1) niveau de réponses est autorisé dans le document. Une exception de type InvalidOperationException sera soulevée si cette méthode est appelée sur le commentaire existant Répondre.

Vous pouvez utiliser le [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) méthode pour supprimer la réponse spécifiée à ce commentaire.

L'exemple de code suivant montre comment ajouter une réponse à un commentaire et supprimer la réponse d'un commentaire:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Lire la réponse du commentaire

Aspose.Words de lire la réponse d'un commentaire. Les [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) une collecte de biens [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) objets qui sont des enfants immédiats du commentaire spécifié.

L'exemple de code suivant montre comment itérer à travers les réponses d'un commentaire et les résoudre:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}