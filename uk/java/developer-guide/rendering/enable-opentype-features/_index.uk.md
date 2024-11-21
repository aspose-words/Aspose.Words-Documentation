---
title: Увімкнути функції OpenType в Java
second_title: Aspose.Words для Java
articleTitle: Увімкнути характеристики OpenType
linktitle: Увімкнути характеристики OpenType
description: "Розширені функції друку в Aspose.Words для Javaй"
type: docs
weight: 25
url: /uk/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType - це формат шрифту, введений для забезпечення кращої підтримки міжнародних мов та письмових систем у порівнянні з PostScript та TrueType. Особливості макета OpenType зазвичай відомі як функції OpenType. Aspose.Words.Шапінг.HarfBuzz Пакет надає підтримку функціям OpenType Aspose.Words використання `HarfBuzz` текстовий двигун формування.

Aspose.Words Можливість використання об'єктів текстових форм, що надаються зовнішньо. У текстовому редакторі є шрифт, який містить інформацію про формулювання тексту. Документ, як правило, відноситься до декількох шрифтів, таким чином, є потреба у текстовому редакторі. Цей пакет містить імплементацію фабрики текстових форм, що використовує Aspose.Words.Layout.LayoutOptions.TextShaperFactory властивість.

{{% alert color="primary" %}}

Текстове формування здійснюється тільки при експорті в PDF або XPS формати.

{{% /alert %}}

У типовому прикладі текстового формера є окремий екземпляр. Після того, як текстовий редактор створюється файл шрифту. Придбання файлу шрифту є дорогою функцією, таким чином, рекомендується кешування. Aspose.Words Реалізація Головна Клас кешу, який обгортає реалізацію та кешує текстові екземпляри, що поставляються загортанням заводу.

Приклад коду показує, як включити функцію OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
