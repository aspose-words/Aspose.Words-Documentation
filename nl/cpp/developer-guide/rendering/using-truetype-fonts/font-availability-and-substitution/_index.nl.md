---
title: MFont beschikbaarheid en vervanging in C++
second_title: Aspose.Words voor C++
articleTitle: Font beschikbaarheid en vervanging
linktitle: Font beschikbaarheid en vervanging
description: "Wanneer het exacte vervangingslettertype niet kan worden gevonden, moet Aspose.Words het in plaats daarvan vervangen door een soortgelijk lettertype. Dit artikel beschrijft het proces van het vinden van het meest geschikte lettertype."
type: docs
weight: 12
url: /nl/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

Een tekst in een document kan worden opgemaakt met verschillende lettertypen, zoals Arial, Times New Roman, Verdana en andere. Wanneer Aspose.Words een document weergeeft, probeert het de lettertypen te selecteren die in het document zijn opgegeven.

Er zijn echter situaties waarin het exacte lettertype niet kan worden gevonden en Aspose.Words in plaats daarvan een soortgelijk lettertype moet vervangen. Aspose.Words selecteert het lettertype volgens het volgende proces:

1. Aspose.Words probeert een lettertype te vinden tussen de beschikbare lettertypebronnen met een exacte lettertypenaam.
1. Aspose.Words probeert het vereiste lettertype te vinden tussen de lettertypen die zijn ingesloten in het oorspronkelijke document. Sommige documentformaten zoals DOCX kunnen ingesloten lettertypen bevatten.
1. Als Aspose.Words het vereiste lettertype met de exacte naam niet kan vinden en de eigenschap [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) is gedefinieerd voor dit lettertype, dan zal Aspose.Words het lettertype vinden dat is gedefinieerd met **AltName** uit de [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info) - klasse, die de lettertypeinformatie specificeert.
1. Als Aspose.Words het gedefinieerde lettertype niet kan vinden en **AltName** niet ook is gedefinieerd, worden de regels voor lettertypesubstitutie één voor één toegepast, zoals hieronder beschreven (wanneer de juiste vervanging wordt gevonden, stopt het proces voor Lettertypesubstitutie en wordt de volgende stap niet uitgevoerd):
   1. Aspose.Words zal proberen om OS lettertype-instellingen toe te passen, als ze beschikbaar zijn, met behulp van het hulpprogramma `FontConfig`. Deze niet - Windows functie moet worden gebruikt met een FontConfig - compatibele OS. Bijna elke Unix-gebaseerde OS heeft al een `FontConfig` bibliotheek die is ontworpen om systeembrede lettertypeconfiguratie, aanpassing en toegang tot applicaties te bieden. Anders kan deze bibliotheek eenvoudig door de gebruiker worden geïnstalleerd.<br>
      Aspose.Words weet hoe hij gegevens moet opvragen en FontConfig Resultaten moet interpreteren voor zijn eigen doeleinden. Standaard is het hulpprogramma `FontConfig` uitgeschakeld. U kunt het als volgt inschakelen:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. De volgende stap is een eenvoudig, maar ongelooflijk krachtig mechanisme genaamd [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). Standaard is deze functie actief en beschikbaar voor elke OS. Aspose.Words gebruikt XML tabellen die basis substitutieregels voor verschillende OS definiëren. Volgens de tabelvervangingsregel wordt de lijst met vervangende lettertypenamen gebruikt.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - een te vervangen lettertype, SubstituteFonts - lijst van substitutievarianten, gescheiden door een komma. Het eerste beschikbare lettertype wordt gebruikt voor vervanging.<br>
      Het belangrijkste kenmerk van deze regel is de mogelijkheid om uw eigen substitutietabellen te laden, zoals in het volgende voorbeeld wordt getoond:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      U kunt als basis de bestaande tabel uit de pot nemen of deze programmatisch opslaan op de volgende manier:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Ondanks de flexibiliteit van dit mechanisme zijn er enkele gevallen waarin het beter is om het uit te schakelen, zoals hieronder wordt getoond:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. De substitutieregel **FontInfo** wordt toegepast als de substitutieregel voor tabellen het lettertype niet kan vinden. Dit mechanisme is standaard ingeschakeld. Aspose.Words zoekt het meest geschikte lettertype op basis van de lettertypegegevens in een bepaald document. Deze informatie kan worden verkregen uit de **FontInfo** klasse zoals hieronder weergegeven:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Gebruikers kunnen zich niet bemoeien met de workflow van deze functie, tenzij ze besluiten deze uit te schakelen in geval van onbevredigende resultaten:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Als **FontInfo** niet beschikbaar is voor het ontbrekende lettertype, stopt het proces.
   1. **DefaultFont** substitutieregel wordt toegepast in het geval dat de `FontInfo` substitutie ook is mislukt. Deze regel is ook standaard ingeschakeld. Volgens deze regel zal Aspose.Words proberen het standaardlettertype te gebruiken dat is opgegeven in de eigenschap [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Als de gebruiker zijn eigen standaardlettertype niet heeft gekozen, wordt "Times New Roman" als standaardlettertype gebruikt. Deze regel kan worden uitgeschakeld zoals hieronder weergegeven:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Om het huidige standaardlettertype te controleren, gebruikt u:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Om uw eigen vervangingsoptie in te stellen, solliciteer:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Als Aspose.Words de lettertypesubstitutie niet kan uitvoeren, probeert het het eerste beschikbare lettertype uit beschikbare lettertypebronnen te halen.
1. Ten slotte, als Aspose.Words geen lettertypen kan vinden tussen de beschikbare lettertypebronnen, wordt het document weergegeven met behulp van het gratis Fanwood-lettertype dat is ingebed in de Aspose.Words - assemblage.

{{% alert color="primary" %}}

Als **FontInfo** beschikbaar is, zal de *FontInfo substitution rule* altijd het lettertype oplossen en de standaard lettertyperegel overschrijven. Als u de standaard lettertyperegel wilt gebruiken, moet u *FontInfo substitution rule* uitschakelen. Merk op dat de *FontConfig substitution rule* het lettertype in de meeste gevallen oplost en dus alle andere regels overschrijft.

{{% /alert %}}


