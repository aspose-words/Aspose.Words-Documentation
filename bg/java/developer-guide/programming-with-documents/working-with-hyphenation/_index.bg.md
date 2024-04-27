---
title: Работа с Hyphenation в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с хипениране
linktitle: Работа с хипениране
description: "Използвайте тиретата за по-компактно подреждане на текста. Той предоставя усъвършенствани алгоритми за работа с речници за тирета, използва речници OpenOffice, използвайки Java."
type: docs
weight: 220
url: /bg/java/working-with-hyphenation/
---

Понякога е необходимо да се използва тирета за по-компактно подреждане на текста в документ. В същото време е важно да се разбере, че спецификите на думата тиреиране могат да се различават за всеки език.

В момента хифенацията не се използва толкова често, колкото преди, особено в английските текстове. Въпреки това, използването на тази функция може да има сериозно въздействие върху потребителските документи готварство засяга оформлението и като резултат, появата на изходните файлове, например в PDF формат.

За правилното разделяне на думите се използват специфични за езика речници за тирета. Aspose.Words използва напреднали алгоритми, за да работи с такива речници и ви позволява да получите същата тиретация като в Microsoft Word.

## Речници за тиреиране

Тъй като различните езици използват различни норми и правила за думата тиреиране, оптималното решение за правилното тиреиране е да се използват специални речници. Aspose.Words използва речници на OpenOffice.

За проверка на правописа OpenOffice използва [Hunspell библиотека](https://hunspell.github.io/), което е обобщение на алгоритъма за тиреиране на TeX. Този алгоритъм позволява автоматична нестандартна тиретация, използвайки конкурентни стандартни и потребителски модели за тиреиране. Hunspell използва [Хифен](https://github.com/hunspell/hyphen) за тирета.

{{% alert color="primary" %}}

Хифенационни речници могат да бъдат взети от [LibreOffice Речници GitHub](https://github.com/LibreOffice/dictionaries). Например, [Речник на тиретата в САЩ](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Като Microsoft Word използва речници, различни от речници на OpenOffice, за да изпълнява тирета, тиретата на някои думи, определени от речници на OpenOffice могат да се различават от Microsoft Word Хифенация. Поради тази причина понякога трябва да съветваме клиентите да добавят необходимите модели към речниците си, за да поправят тиретата на определени думи.

{{% /alert %}}

## Хифенация Алгоритъм

Aspose.Words Приложения [Алгоритъм за тирейран TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) и могат да използват отново речниците OpenOffice.

Следните характеристики на Aspose.Words алгоритмите следва да се вземат предвид:

* Параметри на разстоянието на хипениране (LEFTHYPHENMIN, RAVEHYPHENMIN, COMПиглефифенмин, COMPOUDRIGHTHYPHENMIN) се игнорират. Aspose.Words използва собствен набор от параметри за разстояние в зависимост от режима на съвместимост на документите.
* Алгоритъмът за тиреиране в Aspose.Words Поддръжка [композитна тиретация](https://github.com/hunspell/hyphen/blob/master/README.compound). Обаче, Aspose.Words разделя характер последователности, съдържащи смесени азбучни и не-алфабетични знаци в части само на азбучен ред (думи) и ги тиреира отделно.
  Имайте предвид, че Microsoft Word логиката на тиреиране на сложни думи зависи от режима на съвместимост на документите.
* Алгоритъмът за тиреиране в Aspose.Words не прилага [нестандартна тиретация](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Нестандартните модели се игнорират.

## Зареждане на дневници за тирета

За да използвате функцията за тиреиране, първо регистрирате речник за тиреиране. Следният пример с код показва как да се заредят речници с тирета за посочените езици от файл:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Следният пример за код показва как да се зареждат речници за тирета за посочения език от поток:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Като алтернатива на предварително записаните речници за тирета, е възможно да се регистрират само изискваните речници за тиретата чрез заявка. За да се постигне това, прилагане на [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) интерфейс и използване на статично обаждане [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

Следният пример с код показва как да приложите **IHyphenationCallback** интерфейс:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Въздействие на хипнозата върху подреждането

Когато разбивате текст на редове, Aspose.Words проверява всяка дума дали тя се вписва изцяло в текущата линия. Ако друга дума е твърде дълго, за да се побере в края на линията, по подразбиране Aspose.Words премества го към началото на следващата линия, вместо да го хипнотизира.

Въпреки това, функцията за тиреиране може да се използва в Aspose.Words да се вмъкнат тирета в думи, за да се премахнат пропуските в обоснования текст или да се поддържа еднаква дължина в тесни колони. Това очевидно може да засегне броя на редовете и следователно броя на страниците. С други думи, използването на функцията за тиреиране засяга оформлението на документа.

## Хифениране и обосновка (H&J)

Microsoft Word има сложна логика за избор на точка на прекъсване, ако текстът е оправдан и се активира тиреиране. Накратко, Microsoft Word може да предпочитат да свиват или разтягат пространства, за да се избегне линия тиреиране. Най-вероятно тази логика се основава на [Статията на Кнут](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words прилага собствен H&J алгоритъм, който дава същия резултат като Microsoft Word и осигурява идентични прекъсвания в изходния документ.

## Вижте също

* [Хифен](https://github.com/hunspell/hyphen/blob/master/README)
* [Нестандартна тиретация](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Автоматизирани нестандартно в Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
