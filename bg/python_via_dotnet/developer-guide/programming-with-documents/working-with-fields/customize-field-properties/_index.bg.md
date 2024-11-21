---
title: Настройки на полето в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Настройки на полето
linktitle: Настройки на полето
description: "Научете как да персонализирате свойствата на полето в Python. Преименуване на полета за сливане или получаване на резултати за полета без разделител възел в Python via .NET."
type: docs
weight: 27
url: /bg/python-net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words осигурява възможност за програмно взаимодействие с различни свойства на полето. В тази статия ще разгледаме няколко примера, така че да разберете основния принцип на работа с полеви имоти. Можете да видите пълния списък на свойствата за всеки тип поле в съответния клас в [Модул за полета](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## Обновяване на имота

Понякога потребителите трябва да променят стойността на имота. Например, актуализиране на [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) собственост на `AUTHOR` област или промяна на [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) собственост на `MERGEFIELD` поле.

Следният пример за код показва как да се преименуват полетата за сливане в Word документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Резултат от дисплея

Aspose.Words осигурява свойство за получаване на резултата от полето за полета, които нямат разделителен възел на полето. Наричаме това "фалшив резултат" или резултат от дисплея; MS Word го показва в документа чрез изчисляване на стойността на полето в движение, но няма такава стойност в модела на документа.

Следният пример с код показва използването на [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/) собственост:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}
