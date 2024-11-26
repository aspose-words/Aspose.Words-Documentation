---
title: Nettoyer Avant ou Pendant une opération Mail Merge
second_title: Aspose.Words pour Java
articleTitle: Nettoyer Avant ou Pendant une opération Mail Merge
linktitle: Nettoyer Avant ou Pendant une opération Mail Merge
type: docs
description: "Appliquez différentes options de nettoyage et de suppression, telles que la suppression des champs de fusion avant d'effectuer une opération Mail Merge ou la suppression des régions inutilisées lors d'une opération Mail Merge à l'aide de Java."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /fr/java/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words vous permet d'appliquer différentes options de nettoyage et de suppression, telles que la suppression des champs de fusion avant d'effectuer une opération Mail Merge ou la suppression des régions inutilisées pendant une opération Mail Merge. Cette section explique comment supprimer les champs fusionnés et comment configurer une option de suppression.

## Supprimer les Champs Fusionnés

Lorsque vous utilisez un modèle long créé par quelqu'un d'autre, vous souhaiterez peut-être supprimer tous les champs de fusion qui existent déjà dans ce modèle avant d'effectuer une opération Mail Merge. Vous pouvez utiliser la méthode [DeleteFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#deleteFields) si vous souhaitez supprimer tous les champs de fusion d'un document sans exécuter d'opération Mail Merge. Cette méthode n'est affectée par aucune option de suppression de la propriété [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getCleanupOptions) et son exécution supprime uniquement les champs fusionnés, pas les champs contenant ou les paragraphes vides.

L'exemple de code suivant montre comment supprimer tous les champs de fusion de votre modèle sans exécuter d'opération Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-DeleteFields.java" >}}

## Configurer une option `Removing`

Aspose.Words vous permet de supprimer des champs, des régions et des paragraphes non fusionnés d'un modèle lors d'une opération Mail Merge à l'aide des options de suppression.

Utilisez la propriété **CleanupOptions** avec l'énumération [MailMergeCleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/) pour définir l'option de suppression. Spécifiez les éléments que vous souhaitez supprimer en choisissant les options suivantes (vous pouvez en combiner plusieurs):

* Supprimer les paragraphes vides
* Supprimer les régions inutilisées
* Supprimer les champs inutilisés
* Supprimer les champs contenant
* Supprimer les champs statiques
* Supprimer les lignes vides du tableau

Vous pouvez considérer un champ de fusion comme non fusionné dans l'une des conditions suivantes:

1. Si le champ de fusion dans la source de données n'a pas de colonne ou de champ de mappage.
2. Si le champ de fusion de la source de données contient un champ de mappage mais que les données sont nulles.

{{% alert color="primary" %}}

Si vous fusionnez des données à l'aide de sources de données distinctes, ces options de suppression ne seront activées qu'avec le dernier appel de la méthode Mail Merge execute.

{{% /alert %}}

### Supprimer Les Paragraphes Vides

Un paragraphe qui n'inclut que des champs de fusion sera vide lorsque le processus Mail Merge supprimera tous ses champs de fusion comme non fusionnés. Ces paragraphes vides peuvent ajouter de l'espace indésirable et modifier l'apparence du rapport généré. Vous pouvez faire face à deux situations avec des paragraphes lors d'une opération Mail Merge:

1. Le champ Mail Merge sera fusionné avec des données vides.
2. Le champ de fusion n'est pas utilisé et sera supprimé.

Dans les deux cas, l'option **RemoveEmptyParagraphs** supprimera automatiquement les paragraphes vides du document. De plus, il supprimera les champs de fusion `TableStart` et TableEnd si le reste du paragraphe est vide.

L'exemple de code suivant montre comment supprimer les paragraphes vides:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyParagraphs.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Supprimer les Régions Inutilisées

Dans les versions précédentes de Aspose.Words, les régions vides Mail Merge étaient automatiquement supprimées du document lors de l'opération Mail Merge. Avec la dernière version d'Aspose.les mots, les régions Mail Merge vides restent après l'opération Mail Merge par défaut. Cependant, vous pouvez utiliser l'option **RemoveUnusedRegions** pour supprimer les régions Mail Merge inutilisées pendant l'opération Mail Merge. Par exemple, vous pouvez fusionner un document avec une source de données vide ne contenant aucune table de données conduisant à des régions inutilisées dans le document.

L'exemple de code suivant montre comment supprimer les régions de fusion inutilisées:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnmergedRegions.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Remarque**

### Supprimer Les Champs Inutilisés

Aspose.Words vous permet de supprimer tous les champs Mail Merge inutilisés en affectant l'indicateur **RemoveUnusedFields** à **CleanupOptions**. Cette option supprimera les champs de fusion qui ne contiennent pas les données correspondantes dans la source de données.

L'exemple de code suivant montre comment supprimer automatiquement les champs de fusion inutilisés d'un document lors d'une opération Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnusedFields.java" >}}

### Suppression des Champs Contenant

Un champ de fusion peut être contenu dans un autre champ tel qu'un champ **IF** ou un champ de formule. Supprimez ce champ externe lorsque le champ de fusion est fusionné ou supprimé du document.

L'exemple de code suivant montre comment supprimer des champs contenant des champs de fusion d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveContainingFields.java" >}}

**Remarque**

### Supprimer Les Lignes Vides Du Tableau

Aspose.Words vous permet de supprimer les lignes vides du tableau en affectant l'indicateur **RemoveEmptyTableRows** à **CleanupOptions**. Cette option supprimera les lignes de tableau contenant des champs de fusion vides.

L'exemple de code suivant montre comment supprimer des lignes de tableau vides contenant Mail Merge régions d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyTableRows.java" >}}
