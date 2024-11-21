---
title: Ouvrir un document en lecture seule dans C#
second_title: Aspose.Words pour .NET
articleTitle: Ouvrir un document en lecture seule
linktitle: Ouvrir un document en lecture seule
description: "Rendez votre document en lecture seule afin que le contenu puisse être copié ou lu, mais pas modifié à l'aide de C#."
type: docs
weight: 10
url: /fr/net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous pouvez avoir un document qui nécessite une révision, mais vous ne souhaitez pas que les réviseurs modifient votre contenu de manière aléatoire. Aspose.Words vous permet de donner l'autorisation de votre document en lecture seule afin que le contenu puisse être copié ou lu, mais pas modifié. Cela empêchera que du contenu soit supprimé ou ajouté à votre document.

{{% alert color="primary" %}}

L'application de l'option de lecture seule à votre document n'empêche pas quelqu'un d'en créer une nouvelle copie et de l'enregistrer sous un autre nom.

{{% /alert %}}

Cet article explique comment rendre un document en lecture seule.

## Rendre un document en lecture seule

Aspose.Words possède la classe publique [WriteProtection](https://reference.aspose.com/words/fr/net/aspose.words.settings/writeprotection/) qui spécifie les paramètres de protection en écriture pour un document. Vous ne créez pas directement des instances de cette classe.

La protection en écriture indique si l'auteur a recommandé d'ouvrir un document en lecture seule et/ou d'exiger un mot de passe pour modifier le document.

Aspose.Words vous permet de créer un document en lecture seule pour restreindre les modifications en utilisant la propriété [ReadOnlyRecommended](https://reference.aspose.com/words/fr/net/aspose.words.settings/writeprotection/readonlyrecommended/) et la méthode [SetPassword](https://reference.aspose.com/words/fr/net/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

Dans Microsoft Word, vous pouvez créer un document en lecture seule de la même manière en utilisant les deux:

* "Toujours ouvrir en lecture seule" (Fichier → Informations → Protéger le document)
* "Mot de passe à modifier" (Enregistrer sous → Outils → Options générales → Mot de passe)

{{% /alert %}}

{{% alert color="primary" %}}

Les utilisateurs peuvent également restreindre l'édition de documents en sélectionnant [ProtectionType](https://reference.aspose.com/words/fr/net/aspose.words/protectiontype/) comme **ReadOnly**, mais il s'agit d'une autre fonctionnalité qui offre des capacités de protection plus avancées. Il existe une telle fonction en Microsoft Word, respectivement, elle est implémentée en Aspose.Words.

**ProtectionType** sera décrit en détail dans l'un des articles suivants – "Restreindre l'édition de documents".

{{% /alert %}}

La propriété **ReadOnlyRecommended** est sécurisée par mot de passe, donc si vous ne définissez pas de mot de passe avant d'appliquer la propriété **ReadOnlyRecommended**, les autres utilisateurs peuvent simplement ouvrir le document comme s'il n'était pas protégé. Vous accédez aux paramètres de protection des documents et définissez un mot de passe de protection en écriture via la méthode **SetPassword**.

{{% alert color="primary" %}}

Notez que le mot de passe défini n'est qu'une propriété d'un document qui peut être supprimée en cas d'accès aux propriétés du document. Par conséquent, un tel mot de passe ne constitue pas une garantie de la sécurité du document.

{{% /alert %}}

Si vous devez vérifier si un document dispose d'un mot de passe de protection en écriture qui l'empêche de le modifier, vous pouvez utiliser la propriété [IsWriteProtected](https://reference.aspose.com/words/fr/net/aspose.words.settings/writeprotection/iswriteprotected/).

L'exemple de code suivant montre comment rendre un document en lecture seule:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Supprimer la restriction de lecture seule

Si vous ne souhaitez pas qu'un utilisateur ouvre votre document en lecture seule, vous pouvez simplement définir la propriété **ReadOnlyRecommened** sur *false* ou sélectionner **ProtectionType** comme **NoProtection**.

L'exemple de code suivant montre comment supprimer l'accès en lecture seule à un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
