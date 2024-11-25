---
title: Como aplicar a formatação personalizada durante Mail Merge
second_title: Aspose.Words para Java
articleTitle: Como aplicar a formatação personalizada durante Mail Merge
linktitle: Como aplicar a formatação personalizada durante Mail Merge
type: docs
description: "Aplicar formatação personalizada durante uma operação Mail Merge utilizando Java."
weight: 60
url: /pt/java/how-to-apply-custom-formatting-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

A classe [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) fornece dois eventos que podem ser muito úteis na expansão das capacidades Mail Merge. A propriedade [setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback) aceita uma classe que implementa os métodos [fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs) e [imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs). Eles podem ser usados para implementar o controle personalizado sobre o processo Mail Merge.

O evento **fieldMerging(FieldMergingArgs)** ocorre durante Mail Merge quando um campo simples Mail Merge é encontrado no documento. Isso dá mais controle sobre o Mail Merge e você pode executar quaisquer ações quando o evento ocorrer. Este método é agrupado em uma classe que implementa a interface [IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) e aceita um objeto [FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/) que fornece dados para o evento correspondente.

O exemplo de código dado abaixo demonstra como implementar a lógica personalizada no evento `MergeField` para aplicar a formatação da célula.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
