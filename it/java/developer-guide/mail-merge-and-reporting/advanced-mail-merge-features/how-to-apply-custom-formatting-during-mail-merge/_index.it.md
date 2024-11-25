---
title: Come applicare la formattazione personalizzata durante Mail Merge
second_title: Aspose.Words per Java
articleTitle: Come applicare la formattazione personalizzata durante Mail Merge
linktitle: Come applicare la formattazione personalizzata durante Mail Merge
type: docs
description: "Applicare la formattazione personalizzata durante un'operazione Mail Merge utilizzando Java."
weight: 60
url: /it/java/how-to-apply-custom-formatting-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

La classe [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) fornisce due eventi che potrebbero essere molto utili per espandere le capacità di Mail Merge. La proprietà [setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback) accetta una classe che implementa i metodi [fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs) e [imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs). Questi possono essere utilizzati per implementare il controllo personalizzato sul processo Mail Merge.

L'evento **fieldMerging(FieldMergingArgs)** si verifica durante Mail Merge quando viene rilevato un campo semplice Mail Merge nel documento. Questo dà ulteriore controllo su Mail Merge ed è possibile eseguire qualsiasi azione quando si verifica l'evento. Questo metodo è racchiuso in una classe che implementa l'interfaccia [IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) e accetta un oggetto [FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/) che fornisce dati per l'evento corrispondente.

L'esempio di codice riportato di seguito illustra come implementare la logica personalizzata nell'evento `MergeField` per applicare la formattazione delle celle.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
