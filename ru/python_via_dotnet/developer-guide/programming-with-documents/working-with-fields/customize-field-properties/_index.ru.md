---
title: Настройка полевых свойств в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Настройка полевых свойств
linktitle: Настройка полевых свойств
description: "Узнайте, как настроить свойства поля в Python. Переименовать поля слияния или получить результаты для полей без узла сепаратора Python via .NET."
type: docs
weight: 27
url: /ru/python-net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words обеспечивает возможность программно взаимодействовать с различными свойствами поля. В этой статье мы рассмотрим несколько примеров, чтобы вы поняли основной принцип работы со свойствами поля. Вы можете увидеть полный список свойств для каждого типа поля в соответствующем классе. [Модуль поля](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## Обновление Field Property Update

Иногда пользователям необходимо изменить стоимость недвижимости. Например, обновить [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) имуществом, `AUTHOR` Поле или изменить [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) имуществом, `MERGEFIELD` поле.

Следующий пример кода показывает, как переименовать поля слияния в документ Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Результат Field Display

Aspose.Words обеспечивает свойство получения результата поля для полей, не имеющих узла разделителя поля. Мы называем это "фальшивым результатом" или результатом отображения; MS Word отображает его в документе, вычисляя значение поля на лету, но такого значения в модели документа нет.

Следующий пример кода показывает использование [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/) имущество:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}
