---
title: Manipuleren en vervangen TrueType Lettertypen in C#
second_title: Aspose.Words voor .NET
articleTitle: Manipuleren en vervangen TrueType Lettertypen
linktitle: Manipuleren en vervangen TrueType Lettertypen
description: "Aspose.Words voor .NET kan de juiste TrueType-lettertypen insluiten in het resulterende document om ervoor te zorgen dat het nauwkeurig wordt weergegeven met behulp van C#. Als een lettertype of een specifiek teken niet beschikbaar is, Aspose.Words zoekt naar een geschikte lettertypevervanging of gebruikt het Font-fallbackmechanisme."
type: docs
weight: 10
url: /nl/net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words vereist waar Type lettertypen voor verschillende taken, waaronder het renderen van documenten naar vaste paginaformaten, bijvoorbeeld PDF of XPS. Wanneer Aspose.Words maakt een document, het moet uitvoeren inbedding en subset inbedding van TrueType lettertypen in het resulterende document, dat is een normale praktijk tijdens een document generatie, inclusief populaire PDF of XPS formaat. Dit zorgt ervoor dat het document hetzelfde zal verschijnen voor elke kijker. Bovendien heeft de XPS specificatie vereist dat lettertypen altijd in het document worden ingebed.

Om ervoor te zorgen Aspose.Words nauwkeurig de tekens meet en met succes relevante lettertypen insluitt, moet aan de volgende voorwaarden worden voldaan:

1. Aspose.Words moet in staat zijn om TrueType-lettertypebestanden op het systeem te vinden en te openen.
1. Er moeten voldoende TrueType lettertypen beschikbaar zijn voor Aspose.Words, bij voorkeur met dezelfde font familienamen als in het document.

Merk op dat het lettertype in het document een entiteit vertegenwoordigt, zoals familienaam, stijl, grootte, kleur, die verschilt van de `TrueType` Lettertype (fysiek lettertype) entiteit. Aspose.Words lost het lettertype in het document op tot een fysiek lettertype in een bepaald stadium van verwerking. Dit maakt bepaalde taken mogelijk, meestal de taak van het berekenen van tekstgrootte tijdens de lay-out constructie en inbedding/subsetting naar vaste pagina-formaten. Een aantal andere minder populaire taken, zoals het oplossen en vervangen van lettertype tijdens het laden van HTML of inbedding/subsetting naar sommige stroomformaten, zijn eveneens ingeschakeld.

## Lettertype Manipulatie en Prestatieproblemen

Alle beschikbare font manipulatie mechanismen zijn opgenomen in de [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) Klasse. Deze klasse is verantwoordelijk voor het ophalen van lettertypen binnen gedefinieerde lettertypebronnen en voor het Font Substitutieproces, zoals hieronder beschreven.

Lettertypen worden in verschillende stappen ontleed:

1. Informatie verkrijgen voor lettertype, oplossen van alle beschikbare lettertypen.
1. Ontleden van de opgeloste lettertypen om beschikbaar te komen glyphs en metrics (horizontaal en verticaal).
1. Ontleden van de gevonden lettertypen voor inbedding en subsetting.

Wanneer Aspose.Words Ontmoett een lettertype in het document voor de eerste keer, het probeert om basislettertype informatie te verkrijgen, zoals het lettertype volledige naam, familienaam, versie, stijl, uit de lettertypebestanden in elke bron. Nadat alle lettertypen zijn opgehaald, Aspose.Words gebruikt deze gegevens om de vereiste lettertypegegevens te vinden of een geschikte vervanging voor het gewenste lettertype.

Aangezien de hierboven beschreven procedure tijdrovend is, kan deze de prestaties van de toepassing bij de eerste lancering negatief beïnvloeden. Elk geval van **FontSettings** heeft een eigen cache, die de verwerkingstijd van latere documenten kan verminderen. Bijvoorbeeld, kunt u een instantie van de **FontSettings** klasse tussen verschillende documenten, waarmee u het laden van de documenten kunt versnellen. Het volgende voorbeeld toont dit aan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOption.cs" >}}

In het geval van **FontSettings** is niet expliciet gedefinieerd; Aspose.Words gebruikt de standaard **FontSettings** voorbeeld. Deze instantie wordt ook automatisch gedeeld tussen documenten, en kan als volgt worden uitgepakt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsDefaultInstance.cs" >}}

