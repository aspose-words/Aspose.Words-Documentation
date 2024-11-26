---
title: Работа со шрифтами в Java
second_title: Aspose.Words для Java
articleTitle: Работа со шрифтами
linktitle: Работа со шрифтами
description: "Детальное форматирование шрифта с использованием Java."
type: docs
weight: 230
url: /ru/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Шрифт - это набор символов определенного размера, цвета и оформления. Aspose.Words позволяет работать со шрифтами, используя различные классы, связанные со шрифтами, включая класс [Font](https://reference.aspose.com/words/java/com.aspose.words/font/).

## Форматирование шрифта

Текущее форматирование шрифта представлено объектом **Font**, возвращаемым свойством [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont). Класс **Font** содержит широкий спектр свойств шрифта, возможных в Microsoft Word.

В следующем примере кода показано, как задать форматирование шрифта:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Свойства заливки теперь доступны и для шрифтов, чтобы задать форматирование заливки текста. Это дает возможность изменять, например, цвет переднего плана или прозрачность заливки текста.

## Получение межстрочного интервала между шрифтами

Межстрочный интервал шрифта - это расстояние по вертикали между базовыми линиями двух последовательных строк текста. Таким образом, межстрочный интервал включает в себя пробел между строками, а также высоту самого символа.

Свойство [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) было введено в класс **Font** для получения этого значения, как показано в примере, приведенном ниже:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Шрифт EmphasisMark

Класс **Font** предоставляет свойство [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) для получения или задания значений перечисления EmphasisMark, которые будут применяться при форматировании.

В следующем примере кода показано, как установить свойство **EphasisMark**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
