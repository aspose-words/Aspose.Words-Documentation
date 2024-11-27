---
title: Работа с тире в C++
second_title: Aspose.Words за C++
articleTitle: Работа с тире
linktitle: Работа с тире
description: "Използвайте с тире за по-компактно подреждане на текста, като използвате C++. Той предоставя усъвършенствани алгоритми за работа с речници с тире, използва OpenOffice речници."
type: docs
weight: 220
url: /bg/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

Понякога е необходимо да се използва тире за по-компактно подреждане на текста в документ. В същото време е важно да се разбере, че спецификата на думата с тире може да се различава за всеки език.

В днешно време с тире не се използва толкова често, колкото преди, особено в английските текстове. Въпреки това, използването на тази функция може да има сериозно въздействие върху потребителските документи – сричането засяга оформлението и в резултат на това появата на изходните файлове, например във формат PDF.

За правилното разделяне на думите се използват речници, специфични за езика с тире. Aspose.Words използва усъвършенствани алгоритми за работа с такива речници и ви позволява да получите същото тире, както в Microsoft Word.

## Речници С Тире

Тъй като различните езици използват различни норми и правила за тире, оптималното решение за правилно тире е да се използват специални речници. Aspose.Words използва речници OpenOffice.

За проверка на правописа OpenOffice използва [Hunspell библиотека](https://hunspell.github.io/) което е обобщение на алгоритъма на Текс за тиреоид. Този алгоритъм позволява автоматично нестандартно тире, използвайки конкурентни стандартни и персонализирани модели на тире. Hunspell използва [Тире](https://github.com/hunspell/hyphen) за тире.

{{% alert color="primary" %}}

Речниците с тире могат да бъдат взети от [LibreOffice речници GitHub](https://github.com/LibreOffice/dictionaries). Например, [US речник с тире](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Тъй като Microsoft Word използва речници, различни от OpenOffice речници за извършване на тире, тире на някои думи, определени от OpenOffice речници може да се различава от Microsoft Word тире. Поради тази причина понякога се налага да съветваме клиентите да добавят необходимите шаблони към речниците си, за да фиксират с тире определени думи.

{{% /alert %}}

## Алгоритъм За Тиреоид

Aspose.Words изпълнява [алгоритъмът Текс](https://github.com/hunspell/hyphen/blob/master/README.hyphen) и може да използва повторно OpenOffice речници с тире.

Следните характеристики на Aspose.Words алгоритми трябва да бъдат взети под внимание:

* Параметри на разстоянието с тиреоид(LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) указаните в речника с тире се игнорират. Aspose.Words използва свой собствен набор от параметри за разстояние в зависимост от режима на Съвместимост на документа.
* Алгоритъмът за тире в Aspose.Words поддържа [композитна сричка](https://github.com/hunspell/hyphen/blob/master/README.compound). Въпреки това, Aspose.Words разделя символни последователности, съдържащи смесени азбучни и не-азбучни знаци, на части (думи) само с азбучен ред и ги поставя с тире отделно.
  Обърнете внимание, че Microsoft Word логиката на тире на съставни думи зависи от режима на Съвместимост на документа.
* Алгоритъмът за тиреоид Aspose.Words не изпълнява [нестандартно тире](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Нестандартните модели се игнорират.

## Зареждане На Речници С Тире

За да използвате функцията за тире, първо регистрирайте речник за тире.Следващият пример за код показва как да заредите речници с тире за посочените езици от файл:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Следният пример за код показва как да заредите речници за тире за посочения език от поток:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Като алтернатива на предварителната регистрация на речници с тире, е възможно да се регистрират само необходимите речници с тире "по заявка". За да постигнете това, внедрете интерфейса [IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/) и използвайте статичното обратно повикване [Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/).

Следващият пример за код показва как да имплементирате **IHyphenationCallback** интерфейса:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## Въздействие на тиреоид върху оформлението

Когато разделяте текста на редове, Aspose.Words проверява дали всяка дума се вписва изцяло в текущия ред. Ако друга дума е твърде дълга, за да се побере в края на реда, по подразбиране Aspose.Words я премества в началото на следващия ред, вместо да я поставя с тире.

Функцията за тирета обаче може да се използва в Aspose.Words за вмъкване на тирета в думи, за да се премахнат празнините в оправдания текст или да се поддържа равномерна дължина на реда в тесни колони. Това очевидно може да повлияе на броя на редовете и следователно на броя на страниците. С други думи, използването на функцията за тире засяга оформлението на документа.

## Тиреоид и обосновка (з&й)

Microsoft Word има сложна логика за избор на точка на прекъсване, ако текстът е оправдан и е разрешено тире. С една дума, Microsoft Word може да предпочете да се свие или разтегне пространства, за да се избегне линия с тире. Най-вероятно тази логика се основава на [Статия на Кнут](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words имплементира свой собствен алгоритъм, който дава същия резултат като Microsoft Word и осигурява идентичен ред в изходния документ.

## Вижте Също

* [Тирето-библиотека с тирета](https://github.com/hunspell/hyphen/blob/master/README)
* [Нестандартно тире](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Автоматично нестандартно тире в отворен офис](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
