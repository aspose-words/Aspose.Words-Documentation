---
title: Настройка свойств полей на C++
second_title: Aspose.Words для C++
articleTitle: Настройка свойств поля
linktitle: Настройка свойств поля
description: "Узнайте, как настроить свойства полей в C++. Переименовывайте объединяемые поля или получайте результаты для полей без узла-разделителя в C++."
type: docs
weight: 27
url: /ru/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words предоставляет возможность программного взаимодействия с различными свойствами полей. В этой статье мы рассмотрим несколько примеров, чтобы вы поняли основной принцип работы со свойствами полей. Вы можете просмотреть полный список свойств для каждого типа поля в соответствующем классе в [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Обновление свойств поля

Иногда пользователям требуется изменить значение свойства поля. Например, обновите свойство [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) поля `AUTHOR` или измените свойство [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) поля `MERGEFIELD`.

В следующем примере кода показано, как переименовать объединяемые поля в документе Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Результат отображения поля

Aspose.Words предоставляет свойство для получения результата по полю для полей, у которых нет узла-разделителя полей. Мы называем это "поддельным результатом" или отображаемым результатом; Microsoft Word отображает его в документе, вычисляя значение поля "на лету", но в модели документа такого значения нет.

В следующем примере кода показано использование свойства [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
