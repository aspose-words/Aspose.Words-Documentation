---
title: Suivre les changements dans un document Java
second_title: Aspose.Words pour Java
articleTitle: Suivre les changements dans un document
linktitle: Suivre les changements dans un document
description: "Suivez les modifications apportées au contenu et au formatage par vous ou par d'autres. Accédez à des révisions individuelles dans un document et appliquez-leur diverses propriétés en utilisant Java."
type: docs
weight: 270
url: /fr/java/track-changes-in-a-document/
---

La fonctionnalité des changements de piste, aussi appelée révision, vous permet de suivre les changements de contenu et de formatage effectués par vous ou d'autres utilisateurs. Cette piste change la fonctionnalité avec Aspose.Words prend en charge les changements de suivi dans Microsoft Word. Avec cette fonctionnalité, vous pouvez accéder à des révisions individuelles dans votre document et leur appliquer différentes propriétés.

Lorsque vous activez la fonction de changement de piste, tous les éléments insérés, supprimés et modifiés du document seront mis en évidence visuellement avec des informations sur qui, quand et ce qui a été modifié. Les objets qui transportent des informations sur ce qui a été modifié s'appellent les changements de suivi. Par exemple, supposons que vous voulez examiner un document et apporter des changements importants – cela peut signifier que vous devez faire des révisions. De plus, vous devrez peut-être insérer des commentaires pour discuter de certains changements. C'est là qu'intervient le suivi des changements dans les documents.

Cet article explique comment gérer et suivre les changements créés par de nombreux évaluateurs sur le même document, ainsi que les propriétés pour suivre les changements.

{{% alert color="primary" %}}

Notez que la fonction commentaire dans Aspose.Words, ainsi que dans Microsoft Word, peut être associé à des changements de suivi. Cependant, rappelez-vous que les commentaires sont totalement indépendants du suivi des changements.

{{% /alert %}}

## Ce qui est une révision

Avant de plonger dans les révisions, laissez-nous expliquer le sens des révisions. A [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) est un changement qui se produit dans un noeud d'un document pendant qu'un groupe de révision, représenté par le [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) classe, est un groupe de révisions séquentielles qui se produisent dans de nombreux nœuds d'un document. La révision est un outil de suivi des changements.

Les révisions sont utilisées dans la fonction de suivi des changements et dans la fonction de comparaison des documents, où les révisions apparaissent à la suite de la comparaison. Ainsi, les révisions dans la fonction de suivi des changements montrent par qui et ce qui a été changé.

{{% alert color="primary" %}}

Notez que Microsoft Word ne vous permet pas de voir des révisions individuelles, il vous permet seulement de voir des révisions séquentielles comme une seule entité. Mais Aspose.Words résout cette limitation avec **RevisionGroup** En cours.

{{% /alert %}}

Aspose.Words prend en charge différents types de révision, ainsi que dans Microsoft Word, comme Insertion, Suppression, Format Changement, définition de style Changement et déménagement. Tous les types de révision sont représentés avec [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) Énumération.

{{% alert color="primary" %}}

Il est à noter que les révisions ont un résultat similaire à celui de la Microsoft Word mais Aspose.Words ne détecte pas le formatage pendant le suivi des changements.

{{% /alert %}}

## Démarrer et arrêter le suivi des changements

Modifier un document ne compte généralement pas comme une révision avant de commencer à le suivre. Aspose.Words vous permet de suivre automatiquement toutes les modifications de votre document avec des étapes simples. Vous pouvez facilement démarrer le processus de suivi des changements en utilisant le [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) méthode. Si vous devez arrêter le processus de suivi des modifications afin que toute modification future ne soit pas considérée comme une révision, vous devrez utiliser le [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) méthode.

{{% alert color="primary" %}}

Noter que `StartTrackingRevisions` méthode ne modifie pas le statut de la [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) propriété et n'utilise pas sa valeur pour le suivi des révisions. De plus, si un noeud a été déplacé d'un endroit à un autre à l'intérieur du document suivi, des révisions de déplacement seront créées, y compris le déplacement et le déplacement vers la portée.

{{% /alert %}}

À la fin du processus de suivi des changements dans votre document, vous aurez même la possibilité d'accepter toutes les révisions ou de les rejeter pour retourner le document à sa forme originale. On peut y parvenir en utilisant [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) ou [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) méthode. En outre, vous pouvez accepter ou rejeter chaque révision séparément en utilisant la [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) ou [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) méthode.

Tous les changements seront suivis pour une itération du moment où vous commencez le processus au moment où vous l'arrêtez. La connexion entre différentes itérations est représentée comme le scénario suivant: vous terminez le processus de suivi, puis faites quelques changements, et commencez à suivre les changements à nouveau. Avec ce scénario, tous les changements que vous n'avez pas acceptés ou rejetés seront affichés à nouveau.

{{% alert color="primary" %}}

Noter que `AcceptAllRevisions` méthode est similaire à l'Accepter tous les changements Microsoft Word.

{{% /alert %}}

L'exemple de code suivant montre comment effectuer le suivi des changements:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

L'exemple de code suivant montre comment des révisions sont générées lorsqu'un noeud est déplacé dans un document suivi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Gérer et stocker les modifications comme révisions

Avec la fonction de suivi précédente, vous pouvez comprendre quelles modifications ont été apportées dans votre document et qui ont fait ces modifications. Avec [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) fonctionnalité, vous forcez tout changement dans votre document à être stocké comme révisions.

Aspose.Words vous permet de vérifier si un document a une révision ou non en utilisant [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) propriété. Si vous n'avez pas besoin de suivre automatiquement les modifications de votre document à travers les méthodes StartTrackRevisions et StopTrackRevisions, alors vous pouvez utiliser le `TrackRevisions` propriété pour vérifier si les modifications sont suivies lors de l'édition d'un document dans Microsoft Word et stocké comme révisions.

Les `TrackRevisions` fonctionnalité fait des révisions au lieu de réel DOM changements. Mais les révisions elles-mêmes sont séparées. Par exemple, Si vous supprimez un paragraphe, Aspose.Words faire comme une révision, la marquer comme suppression, au lieu de la supprimer.

En outre, Aspose.Words vous permet de vérifier si un objet a été inséré, supprimé ou modifié formatage en utilisant le [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), et [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) propriétés.

{{% alert color="primary" %}}

A noter qu'il n'y a pas de lien entre les révisions elles-mêmes et le `TrackRevisions` propriété. De plus, vous pouvez accepter/rejeter des révisions quelle que soit la fonction de suivi.

{{% /alert %}}

L'exemple de code suivant montre comment appliquer différentes propriétés avec des révisions:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
