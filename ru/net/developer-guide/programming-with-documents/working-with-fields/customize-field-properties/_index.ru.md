---
title: Настройка полевых свойств в C#
second_title: Aspose.Words для .NET
articleTitle: Настройка полевых свойств
linktitle: Настройка полевых свойств
description: "Узнайте, как настроить свойства поля в C#. Переименовать поля слияния или получить результаты для полей без узла сепаратора .NET."
type: docs
weight: 27
url: /ru/net/customize-field-properties/
---

Aspose.Words обеспечивает возможность программно взаимодействовать с различными свойствами поля. В этой статье мы рассмотрим несколько примеров, чтобы вы поняли основной принцип работы со свойствами поля. Вы можете увидеть полный список свойств для каждого типа поля в соответствующем классе. [Пространство имён полей](https://reference.aspose.com/words/net/aspose.words.fields/).

## Обновление Field Property Update

Иногда пользователям необходимо изменить стоимость недвижимости. Например, обновить [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) имуществом, `AUTHOR` Поле или изменить [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) имуществом, `MERGEFIELD` поле.

Следующий пример кода показывает, как переименовать поля слияния в документ Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Результат Field Display

Aspose.Words обеспечивает свойство получения результата поля для полей, не имеющих узла разделителя поля. Мы называем это "фальшивым результатом" или результатом отображения; MS Word отображает его в документе, вычисляя значение поля на лету, но такого значения в модели документа нет.

Следующий пример кода показывает использование [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/) имущество:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
