---
title: Настройте свойства поля в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Настройка свойств поля
linktitle: Настройка свойств поля
description: "Узнайте, как настроить свойства полей в Python. Переименуйте поля слияния или получите результаты для полей без узла-разделителя в Python via .NET."
type: docs
weight: 27
url: /ru/python-net/customize-field-properties/
---

Aspose.Words предоставляет возможность программного взаимодействия с различными свойствами полей. В этой статье мы рассмотрим пару примеров, чтобы вы поняли основной принцип работы со свойствами полей. Полный список свойств для каждого типа поля вы можете увидеть в соответствующем классе в файле [Модуль полей](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## Обновление свойств поля

Иногда пользователям необходимо изменить значение свойства поля. Например, обновите свойство [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) поля `AUTHOR` или измените свойство [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) поля `MERGEFIELD`.

В следующем примере кода показано, как переименовать поля слияния в документе Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Результат отображения поля

Aspose.Words предоставляет свойство для получения результата поля для полей, у которых нет узла-разделителя полей. Мы называем это "фальшивым результатом" или отображаемым результатом; MS Word отображает его в документе, вычисляя значение поля на лету, но в модели документа такого значения нет.

В следующем примере кода показано использование свойства [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}