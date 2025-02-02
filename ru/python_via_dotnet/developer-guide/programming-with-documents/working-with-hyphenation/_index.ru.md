﻿---
title: Работа с расстановкой переносов в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с расстановкой переносов
linktitle: Работа с расстановкой переносов
description: "Используйте расстановку переносов для более компактного размещения текста с помощью Python. Он предоставляет расширенные алгоритмы для работы со словарями расстановки переносов, использует словари OpenOffice."
type: docs
weight: 220
url: /ru/python-net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Иногда бывает необходимо использовать расстановку переносов для более компактного размещения текста в документе. В то же время важно понимать, что особенности расстановки переносов слов могут отличаться для каждого языка.

В настоящее время расстановка переносов используется не так часто, как раньше, особенно в текстах на английском языке. Тем не менее, использование этой функции может оказать серьезное влияние на пользовательские документы – расстановка переносов влияет на оформление и, как следствие, на внешний вид выходных файлов, например, в формате PDF.

Для корректного разбиения слов используются словари переносов для конкретных языков. Aspose.Words использует продвинутые алгоритмы для работы с такими словарями и позволяет получить ту же расстановку переносов, что и в Microsoft Word.

## Словари для расстановки переносов

Поскольку в разных языках используются разные нормы и правила переноса слов, оптимальным решением для правильной расстановки переносов является использование специальных словарей. Aspose.Words использует OpenOffice словари.

Для проверки орфографии OpenOffice использует библиотеку [Hunspell](https://hunspell.github.io/), которая является обобщением алгоритма расстановки переносов в TeX. Этот алгоритм позволяет автоматически выполнять нестандартную расстановку переносов, используя конкурирующие стандартные и пользовательские шаблоны расстановки переносов. Hunspell использует [Дефис](https://github.com/hunspell/hyphen) для расстановки переносов.

{{% alert color="primary" %}}

Словари расстановки переносов можно взять из [LibreOffice словарей GitHub](https://github.com/LibreOffice/dictionaries). Например,, [en-US словарь расстановки переносов](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Поскольку для расстановки переносов в Microsoft Word используются словари, отличные от словарей OpenOffice, расстановка переносов некоторых слов, определенных в словарях OpenOffice, может отличаться от расстановки переносов в Microsoft Word. По этой причине иногда нам приходится советовать клиентам добавить необходимые шаблоны в свои словари, чтобы исправить расстановку переносов в определенных словах.

{{% /alert %}}

## Алгоритм расстановки переносов

Aspose.Words реализует [алгоритм расстановки переносов в TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) и может повторно использовать OpenOffice словари расстановки переносов.

Следует учитывать следующие особенности алгоритмов Aspose.Words:

* Параметры расстояния между переносами (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN), указанные в словаре переносов, игнорируются. Aspose.Words использует свой собственный набор параметров расстояния в зависимости от режима совместимости с документом.
* Алгоритм расстановки переносов в Aspose.Words поддерживает [составные переносы](https://github.com/hunspell/hyphen/blob/master/README.compound). Однако Aspose.Words разбивает последовательности символов, содержащие смешанные буквенные и неалфавитные символы, на части (слова), содержащие только буквы, и переносит их отдельно.
  Обратите внимание, что Microsoft Word логика расстановки сложных слов через дефис зависит от режима совместимости документов.
* Алгоритм расстановки переносов в Aspose.Words не реализует [нестандартную расстановку переносов](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Нестандартные шаблоны игнорируются.

## Загрузка словарей расстановки переносов

Чтобы использовать функцию расстановки переносов, сначала зарегистрируйте словарь расстановки переносов. В следующем примере кода показано, как загрузить словари расстановки переносов для указанных языков из файла:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

В следующем примере кода показано, как загрузить словари переносов для указанного языка из потока:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Влияние расстановки переносов на макет

При разбиении текста на строки Aspose.Words проверяет, полностью ли каждое слово помещается в текущей строке. Если другое слово слишком длинное, чтобы поместиться в конце строки, по умолчанию Aspose.Words перемещает его в начало следующей строки, а не переносит через дефис.

Однако функция расстановки переносов может использоваться в Aspose.Words для вставки дефисов в слова, чтобы устранить пробелы в выровненном тексте или сохранить одинаковую длину строки в узких столбцах. Очевидно, что это может повлиять на количество строк и, следовательно, на количество страниц. Другими словами, использование функции расстановки переносов влияет на макет документа.

## Расстановка переносов и их обоснование (H&J)

Microsoft Word имеет сложную логику выбора точки останова, если текст выровнен по ширине и включена расстановка переносов. Короче говоря, Microsoft Word может предпочесть сокращать или растягивать пробелы, чтобы избежать переноса строк. Скорее всего, эта логика основана на статье [Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words реализует свой собственный алгоритм H&J, который дает тот же результат, что и Microsoft Word, и обеспечивает идентичную разбивку строк в выходном документе.

## Смотрите также

* [Дефис – библиотека расстановки переносов](https://github.com/hunspell/hyphen/blob/master/README)
* [Нестандартная расстановка переносов](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Автоматическая нестандартная расстановка переносов в Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
