---
title: Povolit funkce OpenType v C#
second_title: Aspose.Words místo .NET
articleTitle: Povolit funkce OpenType
linktitle: Povolit funkce OpenType
description: "Pokročilé typografické funkce pomocí C#."
type: docs
weight: 25
url: /cs/net/enable-opentype-features/
timestamp: 2024-07-10-14-38-57
---

OpenType je formát písma, zavedený tak, aby poskytoval lepší podporu pro mezinárodní jazyky a systémy psaní ve srovnání s PostScript a TrueType. Vlastnosti rozvržení OpenType jsou běžně známé jako funkce OpenType. Aspose.Words- Tvarování.HarfBuzz balíček poskytuje podporu funkcí OpenType v Aspose.Words podání HarfBuzz textový tvarovací motor.

Aspose.Words je schopen používat textové tvarovací objekty poskytované externě. Textový tvarovač představuje písmo a počítá tvarování informací pro text. Dokument se obvykle vztahuje na více fontů, takže je potřeba továrna na tvarování textu. Tento balíček obsahuje realizaci textu tvarovač továrny využívající Aspose.Words.Layout.LayoutOptions.TextShaperFactory property.

{{% alert color="primary" %}}

Tvorba textu se provádí pouze při exportu do PDF nebo XPS formáty.

{{% /alert %}}

V typické aplikaci je ve všech případech sdílena jedna instance textové továrny. Kdykoliv je vytvořen textový tvarovač, je přístup k font souboru. Analýza souboru s písmem je drahá operace, proto se doporučuje cachování. Aspose.Words nástroje ZákladníTextShaper Cache třída, která zabalí text tvarovač tovární implementace a cache text tvarovač instance vráceny zabalené továrny.

Následující příklad kódu vám ukáže, jak zapnout podporu funkcí OpenType.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
