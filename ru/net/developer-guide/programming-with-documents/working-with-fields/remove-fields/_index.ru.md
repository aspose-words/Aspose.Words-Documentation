---
title: Удалить поля C#
second_title: Aspose.Words для .NET
articleTitle: Удалить поля
linktitle: Удалить поля
description: "Узнайте, как удалить поля в C#. Удалите поля программно, используя .NET API."
type: docs
weight: 35
url: /ru/net/remove-fields/
---

Иногда необходимо удалить поле из документа. Это может произойти, когда его необходимо заменить полем другого типа или когда поле больше не требуется в документе. Например, поле `TOC` при сохранении в HTML.

Чтобы удалить поле, вставленное в документ с помощью [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/), используйте возвращенный объект [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/), который предоставляет удобный метод [Remove](https://reference.aspose.com/words/net/aspose.words.fields/field/remove/) для простого удаления поля из документа.

В следующем примере кода показано, как удалить поле из документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RemoveField-RemoveField.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Various%20fields.docx).

{{% /alert %}}
