---
title: Сохранить документ в Java
second_title: Aspose.Words для Java
articleTitle: Сохранить документ
linktitle: Сохранить документ
type: docs
description: "Сохранить документ в любом поддерживаемом формате с помощью Java."
weight: 20
url: /ru/java/save-a-document/
---

Большинство задач, которые вам нужно выполнить Aspose.Words Сохранить документ. Чтобы сохранить документ Aspose.Words обеспечивает [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) метод [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) класс. Документ может быть сохранен в любом формате сохранения, поддерживаемом Aspose.Words. Для списка всех поддерживаемых форматов сохранения см. [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) перечисление.

## Сохранить в файл {#save-a-document-to-a-file}

Просто используйте [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) Метод с именем файла. Aspose.Words Определите формат сохранения из расширения файла, которое вы указали.

Следующий пример кода показывает, как загрузить и сохранить документ в файл:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Сохранить в потоке {#save-a-document-to-a-stream}

Передайте потоку объект в [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) метод. Необходимо четко указать формат сохранения при сохранении в потоке.

Следующий пример кода показывает, как загрузить и сохранить документ в поток:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Сохранить в PCL {#save-a-document-to-pcl}

Aspose.Words Поддерживает сохранение документа в PCL (Printer Command Language). Aspose.Words Документы могут сохраняться в формате PCL 6 (PCL 6 Enhanced или PCL XL). The `PclSaveOptions` Класс можно использовать для указания дополнительных опций при сохранении документа в формате PCL.

Следующий пример кода показывает, как сохранить документ в PCL, используя параметры сохранения:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
