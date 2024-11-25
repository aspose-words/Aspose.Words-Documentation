---
title: Как применить пользовательское форматирование во время Mail Merge
second_title: Aspose.Words для Java
articleTitle: Как применить пользовательское форматирование во время Mail Merge
linktitle: Как применить пользовательское форматирование во время Mail Merge
type: docs
description: "Примените пользовательское форматирование во время операции Mail Merge с помощью Java."
weight: 60
url: /ru/java/how-to-apply-custom-formatting-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Класс [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) предоставляет два события, которые могут быть очень полезны для расширения возможностей Mail Merge. Свойство [setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback) принимает класс, который реализует методы [fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs) и [imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs). Они могут быть использованы для реализации пользовательского управления процессом Mail Merge.

Событие **fieldMerging(FieldMergingArgs)** происходит во время Mail Merge, когда в документе встречается простое поле Mail Merge. Это дает дополнительный контроль над Mail Merge, и вы можете выполнять любые действия при возникновении события. Этот метод заключен в класс, который реализует интерфейс [IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) и принимает объект [FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/), предоставляющий данные для соответствующего события.

Приведенный ниже пример кода демонстрирует, как реализовать пользовательскую логику в событии `MergeField` для применения форматирования ячеек.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
