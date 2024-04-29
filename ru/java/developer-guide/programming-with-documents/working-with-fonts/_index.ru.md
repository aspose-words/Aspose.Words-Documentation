---
title: Работа с шрифтами в Java
second_title: Aspose.Words для Java
articleTitle: Работа с шрифтами
linktitle: Работа с шрифтами
description: "Форматирование шрифтов в деталях с использованием Java."
type: docs
weight: 230
url: /ru/java/working-with-fonts/
---

Шрифт - это набор символов с определенным размером, цветом и дизайном. Aspose.Words позволяет работать с шрифтами с использованием различных классов, связанных с шрифтами, в том числе [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) класс.

## Форматирование шрифта

Текущее форматирование шрифта представлено a **Font** объект, возвращенный [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) собственность. The **Font** Класс содержит широкий спектр свойств шрифта, возможных в Microsoft Word.

Следующий пример кода показывает, как настроить форматирование шрифта:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Свойства заполнения теперь также доступны для шрифтов для настройки форматирования текста. Это дает возможность изменять, например, цвет переднего плана или прозрачность заполнения текста.

## Получить Font Line Spacing

Расстояние между строками шрифта - это вертикальное расстояние между исходными линиями двух последовательных строк текста. Таким образом, расстояние между линиями включает в себя пустое пространство между линиями вместе с высотой самого персонажа.

The [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) Имущество было введено в **Font** класс для получения этого значения, как показано в приведенном ниже примере:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Фонт Акцент Марк

The **Font** Класс предоставляет [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) свойство получать или устанавливать значения перечня EmphasisMark для применения в форматировании.

Следующий пример кода показывает, как установить **EphasisMark** имущество:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
