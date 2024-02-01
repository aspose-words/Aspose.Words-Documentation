---
title: Настройте свойства поля в C#
second_title: Aspose.Words для .NET
articleTitle: Настройка свойств поля
linktitle: Настройка свойств поля
description: "Узнайте, как настроить свойства полей в C#. Переименуйте поля слияния или получите результаты для полей без узла-разделителя в .NET."
type: docs
weight: 27
url: /ru/net/customize-field-properties/
---

Aspose.Words предоставляет возможность программного взаимодействия с различными свойствами полей. В этой статье мы рассмотрим пару примеров, чтобы вы поняли основной принцип работы со свойствами полей. Полный список свойств для каждого типа поля вы можете увидеть в соответствующем классе в файле [Пространство имен полей](https://reference.aspose.com/words/net/aspose.words.fields/).

## Обновление свойств поля

Иногда пользователям необходимо изменить значение свойства поля. Например, обновите свойство [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) поля `AUTHOR` или измените свойство [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) поля `MERGEFIELD`.

В следующем примере кода показано, как переименовать поля слияния в документе Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Результат отображения поля

Aspose.Words предоставляет свойство для получения результата поля для полей, у которых нет узла-разделителя полей. Мы называем это "фальшивым результатом" или отображаемым результатом; MS Word отображает его в документе, вычисляя значение поля на лету, но в модели документа такого значения нет.

В следующем примере кода показано использование свойства [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
