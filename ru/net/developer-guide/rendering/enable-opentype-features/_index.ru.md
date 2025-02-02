---
title: Включить функции OpenType в C#
second_title: Aspose.Words для .NET
articleTitle: Включить функции OpenType
linktitle: Включить функции OpenType
description: "Расширенные типографские функции с использованием C#."
type: docs
weight: 25
url: /ru/net/enable-opentype-features/
timestamp: 2024-07-10-14-38-57
---

OpenType - это формат шрифта, который обеспечивает лучшую поддержку международных языков и систем письма по сравнению с PostScript и TrueType. Особенности компоновки OpenType широко известны как функции OpenType. Aspose.WordsФормирование.HarfBuzz Пакет обеспечивает поддержку функций OpenType в Aspose.Words использовать HarfBuzz Движок формирования текста.

Aspose.Words Способен использовать объекты формовщика текста, предоставляемые извне. Форматор текста представляет собой шрифт и вычисляет информацию для формирования текста. Документ обычно относится к нескольким шрифтам, поэтому необходима фабрика формовщиков текста. Этот пакет содержит реализацию фабрики формовщиков текста, используемой Aspose.Words.Layout.LayoutOptions.TextShaperFactory Property.

{{% alert color="primary" %}}

Формирование текста выполняется только при экспорте в PDF. XPS Форматы.

{{% /alert %}}

В типичном приложении один экземпляр фабрики формовщиков текста делится между всеми экземплярами документов. Всякий раз, когда формировщик текста создается, доступ к файлу шрифта. Парсирование файла шрифта является дорогостоящей операцией, поэтому рекомендуется кэширование. Aspose.Words реализация BasicTextShaper Класс кэша, который обертывает реализацию фабрики формовщиков текста и кэширует экземпляры формовщиков текста, возвращенные фабрикой.

Следующий пример кода показывает, как включить поддержку функций OpenType.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
