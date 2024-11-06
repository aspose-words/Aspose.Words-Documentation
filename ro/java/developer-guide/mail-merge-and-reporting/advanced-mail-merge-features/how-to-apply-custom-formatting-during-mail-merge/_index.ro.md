---
title: Cum se aplică formatarea personalizată în timpul Mail Merge
second_title: Aspose.Words pentru Java
articleTitle: Cum se aplică formatarea personalizată în timpul Mail Merge
linktitle: Cum se aplică formatarea personalizată în timpul Mail Merge
type: docs
description: "Aplicați formatarea personalizată în timpul unei operații mail merge folosind Java."
weight: 60
url: /ro/java/how-to-apply-custom-formatting-during-mail-merge/
---

Clasa [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) oferă două evenimente care ar putea fi foarte utile în extinderea capacităților mail merge. Proprietatea [setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback) acceptă o clasă care implementează metodele [fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs) și [imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs). Acestea pot fi utilizate pentru a implementa controlul personalizat asupra procesului mail merge.

Evenimentul **fieldMerging(FieldMergingArgs)** are loc în timpul mail merge Când un câmp simplu mail merge este întâlnit în document. Acest lucru oferă un control suplimentar asupra mail merge și puteți efectua orice acțiuni atunci când are loc evenimentul. Această metodă este înfășurată într-o clasă care implementează interfața [IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) și acceptă un obiect [FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/) care furnizează date pentru evenimentul corespunzător.

Exemplul de cod prezentat mai jos demonstrează modul de implementare a logicii personalizate în evenimentul `MergeField` pentru a aplica formatarea celulei.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
