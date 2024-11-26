---
title: Работа с шрифтове в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с шрифтове
linktitle: Работа с шрифтове
description: "Форматиране на шрифта в детайли, като се използва Java."
type: docs
weight: 230
url: /bg/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Шрифт е набор от символи с определен размер, цвят и дизайн. Aspose.Words ви позволява да работите с шрифтове, използващи различни класове, свързани с шрифта, включително [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) Клас.

## Форматиране на шрифта

Текущото форматиране на шрифта е представено от a **Font** обект върнат от [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) собственост. На **Font** Класът съдържа голямо разнообразие от свойства на шрифта, възможни в Microsoft Word.

Следният пример за код показва как да зададете форматиране на шрифта:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Попълнете свойствата сега са на разположение и за шрифтове, за да зададете форматиране на текста. Тя дава възможност за промяна, например, на преден план цвят или прозрачност на попълването на текст.

## Получаване на шрифта Line Spacing

Разстоянието между редовете на шрифта е вертикалното разстояние между изходните линии на два последователни реда текст. По този начин разстоянието между линиите включва празното пространство и височината на самия символ.

На [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) Имотът е въведен в **Font** клас, за да получите тази стойност, както е показано в примера по-долу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Акцент върху шрифта Mark

На **Font** Класът осигурява [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) свойство за получаване или задаване на стойности за изброяване на акцентаMark, които да се прилагат във форматирането.

Следният пример с код показва как да зададете **EphasisMark** собственост:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