Als u er zeker van bent dat alle verwerkingsdocumenten dezelfde lettertypeinstellingen nodig hebben, dan is het raadzaam om de standaardinstellingen in te stellen en te gebruiken **FontSettings** voorbeeld. Stel dat u dezelfde lettertypebronnen moet gebruiken voor al uw documenten. In dit geval kunt u de standaard instantie als volgt wijzigen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cs" >}}

{{% alert color="primary" %}}

De aangepaste **FontSettings** hebben hogere prioriteit dan de standaard instantie.

{{% /alert %}}

## Lettertype beschikbaarheid en substitutie

Een tekst in een document kan worden geformatteerd met verschillende lettertypen, zoals Arial, Times New Roman, Verdana en andere. Wanneer Aspose.Words geeft een document weer, het probeert de lettertypen te selecteren die in het document zijn opgegeven.

Er zijn echter situaties waarin het exacte lettertype niet gevonden kan worden en Aspose.Words moet het vervangen door een soortgelijk lettertype. Aspose.Words selecteert het lettertype volgens het volgende proces:
1. Aspose.Words probeert een lettertype te vinden onder de beschikbare lettertypebronnen met een exacte lettertypenaam.
1. Aspose.Words probeert het gewenste lettertype te vinden onder de lettertypen die in het oorspronkelijke document zijn ingebed. Sommige documentformaten zoals DOCX kunnen ingebedde lettertypen bevatten.
1. Als Aspose.Words kan het gewenste lettertype niet vinden met de exacte naam match, en de [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/altname/) eigenschap gedefinieerd voor dit lettertype, dan Aspose.Words vindt het lettertype gedefinieerd met **AltName** van de [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) klasse, die de lettertypeinformatie specificeert.
1. Als Aspose.Words kan het gedefinieerde lettertype niet vinden, en **AltName** wordt niet ook gedefinieerd, dan worden de regels voor lettertypevervanging één voor één toegepast, zoals hieronder beschreven (wanneer de juiste vervanging wordt gevonden, stopt het Font Substitutieproces en wordt de volgende stap niet uitgevoerd):
   1. Ten eerste, Aspose.Words probeert de naam van het lettertype te verwerken om de substitutie te krijgen, met name probeert achtervoegsels te verwijderen met "-" en "," scheidingstekens.<br/>
      Als deze substitutieregel plaatsvindt, is er geen "Font "<OriginalFont>" gevonden. In plaats daarvan wordt het lettertype "<substitutionFont>' gebruikt. Reden: lettertypenaamvervanging." Waarschuwing verschijnt.<br/>
            {{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersSystemAndCustomFolder-GetSubstitutionWithoutSuffixes.cs" >}}
   1. Daarna Aspose.Words probeert OS-lettertypeinstellingen toe te passen, indien deze beschikbaar zijn, door gebruik te maken van de **FontConfig** nut. DitWindows functie moet worden gebruikt met een FontConfig-compatibel besturingssysteem. Bijna elke Unix-gebaseerde besturingssysteem heeft al een `FontConfig` bibliotheek die is ontworpen om systeembrede lettertype configuratie, aanpassing en toegang tot toepassingen te bieden. Anders kan deze bibliotheek eenvoudig door de gebruiker worden geïnstalleerd.
      Aspose.Words weet hoe je gegevens moet opvragen en FontConfig resultaten moet interpreteren voor eigen doeleinden. Standaard, de `FontConfig` hulpprogramma is uitgeschakeld. U kunt het als volgt inschakelen:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1. De volgende stap maakt gebruik van een eenvoudig maar krachtig mechanisme genaamd **Table** substitutieregel. Standaard is deze functie actief en beschikbaar voor het gegeven besturingssysteem. Aspose.Words zal het lettertype vervangen door deze regel als het niet wordt vervangen door de `FontConfig` vervangingsregel.<br/>
      Aspose.Words maakt gebruik van XML-tabellen, die de basis substitutieregels voor verschillende besturingssystemen definiëren. Volgens de tabel vervangende regel, zal de lijst van vervangende lettertypenamen worden gebruikt.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      Het belangrijkste kenmerk van deze regel is de mogelijkheid om uw eigen substitutietabellen te laden, zoals het wordt weergegeven in het volgende voorbeeld:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      Ondanks de flexibiliteit van dit mechanisme, zijn er enkele gevallen waarin het beter is om het uit te schakelen, zoals hieronder getoond:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1. De **FontInfo** substitutieregel zal worden toegepast als de tabel substitutieregel het lettertype niet kan vinden. Dit mechanisme is standaard ingeschakeld. Aspose.Words vindt het meest geschikte lettertype volgens de lettertypeinformatie in een bepaald document. Deze informatie is verkrijgbaar bij de **FontInfo** klasse zoals hieronder weergegeven:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      Gebruikers kunnen zich niet mengen in de workflow van deze functie, tenzij zij besluiten deze uit te schakelen in geval van onbevredigende resultaten:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      Als **FontInfo** is niet beschikbaar voor het ontbrekende lettertype, dan stopt het proces.<br/>
   1. **DefaultFont** substitutieregel wordt toegepast wanneer de `FontInfo` Ook vervanging is mislukt. Deze regel is standaard ook ingeschakeld. Volgens deze regel, Aspose.Words zal proberen het standaardlettertype te gebruiken dat in de [DefaultFontName](https://reference.aspose.com/words/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/) eigendom. Als de gebruiker zijn eigen standaardlettertype niet heeft gekozen, wordt "Times New Roman" gebruikt als standaardlettertype. Deze regel kan uitgeschakeld worden zoals hieronder getoond:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      Gebruik:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      Voor het instellen van uw eigen vervangende optie, gelden:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. Als Aspose.Words is niet in staat om de lettertypevervanging uit te voeren, het probeert het eerste beschikbare lettertype uit beschikbare broncode te krijgen.
1. Ten slotte: Aspose.Words kan geen lettertypen vinden onder de beschikbare lettertypebronnen, het geeft het document weer met behulp van het gratis Fanwood lettertype dat is ingebed in de Aspose.Words Montage.<br/>

Als **FontInfo** is beschikbaar, de *FontInfo substitutieregel* zal altijd het lettertype oplossen en de standaard lettertyperegel overschrijven. Als u de standaard lettertyperegel wilt gebruiken, moet u de *FontInfo substitutieregel* uitschakelen. Merk op dat de *FontConfig substitutieregel* het lettertype in de meeste gevallen zal oplossen en dus alle andere regels overschrijft.

## Hoe te herkennen Dat het lettertype werd vervangen

Soms kan het onduidelijk zijn waarom de documentindeling is veranderd, of waarom sommige lettertypen er niet uitzien zoals verwacht. In dergelijke gevallen, font substitutie waarschuwingen berichten uitgevoerd door de [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) interface komen te hulp. Zij hebben de [FontSubstitution](https://reference.aspose.com/words/net/aspose.words/warningtype/) waarschuwingstype en het standaard beschrijvingsformaat, "Font"<originalfont>' is niet gevonden. Gebruik<substitutionfont>In plaats daarvan het lettertype. Reden: <reason>" met de volgende redenen:</reason></substitutionfont></originalfont>

- "alternatieve naam van het document" [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/properties/altname)
- "fontconfig vervanger" voor vervanging door lettertypeconfiguratieregel
- "table vervanger" voor vervanging door tabelregel
- "font info vervanger" voor vervanging door font info regel
- "standaard lettertypevervanging"
- "first available font" voor vervanging door eerste beschikbare lettertype

## Lettertype FallBack-instellingen van XML

Er zijn twee verschillende mechanismen gebruikt in Aspose.Words Lettertypevervanging en Font terugval. Lettertypevervanging wordt gebruikt wanneer het in het document gespecificeerde lettertype niet gevonden kon worden onder de broncode zoals het beschreven werd in de bovenstaande secties. Het fallbackmechanisme van het lettertype wordt gebruikt wanneer het lettertype is opgelost, maar bevat geen specifiek karakter. In dit geval, Aspose.Words probeert een van de fallback lettertypen voor het karakter te gebruiken.

Er is een [BuildAutomatic](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/) methode die automatisch bouwt de terugval instellingen door het scannen van beschikbare lettertypen. Aangezien deze methode kan leiden tot een niet-optimale terugval instelling, kunt u het font terugval gedrag te controleren door gebruik te maken van de eigenschappen van de [FontFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/) Klasse. Deze klasse specificeert de instellingen van het font terugvalmechanisme. U kunt een voorbeeld van de **FontFallbackSettings** klasse:

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

Net als *Table substitutieregel* gebruikt dit mechanisme XML-tabellen voor configuratie. Deze XML tabellen kunnen worden geladen en opgeslagen met de volgende methoden:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

De Aspose.Words release bevat twee tabellen: *MsOfficeFallbackSetting.xml* en *NotoFallbackSetting.xml*.

De *MsOfficeFallbackSetting* tabel definieert een vervangende strategie voor een reeks tekens, die vergelijkbaar is met de strategie die wordt gebruikt door Microsoft Word. De strategie vereist dus de installatie van Microsoft Kantoorlettertypen. *MsOfficeFallbackSetting* kan worden geactiveerd met de volgende methode:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

De *NotoFallbackSetting* tabel is speciaal gemaakt voor gebruik met Google Noto lettertypen (zie meer over Google Noto lettertypeinstellingen in de volgende sectie) en kunnen als volgt worden ingeschakeld:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

Het volgende voorbeeld van code laat zien hoe je font fallback instellingen uit een XML-bestand kunt laden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetFontFallbackSettings.cs" >}}

In het bovenstaande voorbeeld wordt het volgende XML bestand gebruikt:

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

## Voorgedefinieerde Font FallBack-instellingen voor Google Noto Lettertypen

Aspose.Words geeft vooraf gedefinieerde font fallback instellingen voor Google Noto Lettertypen. Dit zijn gratis lettertypen gelicentieerd onder SIL Open License, die kunnen worden gedownload van Google Noto Lettertypen. De **FontFallbackSettings** klasse geeft a [LoadNotoFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/) methode. Het laadt vooraf gedefinieerde terugval instellingen, die gebruiken Google Noto lettertypen zoals weergegeven in het onderstaande codevoorbeeld:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetPredefinedFontFallbackSettings.cs" >}}

{{% alert color="primary" %}}

Alleen Sans stijl Noto lettertypen met regelmatig gewicht worden gebruikt in de vooraf gedefinieerde instellingen.

{{% /alert %}}

## Wanneer Aspose.Words Zoekt naar lettertypen

Aspose.Words probeert TrueType lettertypen automatisch op het bestandssysteem te vinden. Meestal kunt u vertrouwen op het standaardgedrag van Aspose.Words om de `TrueType` lettertypen, maar soms moet je je eigen mappen opgeven die TrueType lettertypen bevatten. De [Waar opgeven Locatie lettertypentype](/words/nl/net/specifying-truetype-fonts-location/) onderwerp beschrijft hoe en waar Aspose.Words zoekt naar lettertypen, evenals hoe u uw eigen lettertypelocaties kunt opgeven.

## Verschillen in het verwerken van lettertypeformaten in Aspose.Words en Microsoft Word

Er zijn enkele verschillen in de verwerking van lettertype formaten in Aspose.Words en Microsoft Word zoals aangegeven in onderstaande tabel:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| TrueType lettertypen en OpenType lettertypen met TrueType contouren | Ondersteund. | Ondersteund. |
| OpenType lettertypen met PostScript contouren | Voor de meeste scenario's ondersteund. Inbedding naar vaste pagina formaten zoals PDF en XPS worden niet ondersteund. Tekst wordt vervangen door bitmap afbeeldingen. | Ondersteund voor de meeste scenario's, inclusief inbedding naar fixed-page formats. |
| OpenType lettertypevariaties | Alleen genoemde instanties worden ondersteund. Continue variaties worden niet ondersteund. | Ondersteund voor alleen standaard instantie. Genoemde instanties en continue variaties worden niet ondersteund. |
| Type1 lettertypen | Ondersteund op Windows versies voor 2013 en op MacOS versies. Ondersteuning wordt afgebroken Windows versies vanaf 2013. | Niet ondersteund. |

## Zie ook

- [Google Noto Lettertypen](https://fonts.google.com/noto) gratis lettertypen downloaden
