---
title: Suivre les modifications dans un document dans C#
second_title: Aspose.Words pour .NET
articleTitle: Suivre les modifications dans un document
linktitle: Suivre les modifications dans un document
description: "Suivez les modifications apportées au contenu et au formatage effectuées par vous ou par d'autres personnes à l'aide de C#. Accédez aux révisions individuelles d’un document et appliquez-leur diverses propriétés."
type: docs
weight: 270
url: /fr/net/track-changes-in-a-document/
---

La fonctionnalité de suivi des modifications, également appelée révision, vous permet de suivre les modifications apportées au contenu et au formatage effectuées par vous ou d'autres utilisateurs. Cette fonctionnalité de suivi des modifications avec Aspose.Words prend en charge le suivi des modifications dans Microsoft Word. Avec cette fonctionnalité, vous pouvez accéder aux révisions individuelles de votre document et leur appliquer différentes propriétés.

Lorsque vous activez la fonction de suivi des modifications, tous les éléments insérés, supprimés et modifiés du document seront visuellement mis en évidence avec des informations sur par qui, quand et ce qui a été modifié. Les objets qui contiennent des informations sur ce qui a été modifié sont appelés "suivi des modifications". Par exemple, supposons que vous souhaitiez réviser un document et apporter des modifications importantes – cela peut signifier que vous devez apporter des révisions. Vous devrez peut-être également insérer des commentaires pour discuter de certains changements. C'est là qu'intervient le suivi des modifications apportées aux documents.

Cet article explique comment gérer et suivre les modifications créées par de nombreux réviseurs sur le même document, ainsi que les propriétés de suivi des modifications.

{{% alert color="primary" %}}

Notez que la fonctionnalité de commentaire dans Aspose.Words, ainsi que dans Microsoft Word, peut être associée au suivi des modifications. Cependant, rappelez-vous que les commentaires sont totalement indépendants du suivi des modifications.

{{% /alert %}}

## Qu'est-ce qu'une révision

