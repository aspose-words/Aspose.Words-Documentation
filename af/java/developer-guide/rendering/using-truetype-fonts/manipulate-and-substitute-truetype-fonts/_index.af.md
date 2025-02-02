---
title: Manipuleer En Vervang TrueType Lettertipes
second_title: Aspose.Words vir Java
articleTitle: Manipuleer En Vervang TrueType Lettertipes
linktitle: Manipuleer En Vervang TrueType Lettertipes
description: "Aspose.Words vir Java kan die korrekte TrueType lettertipes in die resulterende dokument insluit om te verseker dat dit akkuraat vertoon word, of soek na'n geskikte lettertipe vervanging, of gebruik die Lettertipe terugval meganisme."
type: docs
weight: 10
url: /af/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words vereis TrueType lettertipes vir'n verskeidenheid take, insluitend die weergawe van dokumente na vaste bladsy formate, byvoorbeeld, PDF of XPS. Wanneer Aspose.Words 'n dokument weergee, moet dit die inbed en subset inbed van TrueType lettertipes in die gevolglike dokument uitvoer, wat'n normale praktyk is tydens'n dokumentgenerering, insluitend gewilde PDF of XPS formate. Dit verseker dat die dokument vir enige kyker dieselfde sal lyk. Daarbenewens vereis die XPS spesifikasie dat lettertipes altyd in die dokument ingebed moet word.

Om te verseker dat Aspose.Words die karakters akkuraat meet en relevante lettertipes suksesvol insluit, moet aan die volgende voorwaardes voldoen word::

1. Aspose.Words moet in staat wees om TrueType font lêers op die stelsel te vind en toegang te verkry.
1. Daar moet genoeg TrueType lettertipes beskikbaar wees vir Aspose.Words, verkieslik met dieselfde lettertipe familienaam as die wat in die dokument gebruik word.

Let daarop dat die lettertipe in die dokument'n entiteit verteenwoordig, soos familienaam, styl, grootte, kleur, wat verskil van die `TrueType` lettertipe (fisiese lettertipe) entiteit. Aspose.Words los die lettertipe in die dokument op na'n fisiese lettertipe op'n stadium van verwerking. Dit maak sekere take moontlik, meestal die taak om teks grootte te bereken tydens uitleg konstruksie en inbed/subset om vaste bladsy formate. 'n aantal ander minder gewilde take, soos lettertipe oplos en vervanging terwyl HTML gelaai word of inbed/subset na sommige vloei formate, word ook geaktiveer.

## Font Manipulasie En Prestasie Kwessies

Alle beskikbare lettertipe manipulasie meganismes is vervat in die [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) klas. Hierdie klas is verantwoordelik vir die haal van lettertipes binne gedefinieerde lettertipe bronne sowel as vir die Lettertipe Vervanging proses, soos hieronder beskryf.

Lettertipes word in verskeie stappe ontleed:

1. Verkryging van inligting vir lettertipe, oplos van alle beskikbare lettertipes.
1. Ontleed die opgeloste lettertipes om beskikbare glywe en statistieke (horisontaal en vertikaal) te kry.
1. Ontleding van die opgeloste lettertipes vir inbed en subset.

Wanneer Aspose.Words vir die eerste keer'n lettertipe in die dokument teëkom, probeer dit basiese lettertipe-inligting, soos die lettertipe se volle naam, familienaam, weergawe, styl, verkry uit die lettertipe-lêers in elke lettertipe-bron. Nadat al die lettertipes verkry is, gebruik Aspose.Words hierdie besonderhede om die vereiste lettertipe data of'n geskikte vervanging vir die versoekte lettertipe te vind.

Aangesien die prosedure hierbo beskryf is tydrowend, kan dit negatief beïnvloed aansoek prestasie by sy eerste bekendstelling. Elke geval van **FontSettings** het egter sy eie kas, wat die verwerkingstyd van daaropvolgende dokumente kan verminder. U kan byvoorbeeld'n voorbeeld van die **FontSettings** - klas tussen verskillende dokumente deel, waarmee u die laai van die dokumente kan bespoedig. Die volgende voorbeeld toon dit:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

