---
title: Insérer Checkboxes, Saisie de texte ou Images pendant Mail Merge
second_title: Aspose.Words pour .NET
articleTitle: Insérer Checkboxes, Saisie de texte ou Images
linktitle: Insérer Checkboxes, Saisie de texte ou Images
description: "Insérez checkboxes ou des champs de saisie de texte pendant Mail Merge en utilisant C#. Insérez également des images d'une base de données pendant Mail Merge dans C#."
type: docs
weight: 40
url: /fr/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Le moteur de fusion prend un document en entrée, recherche les champs `MERGEFIELD` qu'il contient et les remplace par les données obtenues à partir de la source de données. En règle générale, du texte brut et HTML sont insérés, mais les utilisateurs Aspose.Words peuvent également générer un document qui gère des scénarios plus inhabituels pour les champs Mail Merge.

La puissante fonctionnalité Aspose.Words vous permet d'étendre le processus Mail Merge:

- insérer des champs de formulaire checkboxes et de saisie de texte dans le document pendant un mail merge
- insérez des images à partir de n'importe quel stockage personnalisé (fichiers, champs BLOB, etc.)

## Insérer Checkboxes et la saisie de texte pendant Mail Merge

Parfois, il est nécessaire d'effectuer une opération Mail Merge pour que ce ne soit pas du texte qui soit substitué dans le champ de fusion, mais un champ de saisie checkbox ou texte. Même si ce n'est pas le scénario le plus courant, c'est très pratique pour certaines tâches.

La capture d'écran suivante d'un document Word montre un modèle avec des champs de fusion:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Cette capture d'écran du document Word ci-dessous montre le document déjà généré:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Notez que certains champs ont été remplacés par du texte brut, certains champs ont été remplacés par des champs de formulaire checkbox et le champ `Subject` a été remplacé par un champ de saisie de texte.

{{% /alert %}}

L'exemple de code suivant montre comment insérer checkboxes et saisir des champs de texte dans un document pendant un mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Insérer des images pendant Mail Merge

Lorsque vous effectuez une opération Mail Merge, vous pouvez insérer des images de la base de données dans le document à l'aide de champs spéciaux image Mail Merge. Le champ image Mail Merge est un champ de fusion nommé Image: MyFieldName.

### Insérer des images à partir d'une base de données

Lors d'un mail merge, lorsqu'un champ image Mail Merge est rencontré dans un document, l'événement [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/) est déclenché. Vous pouvez répondre à cet événement pour renvoyer un nom de fichier, un flux ou un objet image au moteur Mail Merge afin qu'il puisse être inséré dans le document.

L'exemple de code suivant montre comment insérer des images stockées dans un champ de base de données BLOB dans un rapport:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Définir les propriétés de l'image pendant Mail Merge

Lors de la fusion d'un champ de fusion d'image, vous devrez parfois contrôler diverses propriétés d'image, telles que [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

Actuellement, en utilisant [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/), vous ne pouvez définir que les propriétés de largeur ou de hauteur de l'image, respectivement. Pour surmonter ce problème, Aspose.Words fournit la propriété [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/), ce qui facilite le contrôle total de l'image insérée ou de toute autre forme.

L'exemple de code suivant montre comment définir diverses propriétés d'image:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
