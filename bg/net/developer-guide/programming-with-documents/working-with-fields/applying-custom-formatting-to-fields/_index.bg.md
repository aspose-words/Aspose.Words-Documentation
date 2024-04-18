---
title: Прилагане на потребителски формат за полета в C#
second_title: Aspose.Words вместо .NET
articleTitle: Прилагане на потребителски формат в полета
linktitle: Прилагане на потребителски формат в полета
description: "Форматиране и оценка на резултата от полетата C#."
type: docs
weight: 40
url: /bg/net/applying-custom-formatting-to-fields/
---

Понякога потребителите трябва да прилагат потребителски форматиране на полета. В тази статия ще разгледаме няколко примера как това може да бъде направено.

За да научите повече опции, вижте пълния списък на свойствата за всеки тип поле в съответния клас [Имена](https://reference.aspose.com/words/net/aspose.words.fields/).

## Как да се прилага Потребителско форматиране на резултата от полето

Aspose.Words осигурява API за персонализиране на резултата от полето. Можете да приложите [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) интерфейс за контрол на начина на форматиране на резултата от полето. Можете да приложите цифров форматен превключвател, т.е. \# "##," дата/времев формат, т.е. \@ "dd.MM.гггг," както и числен формат, т.е. \* Ordinal.

Следният пример за код показва как да се прилага персонализиран форматиране за резултата от полето:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Как да оцените `IF` състояние

Ако искате да оцените `IF` състояние след mail merge, Можете да използвате [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) метод, който незабавно връща резултата от оценката на израза.

Следният пример с код показва как да използвате този метод:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Как да се прилага Потребителско форматиране на времето

По подразбиране Aspose.Words актуализации `TIME` поле с текущия формат за кратко време на културата. Разбрахме, че има разлика между Microsoft Word форматиране и .NET/Windows форматиране, както и между различни .NET Framework версии. Ако искате да форматирате `TIME` поле според вашето изискване, можете да постигнете това чрез прилагане [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/) интерфейс.

Следните примери за код показват как да се прилага потребителски форматиране към `TIME` поле:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