In die geval wanneer **FontSettings** nie eksplisiet gedefinieer is nie, gebruik Aspose.Words die standaard **FontSettings** geval. Hierdie geval is ook outomaties gedeel tussen dokumente, en kan soos volg onttrek word:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

As u seker is dat alle verwerkingsdokumente dieselfde lettertipe-instellings benodig, word dit aanbeveel om die standaard **FontSettings** - instansie op te stel en te gebruik. Gestel jy moet dieselfde fontbronne vir al jou dokumente gebruik. In hierdie geval, kan jy net die verstek geval wysig soos volg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

Die persoonlike **FontSettings** het hoër prioriteit as die standaard geval.

{{% /alert %}}

## Beskikbaarheid En Vervanging van lettertipes

'n teks in'n dokument kan met verskillende lettertipes geformateer word, soos Arial, Times new Roman, Verdana en ander. Wanneer Aspose.Words 'n dokument weergee, probeer dit om die lettertipes te kies wat in die dokument gespesifiseer is.

Daar is egter situasies waar die presiese lettertipe nie gevind kan word nie en Aspose.Words dit moet vervang deur'n soortgelyke lettertipe. Aspose.Words kies die lettertipe volgens die volgende proses:

1. Aspose.Words probeer om'n lettertipe te vind onder die beskikbare lettertipe bronne met'n presiese lettertipe naam.
1. Aspose.Words probeer om die vereiste lettertipe te vind onder die lettertipes wat in die oorspronklike dokument ingebed is. Sommige dokumentformate soos DOCX kan ingebedde lettertipes bevat.
1. As Aspose.Words nie die vereiste lettertipe kan vind met die presiese naam wat ooreenstem nie, en die [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) eienskap wat vir hierdie lettertipe gedefinieer is, dan sal Aspose.Words die lettertipe vind wat met **AltName** gedefinieer is uit die [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) klas, wat die lettertipe inligting spesifiseer.
1. As Aspose.Words nie die gedefinieerde lettertipe kan opspoor nie, en **AltName** nie ook gedefinieer is nie, word die lettertipe vervangingsreëls een vir een toegepas, soos hieronder beskryf (wanneer die toepaslike vervanging gevind word, stop die Lettertipe Vervangingsproses en die volgende stap word nie uitgevoer nie):
   1. Aspose.Words sal probeer om OS lettertipe instellings toe te pas, indien hulle beskikbaar is, deur die `FontConfig` nut te gebruik. Hierdie nie-Windows kenmerk moet gebruik word met'n FontConfig - versoenbare OS. Byna enige Unix-gebaseerde OS het reeds'n `FontConfig` biblioteek wat ontwerp is om stelselwye lettertipe-konfigurasie, aanpassing en toegang tot toepassings te bied. Andersins kan hierdie biblioteek maklik deur die gebruiker geïnstalleer word.<br>
      Aspose.Words weet hoe om data te navraag doen en FontConfig resultate vir sy eie doeleindes te interpreteer. By verstek is die `FontConfig` nut gedeaktiveer. Jy kan dit soos volg aktiveer:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Die volgende stap is'n eenvoudige, maar ongelooflik kragtige meganisme genaamd [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). By verstek is hierdie funksie aktief en beskikbaar vir enige OS. Aspose.Words gebruik XML tabelle wat basiese vervangingsreëls vir verskillende OS definieer. Volgens die Tabel vervanging reël, sal die lys van vervanging lettertipe name gebruik word.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - 'n lettertipe wat vervang moet word, SubstituteFonts - lys van vervangingsvariante, geskei deur'n komma. Die eerste beskikbare lettertipe word gebruik vir vervanging.<br>
      Die hoofkenmerk van hierdie reël is die vermoë om jou eie vervangingstabelle te laai, soos dit in die volgende voorbeeld getoon word:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      U kan die bestaande tabel uit die pot as basis neem of dit programmaties op die volgende manier stoor:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Ten spyte van die buigsaamheid van hierdie meganisme, is daar'n paar gevalle wanneer dit beter is om dit uit te skakel, soos hieronder getoon:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. Die **FontInfo** vervangingsreël sal toegepas word as die tabel vervangingsreël nie die lettertipe kan vind nie. Hierdie meganisme is standaard geaktiveer. Aspose.Words vind die geskikste lettertipe volgens die lettertipe-inligting in'n spesifieke dokument. Hierdie inligting kan verkry word uit die **FontInfo** klas soos hieronder getoon:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Gebruikers kan nie inmeng in die werkstroom van hierdie funksie nie, tensy hulle besluit om dit uit te skakel in geval van onbevredigende resultate:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      As **FontInfo** nie beskikbaar is vir die ontbrekende lettertipe nie, stop die proses.
   1. **DefaultFont** vervangingsreël sal toegepas word in die geval wanneer die `FontInfo` vervanging ook misluk het. Hierdie reël is ook standaard geaktiveer. Volgens hierdie reël sal Aspose.Words probeer om die standaard lettertipe te gebruik wat in die [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) eienskap gespesifiseer is. As die gebruiker nie hul eie standaard lettertipe gekies het nie, sal "Times new Roman" as die standaard lettertipe gebruik word. Hierdie reël kan gedeaktiveer word soos hieronder getoon:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Om die huidige verstekfont te kontroleer, gebruik:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Om jou eie vervangingsopsie op te stel, doen aansoek:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. As Aspose.Words nie die lettertipe vervanging kan uitvoer nie, probeer dit om die eerste beskikbare lettertipe uit beskikbare lettertipe bronne te kry.
