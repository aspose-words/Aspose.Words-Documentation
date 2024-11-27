---
title: Видалити поля C++
second_title: Aspose.Words для C++
articleTitle: Видалення полів
linktitle: Видалення полів
description: "Дізнайтеся, як видалити поля в C++. Видаліть поля програмним способом, використовуючи C++ API."
type: docs
weight: 35
url: /uk/cpp/remove-fields/
timestamp: 2024-01-27-14-07-04
---

Іноді виникає необхідність видалити поле з документа. Це може статися, коли потрібно замінити його іншим типом поля або коли поле більше не потрібно в документі. Наприклад, поле `TOC` при збереженні в HTML.

Щоб видалити поле, вставлене в документ за допомогою [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/class/aspose.words/documentbuilder/insertfield/), використовуйте повернутий об'єкт [Field](https://reference.aspose.com/words/cpp/class/aspose.words.fields/field/), який забезпечує зручний метод [Remove](https://reference.aspose.com/words/cpp/aspose.words.fields/field/remove/) для простого видалення поля з документа.

Наступний приклад коду показує, як видалити поле з документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RemoveField-RemoveField.cpp" >}}