Avant de plonger dans les révisions, expliquons la signification des révisions. Un [revision](https://reference.aspose.com/words/fr/net/aspose.words/revision/) est une modification qui se produit dans un nœud d'un document tandis qu'un groupe de révisions, représenté par la classe [RevisionGroup](https://reference.aspose.com/words/fr/net/aspose.words/revision/group/), est un groupe de révisions séquentielles qui se produisent dans plusieurs nœuds d'un document. Fondamentalement, la révision est un outil de suivi des modifications.

Les révisions sont utilisées dans la fonctionnalité de suivi des modifications et dans la fonctionnalité de comparaison de documents, où les révisions apparaissent à la suite d'une comparaison. Ainsi, les révisions au sein de la fonctionnalité de suivi des modifications montrent par qui et ce qui a été modifié.

{{% alert color="primary" %}}

Notez que Microsoft Word ne vous permet pas d'afficher les révisions individuelles, il vous permet uniquement d'afficher les révisions séquentielles comme une seule entité. Mais Aspose.Words résout cette limitation avec la classe **RevisionGroup**.

{{% /alert %}}

Aspose.Words prend en charge différents types de révision, ainsi qu'en Microsoft Word, tels que l'insertion, la suppression, le changement de format, le changement de style et le déplacement. Tous les types de révision sont représentés par l'énumération [RevisionType](https://reference.aspose.com/words/fr/net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Notez que les révisions ont un résultat similaire à Microsoft Word mais Aspose.Words ne détecte pas le formatage lors du suivi des modifications.

{{% /alert %}}

## Démarrer et arrêter le suivi des modifications

La modification d'un document ne compte généralement pas comme une révision jusqu'à ce que vous commenciez à en suivre le suivi. Aspose.Words vous permet de suivre automatiquement toutes les modifications apportées à votre document en quelques étapes simples. Vous pouvez facilement démarrer le processus de suivi des modifications en utilisant la méthode [StartTrackRevisions](https://reference.aspose.com/words/fr/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/). Si vous devez arrêter le processus de suivi des modifications afin que les modifications futures ne soient pas considérées comme des révisions, vous devrez utiliser la méthode [StopTrackRevisions](https://reference.aspose.com/words/fr/net/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Notez que la méthode `StartTrackingRevisions` ne modifie pas le statut de la propriété [TrackRevisions](https://reference.aspose.com/words/fr/net/aspose.words/document/trackrevisions/) et n'utilise pas sa valeur à des fins de suivi des révisions. De plus, si un nœud a été déplacé d'un emplacement à un autre dans le document suivi, des révisions de déplacement seront créées, y compris la plage de déplacement depuis et vers.

{{% /alert %}}

À la fin du processus de suivi des modifications dans votre document, vous aurez même la possibilité d'accepter toutes les révisions ou de les rejeter pour rétablir le document dans sa forme originale. Ceci peut être réalisé en utilisant la méthode [AcceptAllRevisions](https://reference.aspose.com/words/fr/net/aspose.words/document/acceptallrevisions/) ou [RejectAll](https://reference.aspose.com/words/fr/net/aspose.words/revisioncollection/rejectall/). De plus, vous pouvez accepter ou rejeter chaque révision séparément en utilisant la méthode [Accept](https://reference.aspose.com/words/fr/net/aspose.words/revision/accept/) ou [Reject](https://reference.aspose.com/words/fr/net/aspose.words/revision/reject/).

Toutes les modifications seront suivies pendant une itération à partir du moment où vous démarrez le processus jusqu'au moment où vous l'arrêtez. La connexion entre les différentes itérations est représentée comme le scénario suivant: vous terminez le processus de suivi, puis apportez quelques modifications et recommencez le suivi des modifications. Avec ce scénario, toutes les modifications que vous n'avez pas acceptées ou refusées seront à nouveau affichées.

{{% alert color="primary" %}}

Notez que la méthode `AcceptAllRevisions` est similaire à "Accepter toutes les modifications" dans Microsoft Word.

{{% /alert %}}

L'exemple de code suivant montre comment utiliser le suivi des modifications:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

L'exemple de code suivant montre comment les révisions sont générées lorsqu'un nœud est déplacé dans un document suivi:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## Gérer et stocker les modifications en tant que révisions

Avec la fonctionnalité de suivi des modifications précédente, vous pouvez comprendre quelles modifications ont été apportées à votre document et qui a effectué ces modifications. Avec la fonctionnalité [TrackRevisions](https://reference.aspose.com/words/fr/net/aspose.words/document/trackrevisions/), vous forcez le stockage de toutes les modifications apportées à votre document en tant que révisions.

Aspose.Words vous permet de vérifier si un document a une révision ou non en utilisant la propriété [HasRevision](https://reference.aspose.com/words/fr/net/aspose.words/document/hasrevisions/). Si vous n'avez pas besoin de suivre automatiquement les modifications dans votre document via les méthodes StartTrackRevisions et StopTrackRevisions, vous pouvez utiliser la propriété `TrackRevisions` pour vérifier si les modifications sont suivies lors de la modification d'un document au format Microsoft Word et stockées en tant que révisions.

La fonctionnalité `TrackRevisions` effectue des révisions au lieu de véritables modifications DOM. Mais les révisions elles-mêmes sont distinctes. Par exemple, si vous supprimez un paragraphe, Aspose.Words en fait une révision, le marquant comme suppression, au lieu de le supprimer.

De plus, Aspose.Words vous permet de vérifier si un objet a été inséré, supprimé ou modifié au formatage à l'aide des propriétés [IsDeleteRevision](https://reference.aspose.com/words/fr/net/aspose.words/inline/isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/fr/net/aspose.words/inline/isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/fr/net/aspose.words/inline/isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/fr/net/aspose.words/inline/ismovefromrevision/) et [IsMoveToRevision](https://reference.aspose.com/words/fr/net/aspose.words/inline/ismovetorevision/).

{{% alert color="primary" %}}

Notez qu'il n'y a aucun lien entre les révisions elles-mêmes et la propriété `TrackRevisions`. De plus, vous pouvez accepter/rejeter les révisions quelle que soit la fonction de suivi des modifications.

{{% /alert %}}

L'exemple de code suivant montre comment appliquer différentes propriétés avec des révisions:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
