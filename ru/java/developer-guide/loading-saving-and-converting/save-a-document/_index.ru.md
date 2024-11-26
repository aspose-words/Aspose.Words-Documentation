---
title: Сохраните документ в Java
second_title: Aspose.Words для Java
articleTitle: Сохранение документа
linktitle: Сохранение документа
type: docs
description: "Сохраните документ в любом поддерживаемом формате, используя Java."
weight: 20
url: /ru/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Большинство задач, которые вам необходимо выполнить с помощью Aspose.Words, связаны с сохранением документа. Для сохранения документа в Aspose.Words предусмотрен метод [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String) класса [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Документ может быть сохранен в любом формате сохранения, поддерживаемом Aspose.Words. Список всех поддерживаемых форматов сохранения приведен в списке [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Сохранить в файл {#save-a-document-to-a-file}

Просто используйте метод [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) с именем файла. Aspose.Words определит формат сохранения на основе указанного вами расширения файла.

В следующем примере кода показано, как загрузить и сохранить документ в файл:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Сохранить в потоке {#save-a-document-to-a-stream}

Передайте объект stream методу [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). При сохранении в stream необходимо явно указать формат сохранения.

В следующем примере кода показано, как загрузить и сохранить документ в потоке:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Сохранить в PCL {#save-a-document-to-pcl}

Aspose.Words поддерживает сохранение документа в формате PCL (язык команд принтера). Aspose.Words позволяет сохранять документы в формате PCL 6 (расширенный формат PCL 6 или формат PCL XL). Класс `PclSaveOptions` можно использовать для указания дополнительных параметров при сохранении документа в формате PCL.

В следующем примере кода показано, как сохранить документ в PCL с помощью параметров сохранения:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
