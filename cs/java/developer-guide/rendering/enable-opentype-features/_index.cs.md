---
title: Povolit funkce OpenType v Java
second_title: Aspose.Words místo Java
articleTitle: Povolit funkce OpenType
linktitle: Povolit funkce OpenType
description: "Pokročilé typografie funkce v Aspose.Words místo Java."
type: docs
weight: 25
url: /cs/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType je formát písma, který poskytuje lepší podporu pro mezinárodní jazyky a systémy psaní ve srovnání s PostScript a TrueType. Vlastnosti uspořádání OpenType jsou běžně známé jako funkce OpenType. Aspose.Words- Tvarování.HarfBuzz balíček poskytuje podporu pro funkce OpenType v Aspose.Words s použitím `HarfBuzz` textový tvarovací motor.

Aspose.Words je schopen používat textové tvarovací objekty poskytované externě. Textový tvarovač představuje písmo a počítá tvarování informací pro text. Dokument se obvykle vztahuje na více fontů, takže je potřeba továrna na tvarování textu. Tento balíček obsahuje implementaci textový tvarovač továrny využívající Aspose.Words.Layout.LayoutOptions.TextShaperFactory vlastnost.

{{% alert color="primary" %}}

Formování textu se provádí pouze při exportu do PDF nebo XPS formáty.

{{% /alert %}}

V typické aplikaci je ve všech případech sdílena jediná instance továrny na tvarování textu. Kdykoli je vytvořen textový tvarovač, je přístup k souboru s písmem. Analýza font souboru je drahá operace, proto se doporučuje caching. Aspose.Words nástroje ZákladníTextShaper Cache třída, která zabalí text tvarovač továrna implementace a cache text tvarovač instance vráceny zabalené továrny.

Následující příklad kódu vám ukáže, jak zapnout podporu funkcí OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
