---
title: OpenType functies inschakelen in Java
second_title: Aspose.Words voor Java
articleTitle: OpenType functies inschakelen
linktitle: OpenType functies inschakelen
description: "Geavanceerde typografie functies in Aspose.Words voor Java."
type: docs
weight: 25
url: /nl/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType is een lettertypeformaat, geïntroduceerd om betere ondersteuning te bieden voor internationale talen en schrijfsystemen in vergelijking met PostScript en TrueType. De layout functies van OpenType zijn algemeen bekend als OpenType functies. Aspose.Words. Shaping.HarfBuzz pakket biedt ondersteuning voor OpenType functies in Aspose.Words de `HarfBuzz` tekstvormmachine.

Aspose.Words in staat is om externe tekstvormers te gebruiken. Een tekstvormer vertegenwoordigt een lettertype en berekent vormgevende informatie voor een tekst. Een document verwijst meestal naar meerdere lettertypen dus een tekstvormer fabriek is nodig. Dit pakket bevat een implementatie van een tekstvormer fabriek gebruikt door Aspose.Words.Layout.LayoutOptions.TextShaperFactory eigendom.

{{% alert color="primary" %}}

Tekstvorming wordt alleen uitgevoerd bij exporteren naar PDF of XPS formaat.

{{% /alert %}}

In een typische toepassing van een tekstvormer fabriek wordt gedeeld over alle documenten instanties. Wanneer een tekstvormer wordt aangemaakt, wordt een lettertypebestand geopend. Het ontleden van een lettertypebestand is een dure bewerking dus caching wordt aanbevolen. Aspose.Words werktuigen BasistekstShaper Cache-klasse die tekstvormer fabrieksimplementatie omwikkelt en caches tekstvormer instanties teruggegeven door de verpakte fabriek.

Het volgende voorbeeld van code laat zien hoe u de ondersteuning van OpenType functies kunt inschakelen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