1. Ten slotte, as Aspose.Words nie enige lettertipes onder die beskikbare lettertipe bronne kan vind nie, maak dit die dokument met behulp van die gratis Fanwood lettertipe wat in die Aspose.Words vergadering ingebed is.

{{% alert color="primary" %}}

As **FontInfo** beskikbaar is, sal die *FontInfo substitution rule* altyd die lettertipe oplos en die standaard lettertipe reël oorskryf. As jy die standaard lettertipe reël wil gebruik, moet jy die *FontInfo substitution rule* deaktiveer. Let daarop dat die *FontConfig substitution rule* die lettertipe in die meeste gevalle sal oplos, en dus alle ander reëls oorskry.

{{% /alert %}}

## Hoe Om Te Erken Dat Die Lettertipe Vervang Is

Soms is dit dalk onduidelik waarom die dokument uitleg verander het, of waarom sommige lettertipe nie lyk soos verwag nie. In sulke gevalle, font vervanging waarskuwings boodskappe geïmplementeer deur die [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) koppelvlak kom tot die redding. Hulle het die [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) waarskuwing tipe en die standaard beskrywing teks formaat, "Font"<OriginalFont>' is nie gevind nie. Gebruik '<SubstitutionFont> 'lettertipe in plaas daarvan. Rede: <Reason>", met die volgende redes:

