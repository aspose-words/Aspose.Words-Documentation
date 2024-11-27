---
title: Lettertypemanipulatie en prestatieproblemen in C++
second_title: Aspose.Words voor C++
articleTitle: Lettertype manipulatie en prestatieproblemen
linktitle: Lettertype manipulatie en prestatieproblemen
description: "Aspose.Words voor C++ gebruikt lettertype volledige naam, familienaam, versie, stijl om de vereiste lettertypegegevens of een geschikte vervanging voor het gevraagde lettertype te vinden. Met FontSettings kunt u het laden van de documenten versnellen."
type: docs
weight: 11
url: /nl/cpp/font-manipulation-and-performance-issues/
timestamp: 2024-09-24-14-35-44
---

Alle beschikbare manipulatiemechanismen voor lettertypen bevinden zich in de klasse [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). Deze klasse is verantwoordelijk voor het ophalen van lettertypen binnen gedefinieerde lettertypebronnen en voor het Lettertypesubstitutieproces, zoals hieronder beschreven.

## Ontleden van de opgeloste lettertypen

Lettertypen worden in verschillende stappen geparseerd:

1. Het verkrijgen van informatie voor lettertype, oplossen van alle beschikbare lettertypen.
1. Parseren van de opgeloste lettertypen om beschikbare glyphs en metrics (horizontaal en verticaal) te krijgen.
1. Parsen van de opgeloste lettertypen voor het insluiten en subsetten.

Wanneer Aspose.Words voor het eerst een lettertype in het document tegenkomt, probeert het basislettertypegegevens, zoals de volledige naam van het lettertype, de familienaam, De versie en de stijl, te verkrijgen uit de lettertypebestanden in elke lettertypebron. Nadat alle lettertypen zijn opgehaald, gebruikt Aspose.Words deze gegevens om de vereiste lettertypegegevens of een geschikte vervanging voor het gevraagde lettertype te vinden.

## Prestatieprobleem Bij Het Vervangen Van Lettertypen

Aangezien de hierboven beschreven procedure tijdrovend is, kan deze de prestaties van de applicatie bij de eerste lancering negatief beïnvloeden. Elk exemplaar van **FontSettings** heeft echter zijn eigen cache, waardoor de verwerkingstijd van latere documenten kan worden verkort. U kunt bijvoorbeeld een exemplaar van de klasse **FontSettings** delen tussen verschillende documenten, waardoor u het laden van de documenten kunt versnellen. Het volgende voorbeeld toont dit aan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

In het geval dat **FontSettings** niet expliciet is gedefinieerd, gebruikt Aspose.Words De Standaard **FontSettings** instantie. Deze instantie wordt ook automatisch gedeeld tussen documenten en kan als volgt worden geëxtraheerd:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Het standaard FontSettings - exemplaar gebruiken

Als u er zeker van bent dat alle verwerkingsdocumenten dezelfde lettertypeinstellingen vereisen, wordt het aanbevolen om de standaard instantie **FontSettings** in te stellen en te gebruiken. Stel dat u voor al uw documenten dezelfde lettertypebronnen moet gebruiken. In dit geval kunt u de standaardinstantie als volgt wijzigen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

De aangepaste **FontSettings** heeft een hogere prioriteit dan de standaard instantie.

{{% /alert %}}
