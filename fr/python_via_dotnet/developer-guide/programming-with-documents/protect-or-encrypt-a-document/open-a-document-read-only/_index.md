---
title: Ouvrir un document en lecture seule dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Ouvrir un document en lecture seule
linktitle: Ouvrir un document en lecture seule
description: "Rendez votre document en lecture seule afin que le contenu puisse être copié ou lu, mais pas modifié à l'aide de Python."
type: docs
weight: 10
url: /fr/python-net/open-a-document-read-only/
---

Parfois, vous pouvez avoir un document qui nécessite une révision, mais vous ne souhaitez pas que les réviseurs modifient votre contenu de manière aléatoire. Aspose.Words vous permet de donner l'autorisation de votre document en lecture seule afin que le contenu puisse être copié ou lu, mais pas modifié. Cela empêchera que du contenu soit supprimé ou ajouté à votre document.

{{% alert color="primary" %}}

L'application de l'option de lecture seule à votre document n'empêche pas quelqu'un d'en créer une nouvelle copie et de l'enregistrer sous un autre nom.

{{% /alert %}}

Cet article explique comment rendre un document en lecture seule.

## Rendre un document en lecture seule

Aspose.Words possède la classe publique [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) qui spécifie les paramètres de protection en écriture pour un document. Vous ne créez pas directement des instances de cette classe.

La protection en écriture indique si l'auteur a recommandé d'ouvrir un document en lecture seule et/ou d'exiger un mot de passe pour modifier le document.

Aspose.Words vous permet de créer un document en lecture seule pour restreindre les modifications en utilisant la propriété [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) et la méthode [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

Dans Microsoft Word, vous pouvez créer un document en lecture seule de la même manière en utilisant les deux:

* "Toujours ouvrir en lecture seule" (Fichier → Info → Protéger le document)
* "Mot de passe à modifier" (Enregistrer sous → Outils → Options générales → Mot de passe)

{{% /alert %}}

{{% alert color="primary" %}}

Les utilisateurs peuvent également restreindre l'édition de documents en sélectionnant [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) comme [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), mais il s'agit d'une autre fonctionnalité qui offre des capacités de protection plus avancées. Il existe une telle fonction en Microsoft Word, respectivement, elle est implémentée en Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) sera décrit en détail dans l'un des articles suivants – "Restreindre l'édition de documents".

{{% /alert %}}

La propriété [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) est sécurisée par mot de passe, donc si vous ne définissez pas de mot de passe avant d'appliquer la propriété [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/), les autres utilisateurs peuvent simplement ouvrir le document comme s'il n'était pas protégé. Vous accédez aux paramètres de protection des documents et définissez un mot de passe de protection en écriture via la méthode [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

Notez que le mot de passe défini n'est qu'une propriété d'un document qui peut être supprimée en cas d'accès aux propriétés du document. Par conséquent, un tel mot de passe ne constitue pas une garantie de la sécurité du document.

{{% /alert %}}

Si vous devez vérifier si un document dispose d'un mot de passe de protection en écriture qui l'empêche de le modifier, vous pouvez utiliser la propriété [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/).

L'exemple de code suivant montre comment rendre un document en lecture seule:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Supprimer la restriction de lecture seule

Si vous ne souhaitez pas qu'un utilisateur ouvre votre document en lecture seule, vous pouvez simplement définir la propriété [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) sur `False` ou sélectionner [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) comme [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

L'exemple de code suivant montre comment supprimer l'accès en lecture seule à un document:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
