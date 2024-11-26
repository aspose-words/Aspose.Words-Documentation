---
title: Удалить поля в Java
second_title: Aspose.Words для Java
articleTitle: Удаление полей
linktitle: Удаление полей
description: "Узнайте, как удалить поля в Java. Удалите поля программным способом, используя Java API."
type: docs
weight: 35
url: /ru/java/remove-fields/
timestamp: 2024-01-27-14-07-04
---

Иногда возникает необходимость удалить поле из документа. Это может произойти, когда оно должно быть заменено другим типом поля или когда поле больше не требуется в документе. Например, поле `TOC` при сохранении в HTML.

Чтобы удалить поле, вставленное в документ с помощью [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), используйте возвращаемый объект [Field](https://reference.aspose.com/words/java/com.aspose.words/field/), который предоставляет удобный метод [Remove](https://reference.aspose.com/words/java/com.aspose.words/field/#remove) для простого удаления поля из документа.

В следующем примере кода показано, как удалить поле из документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RemoveField-RemoveField.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Various%20fields.docx).

{{% /alert %}}
