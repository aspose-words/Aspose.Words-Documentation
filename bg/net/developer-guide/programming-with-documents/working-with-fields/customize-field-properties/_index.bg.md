---
title: Настройки на полето в C#
second_title: Aspose.Words вместо .NET
articleTitle: Настройки на полето
linktitle: Настройки на полето
description: "Научете как да персонализирате свойствата на полето в C#. Преименуване на полета за сливане или получаване на резултати за полета без разделител възел в .NET."
type: docs
weight: 27
url: /bg/net/customize-field-properties/
---

Aspose.Words осигурява възможност за програмно взаимодействие с различни свойства на полето. В тази статия ще разгледаме няколко примера, така че да разберете основния принцип на работа с полеви имоти. Можете да видите пълния списък на свойствата за всеки тип поле в съответния клас в [Имена](https://reference.aspose.com/words/net/aspose.words.fields/).

## Обновяване на имота

Понякога потребителите трябва да променят стойността на имота. Например, актуализиране на [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) собственост на `AUTHOR` област или промяна на [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) собственост на `MERGEFIELD` поле.

Следният пример за код показва как да се преименуват полетата за сливане в Word документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Резултат от дисплея

Aspose.Words осигурява свойство за получаване на резултата от полето за полета, които нямат разделителен възел на полето. Наричаме това "фалшив резултат" или резултат от дисплея; MS Word го показва в документа чрез изчисляване на стойността на полето в движение, но няма такава стойност в модела на документа.

Следният пример с код показва използването на [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/) собственост:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
