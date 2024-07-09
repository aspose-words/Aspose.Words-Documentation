---
title: Работа с гифенацией в Java
second_title: Aspose.Words для Java
articleTitle: Работа с гипертонией
linktitle: Работа с гипертонией
description: "Используйте дефис для более компактного расположения текста. Предоставляет передовые алгоритмы для работы с дефисными словарями, использует словари OpenOffice Java."
type: docs
weight: 220
url: /ru/java/working-with-hyphenation/
---

Иногда необходимо использовать дефис для более компактного расположения текста в документе. При этом важно понимать, что специфика дефисации слов может отличаться для каждого языка.

В настоящее время дефис используется не так часто, как раньше, особенно в английских текстах. Тем не менее, использование этой функции может оказать серьезное влияние на документы пользователя – дефис влияет на макет и, как следствие, внешний вид выходных файлов, например, в формате PDF.

Для правильного расщепления слов используются языковые словари дефисации. Aspose.Words использует передовые алгоритмы для работы с такими словарями и позволяет получить такое же дефисирование, как и в Microsoft Word.

## Гифенационные словари

Поскольку в разных языках для дефисации слов используются разные нормы и правила, оптимальным решением для правильного дефисирования является использование специальных словарей. Aspose.Words Использует словари OpenOffice.

Для проверки орфографии OpenOffice использует [Hunspell библиотека](https://hunspell.github.io/), Это обобщение алгоритма дефисации TeX. Этот алгоритм позволяет автоматическую нестандартную дефисацию с использованием конкурирующих стандартных и пользовательских шаблонов дефисации. Hunspell использует [Дифен](https://github.com/hunspell/hyphen) для дефисации.

{{% alert color="primary" %}}

Гифенационные словари можно взять из [LibreOffice словари GitHub](https://github.com/LibreOffice/dictionaries). Например, [Американский словарь дефисации](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Как Microsoft Word использует словари, отличные от словарей OpenOffice, для выполнения дефисирования, дефис некоторых слов, определенных словарями OpenOffice, может отличаться от словарей OpenOffice. Microsoft Word дефис. По этой причине иногда приходится советовать клиентам добавлять необходимые шаблоны в свои словари, чтобы зафиксировать дефис отдельных слов.

{{% /alert %}}

## Гифеновый алгоритм

Aspose.Words реализация [Алгоритм дефисации TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) и может повторно использовать словари дефиса OpenOffice.

Следующие особенности Aspose.Words Следует учитывать алгоритмы:

* Параметры расстояния выпадения (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMПУНДЛЕФТИФЕНМИН, COMPOUNDRIGHTHYPHENMIN), указанные в дефисном словаре, игнорируются. Aspose.Words использует собственный набор параметров расстояния в зависимости от режима совместимости документа.
* Алгоритм дефисации в Aspose.Words поддержка [композиционное дефисирование](https://github.com/hunspell/hyphen/blob/master/README.compound). Однако, Aspose.Words Разделяет последовательности символов, содержащие смешанные алфавитные и не алфавитные символы, на части (слова) только алфавитом и дефисирует их отдельно.
  Обратите внимание, что Microsoft Word Логика дефисации сложных слов зависит от режима совместимости документов.
* Алгоритм дефисации в Aspose.Words не осуществляет [нестандартный дефис](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Нестандартные модели игнорируются.

## Словари гипертонии

Чтобы использовать функцию дефисации, сначала зарегистрируйте словарь дефисации. Следующий пример кода показывает, как загрузить словари дефисации для указанных языков из файла:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Следующий пример кода показывает, как загрузить словари дефисации для указанного языка из потока:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

В качестве альтернативы предварительной регистрации словарей дефисации можно зарегистрировать только необходимые словари дефисации "по запросу". Для достижения этого, реализуя [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) Интерфейс и использование статического обратного вызова [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

Следующий пример кода показывает, как реализовать **IHyphenationCallback** интерфейс:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Влияние гипертонии на планировку

Разбивая текст на строки, Aspose.Words Проверяет каждое слово, полностью ли оно вписывается в текущую строку. Если другое слово слишком длинное, чтобы соответствовать в конце строки, по умолчанию Aspose.Words Переносит его в начало следующей строки вместо дефисации.

Однако функция дефисации может быть использована в Aspose.Words Вставить дефисы в слова, чтобы устранить пробелы в тексте или сохранить четную длину строки в узких столбцах. Это может повлиять на количество строк и, следовательно, на количество страниц. Другими словами, использование функции дефисации влияет на макет документа.

## Гифенация и оправдание (H&J)

Microsoft Word Имеет сложную логику выбора точки останова, если текст обоснован и дефис включен. Короче говоря, Microsoft Word Может предпочесть сжимать или растягивать пространства, чтобы избежать дефисации линии. Скорее всего, эта логика основана на [Статья Кнута](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words Реализует собственный алгоритм H&J, который дает тот же результат, что и Microsoft Word и обеспечивает идентичный разрыв линии в выходном документе.

## Смотрите также

* [Гифен – библиотека дефиса](https://github.com/hunspell/hyphen/blob/master/README)
* [Нестандартное дефисирование](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Автоматическое нестандартное дефисирование в Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
