---
title: Включить функции OpenType в Java
second_title: Aspose.Words для Java
articleTitle: Включить функции OpenType
linktitle: Включить функции OpenType
description: "Расширенные типографские особенности в Aspose.Words для Java."
type: docs
weight: 25
url: /ru/java/enable-opentype-features/
---



OpenType - это формат шрифта, который обеспечивает лучшую поддержку международных языков и систем письма по сравнению с PostScript и TrueType. Особенности компоновки OpenType широко известны как функции OpenType. Aspose.WordsФормирование.HarfBuzz Пакет обеспечивает поддержку функций OpenType в Aspose.Words используя `HarfBuzz` Движок формирования текста.

Aspose.Words Способен использовать объекты формовщика текста, предоставляемые извне. Форматор текста представляет собой шрифт и вычисляет информацию для формирования текста. Документ обычно относится к нескольким шрифтам, поэтому необходима фабрика формовщиков текста. Этот пакет содержит реализацию фабрики формовщиков текста, используемой Aspose.Words.Layout.LayoutOptions.TextShaperFactory Property.

{{% alert color="primary" %}}

Формирование текста выполняется только при экспорте в PDF. XPS Форматы.

{{% /alert %}}

В типичном приложении один экземпляр фабрики формовщиков текста делится между всеми экземплярами документов. Всякий раз, когда формировщик текста создается, доступ к файлу шрифта. Парсирование файла шрифта является дорогостоящей операцией, поэтому рекомендуется кэширование. Aspose.Words реализация BasicTextShaper Класс кэша, который обертывает реализацию фабрики формовщиков текста и кэширует экземпляры формовщиков текста, возвращенные фабрикой.

Следующий пример кода показывает, как включить поддержку функций OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
