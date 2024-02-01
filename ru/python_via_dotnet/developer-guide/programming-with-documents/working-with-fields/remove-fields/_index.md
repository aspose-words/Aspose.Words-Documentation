---
title: Удалить поля, используя Python
second_title: Aspose.Words для Python via .NET
articleTitle: Удалить поля
linktitle: Удалить поля
description: "Узнайте, как удалить поля в Python. Удалите поля программно, используя Python via .NET API."
type: docs
weight: 35
url: /ru/python-net/remove-fields/
---

Иногда необходимо удалить поле из документа. Это может произойти, когда его необходимо заменить полем другого типа или когда поле больше не требуется в документе. Например, поле `TOC` при сохранении в HTML.

Чтобы удалить поле, вставленное в документ с помощью [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), используйте возвращенный объект [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/), который предоставляет удобный метод [remove](https://reference.aspose.com/words/python-net/aspose.words.fields/field/remove/#default), позволяющий легко удалить поле из документа.

В следующем примере кода показано, как удалить поле из документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RemoveField.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Various%20fields.docx).

{{% /alert %}}