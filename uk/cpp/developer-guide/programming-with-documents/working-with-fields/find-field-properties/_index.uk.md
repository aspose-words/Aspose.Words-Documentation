---
title: Як знайти властивості поля
second_title: Aspose.Words для C++
articleTitle: Пошук властивостей поля
linktitle: Пошук властивостей поля
description: "Як знайти деякі властивості поля, такі як код поля та результат поля в C++."
type: docs
weight: 25
url: /uk/cpp/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Поле, яке вставляється за допомогою [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) повертає об'єкт [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/). Це фасадний клас, який надає корисні методи для швидкого пошуку деяких властивостей поля.

Наступний приклад коду показує, як знайти код поля та результат пошуку в полі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

Примітка. якщо ви шукаєте лише назви полів злиття в документі, то замість цього ви можете використовувати вбудований метод [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

Наступний приклад коду показує, як отримати імена всіх полів злиття в документі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}
