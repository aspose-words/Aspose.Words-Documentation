---
title: Як знайти властивості поля в C#
second_title: Aspose.Words для .NET
articleTitle: Знайти властивості поля
linktitle: Знайти властивості поля
description: "Як знайти деякі властивості поля, такі як код поля та результат поля C#й"
type: docs
weight: 25
url: /uk/net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Поле, що вставляється за допомогою [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)й[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) повертає [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/) об'єкт. Це фасадний клас, який забезпечує корисні методи, щоб швидко знайти деякі властивості поля.

Приклад коду показує, як знайти код поля та результат поля:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

Зауважте, якщо ви тільки шукаєте назви об'єднаних полів у документі, то замість цього ви можете використовувати вбудовані [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) метод.

Приклад коду показує, як отримати імена всіх об'єднаних полів у документі:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}
