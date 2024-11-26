---
title: Прилагане на форматиране по избор към полета в C++
second_title: Aspose.Words за C++
articleTitle: Прилагане на персонализирано форматиране към полета
linktitle: Прилагане на персонализирано форматиране към полета
description: "Форматирайте и оценявайте резултатите от полетата, като използвате C++."
type: docs
weight: 40
url: /bg/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Понякога потребителите трябва да прилагат форматиране по избор към полетата. В тази статия ще разгледаме няколко примера за това как може да се направи това.

За да научите повече опции, вижте пълния списък със свойства за всеки тип поле в съответния клас в [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Как да приложите форматиране по избор към резултат от поле

Aspose.Words осигурява API за форматиране по избор на резултата от полето. Можете да внедрите [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) интерфейс, за да контролирате как се форматира резултатът от полето. Можете да приложите превключвател за цифров формат, т.е. \# "#.##", превключвател за формат на дата/час, т. е. \@ "dd.MM.yyyy" и превключвател за числов формат, т. е. \* Ordinal.

Следващият пример за код показва как да приложите форматиране по избор за резултата от полето:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## Как да се оцени `IF` състояние

Ако искате да оцените състояние `IF` след mail merge, можете да използвате метода [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/), който веднага връща резултата от израза оценка.

Следващият пример за код показва как да използвате този метод:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Как да приложите форматиране по избор към времевото поле

По подразбиране Aspose.Words актуализации `TIME` поле с текущ формат за култура за кратко време. Ако искате да форматирате полето `TIME` според вашите изисквания, можете да постигнете това чрез внедряване на [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider) интерфейс.

Следните примери за код показват как да приложите форматиране по избор към полето `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
