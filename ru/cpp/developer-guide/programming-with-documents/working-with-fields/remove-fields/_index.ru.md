---
title: Удалить поля C++
second_title: Aspose.Words для C++
articleTitle: Удаление полей
linktitle: Удаление полей
description: "Узнайте, как удалить поля в C++. Удалите поля программно, используя C++ API."
type: docs
weight: 35
url: /ru/cpp/remove-fields/
---

Иногда возникает необходимость удалить поле из документа. Это может произойти, когда требуется заменить его другим типом поля или когда поле больше не требуется в документе. Например, поле `TOC` при сохранении в HTML.

Чтобы удалить поле, вставленное в документ с помощью [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/class/aspose.words/documentbuilder/insertfield/), используйте возвращаемый объект [Field](https://reference.aspose.com/words/cpp/class/aspose.words.fields/field/), который предоставляет удобный метод [Remove](https://reference.aspose.com/words/cpp/aspose.words.fields/field/remove/) для простого удаления поля из документа.

В следующем примере кода показано, как удалить поле из документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RemoveField-RemoveField.cpp" >}}
