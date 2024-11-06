---
title: Hoe Om Pasmaak Toe te Pas tydens Mail Merge
second_title: Aspose.Words vir Java
articleTitle: Hoe Om Pasmaak Toe te Pas tydens Mail Merge
linktitle: Hoe Om Pasmaak Toe te Pas tydens Mail Merge
type: docs
description: "Pas pasgemaakte opmaak toe tydens'n mail merge - bewerking met Java."
weight: 60
url: /af/java/how-to-apply-custom-formatting-during-mail-merge/
---

Die [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) klas bied twee gebeure wat baie nuttig kan wees in die uitbreiding van mail merge vermoëns. Die [setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback) eienskap aanvaar'n klas wat die metodes [fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs) en [imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs) implementeer. Dit kan gebruik word om persoonlike beheer oor die mail merge proses te implementeer.

Die **fieldMerging(FieldMergingArgs)** gebeurtenis vind plaas tydens mail merge wanneer'n eenvoudige mail merge veld in die dokument voorkom. Dit gee verdere beheer oor die mail merge en jy kan enige aksies uit te voer wanneer die gebeurtenis plaasvind. Hierdie metode is toegedraai in'n klas wat die [IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) koppelvlak implementeer en aanvaar'n [FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/) voorwerp wat data vir die ooreenstemmende gebeurtenis verskaf.

Die kode voorbeeld hieronder gegee demonstreer hoe om persoonlike logika in die `MergeField` gebeurtenis te implementeer om sel formatering toe te pas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
