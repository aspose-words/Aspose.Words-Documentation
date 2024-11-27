---
title: Работа с диапазони в C++
second_title: Aspose.Words за C++
articleTitle: Работа с диапазони
linktitle: Работа с диапазони
description: "Въведение в функцията за обхват в Aspose.Words за C++."
type: docs
weight: 130
url: /bg/cpp/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Във Aspose.Words диапазонът е "плосък прозорец" в иначе дървовиден модел на документа.

{{% /alert %}}

Ако сте работили с автоматизация Microsoft Word, вероятно знаете, че един от основните инструменти за разглеждане и промяна на съдържанието на документа е обектът **Range**. **Range** е като "прозорец" в съдържанието и форматирането на документа.

Aspose.Words също има клас [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) и е проектиран да изглежда и да действа подобно на **Range** във Microsoft Word. Въпреки че **Range** не може да обхваща произволна част от документ и няма **Start** и **End**, можете да получите достъп до обхвата, обхванат от всеки възел на документ, включително самото [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). С други думи, всеки възел има свой собствен диапазон. **Range** обектът ви позволява достъп и промяна на текст, отметки и формуляри полета в рамките на диапазона.

## Извличане На Обикновен Текст

Използвайте свойството [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/), за да извлечете обикновен, неформатиран текст на диапазона.

Следващият пример за код показва как да получите обикновен, неформатиран текст на диапазон:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Изтриване На Текст

Диапазонът позволява изтриването на всички знаци от диапазона чрез извикване на [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

Следващият пример за код показва как да изтриете всички знаци от диапазон:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
