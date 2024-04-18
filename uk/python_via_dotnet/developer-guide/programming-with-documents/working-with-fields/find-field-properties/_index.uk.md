---
title: Знайти властивості поля в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Знайти властивості поля
linktitle: Знайти властивості поля
description: "Як знайти деякі властивості поля, такі як код поля та результат поля Pythonй"
type: docs
weight: 25
url: /uk/python-net/find-field-properties/
---

Поле, що вставляється за допомогою [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)й[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) повертає [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) об'єкт. Це фасадний клас, який забезпечує корисні методи, щоб швидко знайти деякі властивості поля.

Приклад коду показує, як знайти код поля та результат поля:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

Зауважте, якщо ви тільки шукаєте назви об'єднаних полів у документі, то замість цього ви можете використовувати вбудовані [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) метод.

Приклад коду показує, як отримати імена всіх об'єднаних полів у документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}