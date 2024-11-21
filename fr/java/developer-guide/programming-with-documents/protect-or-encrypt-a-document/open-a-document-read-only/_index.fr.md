---
title: Ouvrir un document en lecture seule Java
second_title: Aspose.Words pour Java
articleTitle: Ouvrir un document en lecture seule
linktitle: Ouvrir un document en lecture seule
description: "Faites votre document en lecture seule afin que le contenu puisse être copié ou lu, mais pas modifié en utilisant Java."
type: docs
weight: 10
url: /fr/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous pouvez avoir un document qui a besoin d'un examen, mais vous ne voulez pas que les évaluateurs modifient votre contenu au hasard. Aspose.Words vous permet de faire la permission de votre document en lecture seule afin que le contenu puisse être copié ou lu, mais pas modifié. Cela empêchera que le contenu soit supprimé ou ajouté à votre document.

{{% alert color="primary" %}}

L'application de l'option en lecture seule à votre document n'empêche pas quelqu'un de créer une nouvelle copie et de la sauvegarder avec un autre nom.

{{% /alert %}}

Cet article explique comment faire un document en lecture seule.

## Faire un document en lecture seule

Aspose.Words a la classe publique [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) qui spécifie les paramètres de protection d'écriture pour un document. Vous ne créez pas des instances de cette classe directement.

La protection écrite indique si l'auteur a recommandé l'ouverture d'un document en lecture seule et/ou l'exigence d'un mot de passe pour modifier le document.

Aspose.Words vous permet de faire un document en lecture seule pour restreindre l'édition en utilisant [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) propriété et [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) méthode.

{{% alert color="primary" %}}

En Microsoft Word, Vous pouvez créer un document Read-Only de la même façon en utilisant les deux:

* (Fichier → Info → Protégez le document)
* "Mot de passe à modifier" (Enregistrer sous → Outils → Options générales → Mot de passe)

{{% /alert %}}

{{% alert color="primary" %}}

Les utilisateurs peuvent également restreindre l'édition de documents en sélectionnant [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) comme **ReadOnly**, mais c'est une autre caractéristique qui fournit des capacités de protection plus avancées. Il y a une telle fonction dans Microsoft Word, respectivement, elle est mise en œuvre Aspose.Words.

**ProtectionType** sera décrit en détail dans l'un des articles suivants – -Restrict Document Editing.

{{% /alert %}}

Les **ReadOnlyRecommended** propriété est sécurisé par mot de passe, donc si vous ne définissez pas un mot de passe avant d'appliquer le **ReadOnlyRecommended** propriété, alors d'autres utilisateurs peuvent simplement ouvrir le document comme s'il n'était pas protégé. Vous accédez aux paramètres de protection des documents et définissez un mot de passe de protection par écrit **SetPassword** méthode.

{{% alert color="primary" %}}

Notez que le mot de passe défini n'est qu'une propriété dans un document qui peut être supprimé si les propriétés du document sont accessibles. Par conséquent, un tel mot de passe n'est pas une garantie de la sécurité du document.

{{% /alert %}}

Si vous devez vérifier si un document a un mot de passe de protection d'écriture qui le restreint de l'édition, vous pouvez utiliser le [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) propriété.

L'exemple de code suivant montre comment faire un document en lecture seule:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Supprimer les restrictions en lecture seule

Si vous ne voulez pas qu'un utilisateur ouvre votre document en lecture seule, vous pouvez simplement **ReadOnlyRecommened** propriété *false* ou sélectionner **ProtectionType** comme **NoProtection**.

L'exemple de code suivant montre comment supprimer l'accès en lecture seule pour un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
