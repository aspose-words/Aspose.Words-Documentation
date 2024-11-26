---
title: Ouvrir un document en lecture seule dans Java
second_title: Aspose.Words pour Java
articleTitle: Ouvrir un Document en lecture seule
linktitle: Ouvrir un Document en lecture seule
description: "Rendez votre document en lecture seule afin que le contenu puisse être copié ou lu, mais pas modifié à l'aide de Java."
type: docs
weight: 10
url: /fr/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous pouvez avoir un document qui nécessite une révision, mais vous ne voulez pas que les réviseurs modifient votre contenu de manière aléatoire. Aspose.Words vous permet de rendre l'autorisation de votre document en lecture seule afin que le contenu puisse être copié ou lu, mais pas modifié. Cela empêchera le contenu d'être supprimé ou ajouté à votre document.

{{% alert color="primary" %}}

L'application de l'option en lecture seule à votre document n'empêche pas quelqu'un d'en créer une nouvelle copie et de l'enregistrer sous un autre nom.

{{% /alert %}}

Cet article explique comment rendre un document en lecture seule.

## Rendre un document en lecture seule

Aspose.Words a la classe publique [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) qui spécifie les paramètres de protection en écriture pour un document. Vous ne créez pas d'instances de cette classe directement.

La protection en écriture indique si l'auteur a recommandé d'ouvrir un document en lecture seule et / ou d'exiger un mot de passe pour modifier le document.

Aspose.Words vous permet de rendre un document en lecture seule pour restreindre l'édition en utilisant la propriété [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) et la méthode [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String).

{{% alert color="primary" %}}

Dans Microsoft Word, vous pouvez créer un document en lecture seule de la même manière en utilisant les deux:

* "Toujours Ouvrir en lecture seule "(Fichier → Info → Protéger le document)
* "Mot de passe à modifier "(Enregistrer sous → Outils → Options générales → Mot de passe)

{{% /alert %}}

{{% alert color="primary" %}}

Les utilisateurs peuvent également restreindre la modification des documents en sélectionnant [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) comme **ReadOnly**, mais il s'agit d'une autre fonctionnalité qui offre des capacités de protection plus avancées. Il y a une telle fonction dans Microsoft Word, respectivement, elle est implémentée dans Aspose.Words.

**ProtectionType**

{{% /alert %}}

La propriété **ReadOnlyRecommended** est sécurisée par mot de passe, donc si vous ne définissez pas de mot de passe avant d'appliquer la propriété **ReadOnlyRecommended**, les autres utilisateurs peuvent simplement ouvrir le document comme s'il n'était pas protégé. Vous accédez aux paramètres de protection des documents et définissez un mot de passe de protection en écriture via la méthode **SetPassword**.

{{% alert color="primary" %}}

Notez que le mot de passe défini n'est qu'une propriété dans un document qui peut être supprimée si les propriétés du document sont accédées. En conséquence, un tel mot de passe n'est pas une garantie de la sécurité du document.

{{% /alert %}}

Si vous devez vérifier si un document a un mot de passe de protection en écriture qui l'empêche de modifier, vous pouvez utiliser la propriété [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected).

L'exemple de code suivant montre comment rendre un document en lecture seule:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Supprimer la Restriction en Lecture seule

Si vous ne souhaitez pas qu'un utilisateur ouvre votre document en lecture seule, vous pouvez simplement définir la propriété **ReadOnlyRecommened** sur *false* ou sélectionner **ProtectionType** sur **NoProtection**.

L'exemple de code suivant montre comment supprimer l'accès en lecture seule pour un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
