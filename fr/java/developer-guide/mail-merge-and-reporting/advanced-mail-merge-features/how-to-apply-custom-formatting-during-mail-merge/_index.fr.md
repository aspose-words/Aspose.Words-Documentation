---
title: Comment appliquer une mise en forme personnalisée pendant Mail Merge
second_title: Aspose.Words pour Java
articleTitle: Comment appliquer une mise en forme personnalisée pendant Mail Merge
linktitle: Comment appliquer une mise en forme personnalisée pendant Mail Merge
type: docs
description: "Appliquez une mise en forme personnalisée lors d'une opération Mail Merge à l'aide de Java."
weight: 60
url: /fr/java/how-to-apply-custom-formatting-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

La classe [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) fournit deux événements qui pourraient être très utiles pour étendre les capacités Mail Merge. La propriété [setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback) accepte une classe qui implémente les méthodes [fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs) et [imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs). Ceux-ci peuvent être utilisés pour implémenter un contrôle personnalisé sur le processus Mail Merge.

L'événement **fieldMerging(FieldMergingArgs)** se produit pendant Mail Merge lorsqu'un simple champ Mail Merge est rencontré dans le document. Cela donne un contrôle supplémentaire sur le Mail Merge et vous pouvez effectuer toutes les actions lorsque l'événement se produit. Cette méthode est encapsulée dans une classe qui implémente l'interface [IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) et accepte un objet [FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/) qui fournit des données pour l'événement correspondant.

L'exemple de code donné ci-dessous montre comment implémenter une logique personnalisée dans l'événement `MergeField` pour appliquer le formatage des cellules.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
