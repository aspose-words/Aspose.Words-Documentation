---
title: Font Manipulasie En Prestasie Kwessies in C++
second_title: Aspose.Words vir C++
articleTitle: Font Manipulasie En Prestasie Kwessies
linktitle: Font Manipulasie En Prestasie Kwessies
description: "Aspose.Words vir C++ gebruik lettertipe volle naam, familienaam, weergawe, styl om die vereiste lettertipe data of'n geskikte plaasvervanger vir die versoekte lettertipe te vind. FontSettings laat jou toe om die laai van die dokumente te bespoedig."
type: docs
weight: 11
url: /af/cpp/font-manipulation-and-performance-issues/
---

Alle beskikbare lettertipe manipulasie meganismes is vervat in die [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) klas. Hierdie klas is verantwoordelik vir die haal van lettertipes binne gedefinieerde lettertipe bronne sowel as vir die Lettertipe Vervanging proses, soos hieronder beskryf.

## Ontleed Die Opgeloste Lettertipes

Lettertipes word in verskeie stappe ontleed:

1. Verkryging van inligting vir lettertipe, oplos van alle beskikbare lettertipes.
1. Ontleed die opgeloste lettertipes om beskikbare glywe en statistieke (horisontaal en vertikaal) te kry.
1. Ontleding van die opgeloste lettertipes vir inbed en subset.

Wanneer Aspose.Words vir die eerste keer'n lettertipe in die dokument teëkom, probeer dit basiese lettertipe-inligting, soos die lettertipe se volle naam, familienaam, weergawe, styl, verkry uit die lettertipe-lêers in elke lettertipe-bron. Nadat al die lettertipes verkry is, gebruik Aspose.Words hierdie besonderhede om die vereiste lettertipe data of'n geskikte vervanging vir die versoekte lettertipe te vind.

## Prestasieprobleem Wanneer Lettertipes Vervang Word

Aangesien die prosedure hierbo beskryf is tydrowend, kan dit negatief beïnvloed aansoek prestasie by sy eerste bekendstelling. Elke geval van **FontSettings** het egter sy eie kas, wat die verwerkingstyd van daaropvolgende dokumente kan verminder. U kan byvoorbeeld'n voorbeeld van die **FontSettings** - klas tussen verskillende dokumente deel, waarmee u die laai van die dokumente kan bespoedig. Die volgende voorbeeld toon dit:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

In die geval wanneer **FontSettings** nie eksplisiet gedefinieer is nie, gebruik Aspose.Words die standaard **FontSettings** geval. Hierdie geval is ook outomaties gedeel tussen dokumente, en kan soos volg onttrek word:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Gebruik Die Verstek FontSettings Instansie

As u seker is dat alle verwerkingsdokumente dieselfde lettertipe-instellings benodig, word dit aanbeveel om die standaard **FontSettings** - instansie op te stel en te gebruik. Gestel jy moet dieselfde fontbronne vir al jou dokumente gebruik. In hierdie geval, kan jy net die verstek geval wysig soos volg:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

Die persoonlike **FontSettings** het hoër prioriteit as die standaard geval.

{{% /alert %}}