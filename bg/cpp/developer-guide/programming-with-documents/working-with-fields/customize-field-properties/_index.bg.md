---
title: Персонализиране на свойствата на полетата в C++
second_title: Aspose.Words за C++
articleTitle: Персонализиране На Свойствата На Полетата
linktitle: Персонализиране На Свойствата На Полетата
description: "Научете как да персонализирате свойствата на полетата в C++. Преименуване на сливащите се полета или получаване на резултати за полета без разделителен възел в C++."
type: docs
weight: 27
url: /bg/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words осигурява възможност за програмно взаимодействие с различни свойства на полето. В тази статия ще разгледаме няколко примера, за да разберете основния принцип на работа със свойства на полето. Можете да видите пълния списък със свойства за всеки тип поле в съответния клас в [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Актуализиране На Свойствата На Полето

Понякога потребителите трябва да променят стойността на свойство на поле. Например актуализирайте свойството [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) на полето `AUTHOR` или променете свойството [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) на полето `MERGEFIELD`.

Следващият пример за код показва как да преименувате полетата за обединяване в документ Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Резултат От Показване На Поле

Aspose.Words предоставя свойство за получаване на резултата на полето за полета, които нямат възел на разделител на полета. Наричаме това "фалшив резултат" или показване на резултат; Microsoft Word го показва в документа, като изчислява стойността на полето в движение, но няма такава стойност в модела на документа.

Следващият пример за код показва използването на [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/) собственост:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
