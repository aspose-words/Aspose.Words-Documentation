---
title: Увімкнути функції OpenType в C#
second_title: Aspose.Words для .NET
articleTitle: Увімкнути функції OpenType
linktitle: Увімкнути функції OpenType
description: "Розширені функції друку C#й"
type: docs
weight: 25
url: /uk/net/enable-opentype-features/
timestamp: 2024-07-10-14-38-57
---

OpenType - це формат шрифту, введений для забезпечення кращої підтримки міжнародних мов та письмових систем у порівнянні з PostScript та TrueType. Особливості макета OpenType широко відомі як функції OpenType. Aspose.Words.Shaping.HarfBuzz Пакет надає підтримку функціям OpenType Aspose.Words використання HarfBuzz текстовий двигун формування.

Aspose.Words Можливість використання об'єктів текстових форм, що надаються зовнішньо. У текстовому редакторі є шрифт, який містить інформацію про формулювання тексту. Документ, як правило, відноситься до декількох шрифтів, таким чином, потрібен текстовий обробний завод. Цей пакет містить імплементацію фабрики текстових форм, що використовує Aspose.Words.Layout.LayoutOptions.TextShaperFactory майно.

{{% alert color="primary" %}}

Текстове формування здійснюється тільки при експорті в PDF або XPS формати.

{{% /alert %}}

У типовому прикладі текстового формера є окремий екземпляр. Після того, як текстовий редактор створюється файл шрифту. Придбання файлу шрифту є дорогою функцією, таким чином, рекомендується кешування. Aspose.Words Реалізація BasicTextShaper Клас кешу, який обгортає реалізацію та кешує текстові екземпляри, які повернулися на завод.

Приклад коду показує, як включити функцію OpenType.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