- "alternatiewe naam uit die dokument" - vir vervanging deur [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "fontconfig substitution" - vir vervanging deur lettertipe konfigurasie reël
- "tabel vervanging" vir vervanging deur tabel reël
- "font info substitution" - vir vervanging deur font info reël
- "standaard lettertipe vervanging" - vir vervanging deur standaard lettertipe reël
- "eerste beskikbare lettertipe" - vir vervanging met eerste beskikbare lettertipe

## Font FallBack Instellings van XML

Daar is twee verskillende meganismes wat gebruik word in Aspose.Words - Lettertipe vervanging en Lettertipe terugval. Lettertipe vervanging word gebruik wanneer die lettertipe wat in die dokument gespesifiseer is nie onder die lettertipe bronne gevind kon word soos dit in die bogenoemde afdelings beskryf is nie. Die Lettertipe terugval meganisme word gebruik wanneer die lettertipe opgelos word, maar dit bevat nie'n spesifieke karakter nie. In hierdie geval, Aspose.Words probeer om een van die terugval lettertipes vir die karakter te gebruik.

Daar is'n [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) metode wat outomaties die terugslaginstellings bou deur beskikbare lettertipes te skandeer. Aangesien hierdie metode'n nie-optimale terugslag instelling kan produseer, kan jy die lettertipe terugslag gedrag beheer deur die gebruik van die eienskappe van die [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) klas. Hierdie klas spesifiseer instellings van die font fallback meganisme. Jy kan'n voorbeeld van die **FontFallbackSettings** klas soos volg kry:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Net soos *Table substitution rule*, gebruik hierdie meganisme XML tabelle vir konfigurasie. Hierdie XML tabelle kan gelaai en gestoor word met die volgende metodes:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Die Aspose.Words vrystelling sluit twee tabelle in: *MsOfficeFallbackSetting.xml* en *NotoFallbackSetting.xml*.

Die *MsOfficeFallbackSetting* tabel definieer'n vervanging strategie vir'n reeks van karakters, wat soortgelyk is aan die strategie wat gebruik word deur Microsoft Word. Die strategie vereis dus die installering van Microsoft Kantoor lettertipes. *MsOfficeFallbackSetting* kan geaktiveer word deur die volgende metode te gebruik:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

Die *NotoFallbackSetting* tabel is spesiaal geskep vir gebruik met Google Noto lettertipes (sien meer oor Google Noto lettertipe instellings in die volgende afdeling) en kan soos volg geaktiveer word:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

Die volgende kode voorbeeld demonstreer hoe om font fallback instellings van'n XML lêer te laai:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

In die bogenoemde kode voorbeeld, is die volgende XML lêer gebruik:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## Vooraf gedefinieerde Font FallBack Instellings vir Google Noto Fonts

Aspose.Words bied vooraf gedefinieerde lettertipe terugval instellings vir Google Noto lettertipes. Dit is gratis lettertipes gelisensieer onder SIL Open Font License, wat afgelaai kan word van Google Noto Lettertipes. Die **FontFallbackSettings** klas bied'n [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) metode. Dit laai vooraf gedefinieerde terugval instellings, wat Google Noto lettertipes gebruik soos in die kode voorbeeld hieronder getoon:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Slegs Sans-Styl Noto-lettertipes met gereelde gewig word in vooraf gedefinieerde instellings gebruik.

{{% /alert %}}

## Waar Aspose.Words Soek Vir Lettertipes

Aspose.Words probeer om TrueType lettertipes op die lêerstelsel outomaties te vind. Gewoonlik kan jy staatmaak op die standaard gedrag van Aspose.Words om die `TrueType` lettertipes te vind, maar soms moet jy jou eie dopgehou spesifiseer wat TrueType lettertipes bevat. Die [Spesifiseer TrueType Lettertipes Ligging](/words/java/specify-truetype-fonts-location/) onderwerp beskryf hoe en waar Aspose.Words na lettertipes soek, asook hoe om jou eie lettertipe te spesifiseer.

## Verskille In Die Verwerking Van Font Formate in Aspose.Words en Microsoft Word

Daar is'n paar verskille in die verwerking van lettertipe formate in Aspose.Words en Microsoft Word soos getoon in die tabel hieronder:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType lettertipes en OpenType lettertipes met TrueType buitelyne | Ondersteun. | Ondersteun. |
| OpenType lettertipes met PostScript buitelyne | Ondersteun vir die meeste scenario's. Inbedding na vaste bladsy formate soos PDF en XPS word nie ondersteun nie. Die teks word vervang met bitmap beelde. | Ondersteun vir die meeste scenario's, insluitend inbed na vaste bladsy formate. |
| OpenType Lettertipe Variasies | Slegs genoemde gevalle word ondersteun. Deurlopende variasies word nie ondersteun nie. | Ondersteun vir die enigste verstekinstansie. Genoemde gevalle en deurlopende variasies word nie ondersteun nie. |
| Tipe 1-lettertipes | Ondersteun op Windows weergawes voor 2013 en op MacOS weergawes. Ondersteuning word afgelaai op Windows weergawes wat begin met 2013. | Ondersteun nie. |

## Sien Ook

- [Google Noto Lettertipes](https://fonts.google.com/noto) om gratis lettertipes af te laai


