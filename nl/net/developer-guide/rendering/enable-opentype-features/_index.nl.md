---
title: OpenType functies inschakelen in C#
second_title: Aspose.Words voor .NET
articleTitle: OpenType functies inschakelen
linktitle: OpenType functies inschakelen
description: "Geavanceerde typografie functies met behulp van C#."
type: docs
weight: 25
url: /nl/net/enable-opentype-features/
timestamp: 2024-07-10-14-38-57
---

OpenType is een lettertypeformaat, geïntroduceerd om betere ondersteuning te bieden voor internationale talen en schrijfsystemen in vergelijking met PostScript en TrueType. De lay-out functies van OpenType zijn algemeen bekend als OpenType functies. Aspose.Words. Shaping.HarfBuzz pakket biedt ondersteuning voor OpenType functies in Aspose.Words gebruik HarfBuzz tekstvormmachine.

Aspose.Words in staat is om externe tekstvormerobjecten te gebruiken. Een tekstvormer vertegenwoordigt een lettertype en berekent de vorminformatie voor een tekst. Een document verwijst meestal naar meerdere lettertypen, zodat een tekstvormer fabriek nodig is. Dit pakket bevat een implementatie van een tekstvormer fabriek gebruikt door Aspose.Words.Layout.LayoutOptions.TextShaperFactory eigendom.

{{% alert color="primary" %}}

Tekstvorming wordt alleen uitgevoerd bij exporteren naar PDF of XPS formaat.

{{% /alert %}}

In een typische toepassing van een tekstvormer fabriek wordt gedeeld over alle documenten instanties. Wanneer tekstvormer wordt aangemaakt, wordt een lettertypebestand geopend. Het ontleden van een lettertypebestand is een dure bewerking dus caching wordt aanbevolen. Aspose.Words werktuigen BasistekstShaper Cache klasse die tekstvormer fabrieksimplementatie en caches tekstvormer instanties teruggeven door de verpakte fabriek.

Het volgende voorbeeld van code laat zien hoe u de ondersteuning van OpenType functies kunt inschakelen.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
