---
title: MFont Beskikbaarheid En Vervanging in C++
second_title: Aspose.Words vir C++
articleTitle: Beskikbaarheid En Vervanging van lettertipes
linktitle: Beskikbaarheid En Vervanging van lettertipes
description: "Wanneer die presiese vervanging lettertipe nie gevind kan word nie, moet Aspose.Words dit vervang vir'n soortgelyke lettertipe in plaas daarvan. Hierdie artikel beskryf die proses om die mees geskikte lettertipe te vind."
type: docs
weight: 12
url: /af/cpp/font-availability-and-substitution/
---

'n teks in'n dokument kan met verskillende lettertipes geformateer word, soos Arial, Times new Roman, Verdana en ander. Wanneer Aspose.Words 'n dokument weergee, probeer dit om die lettertipes te kies wat in die dokument gespesifiseer is.

Daar is egter situasies waar die presiese lettertipe nie gevind kan word nie en Aspose.Words dit moet vervang deur'n soortgelyke lettertipe. Aspose.Words kies die lettertipe volgens die volgende proses:

1. Aspose.Words probeer om'n lettertipe te vind onder die beskikbare lettertipe bronne met'n presiese lettertipe naam.
1. Aspose.Words probeer om die vereiste lettertipe te vind onder die lettertipes wat in die oorspronklike dokument ingebed is. Sommige dokumentformate soos DOCX kan ingebedde lettertipes bevat.
1. As Aspose.Words nie die vereiste lettertipe kan vind met die presiese naam wat ooreenstem nie, en die [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) eienskap wat vir hierdie lettertipe gedefinieer is, dan sal Aspose.Words die lettertipe vind wat met **AltName** gedefinieer is uit die [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info) klas, wat die lettertipe inligting spesifiseer.
1. As Aspose.Words nie die gedefinieerde lettertipe kan opspoor nie, en **AltName** nie ook gedefinieer is nie, word die lettertipe vervangingsreëls een vir een toegepas, soos hieronder beskryf (wanneer die toepaslike vervanging gevind word, stop die Lettertipe Vervangingsproses en die volgende stap word nie uitgevoer nie):
   1. Aspose.Words sal probeer om OS lettertipe instellings toe te pas, indien hulle beskikbaar is, deur die `FontConfig` nut te gebruik. Hierdie nie-Windows kenmerk moet gebruik word met'n FontConfig - versoenbare OS. Byna enige Unix-gebaseerde OS het reeds'n `FontConfig` biblioteek wat ontwerp is om stelselwye lettertipe-konfigurasie, aanpassing en toegang tot toepassings te bied. Andersins kan hierdie biblioteek maklik deur die gebruiker geïnstalleer word.<br>
      Aspose.Words weet hoe om data te navraag doen en FontConfig resultate vir sy eie doeleindes te interpreteer. By verstek is die `FontConfig` nut gedeaktiveer. Jy kan dit soos volg aktiveer:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. Die volgende stap is'n eenvoudige, maar ongelooflik kragtige meganisme genaamd [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). By verstek is hierdie funksie aktief en beskikbaar vir enige OS. Aspose.Words gebruik XML tabelle wat basiese vervangingsreëls vir verskillende OS definieer. Volgens die Tabel vervanging reël, sal die lys van vervanging lettertipe name gebruik word.<br>
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
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      U kan die bestaande tabel uit die pot as basis neem of dit programmaties op die volgende manier stoor:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Ten spyte van die buigsaamheid van hierdie meganisme, is daar'n paar gevalle wanneer dit beter is om dit uit te skakel, soos hieronder getoon:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. Die **FontInfo** vervangingsreël sal toegepas word as die tabel vervangingsreël nie die lettertipe kan vind nie. Hierdie meganisme is standaard geaktiveer. Aspose.Words vind die geskikste lettertipe volgens die lettertipe-inligting in'n spesifieke dokument. Hierdie inligting kan verkry word uit die **FontInfo** klas soos hieronder getoon:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Gebruikers kan nie inmeng in die werkstroom van hierdie funksie nie, tensy hulle besluit om dit uit te skakel in geval van onbevredigende resultate:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      As **FontInfo** nie beskikbaar is vir die ontbrekende lettertipe nie, stop die proses.
   1. **DefaultFont** vervangingsreël sal toegepas word in die geval wanneer die `FontInfo` vervanging ook misluk het. Hierdie reël is ook standaard geaktiveer. Volgens hierdie reël sal Aspose.Words probeer om die standaard lettertipe te gebruik wat in die [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/) eienskap gespesifiseer is. As die gebruiker nie hul eie standaard lettertipe gekies het nie, sal "Times new Roman" as die standaard lettertipe gebruik word. Hierdie reël kan gedeaktiveer word soos hieronder getoon:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Om die huidige verstekfont te kontroleer, gebruik:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Om jou eie vervangingsopsie op te stel, doen aansoek:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. As Aspose.Words nie die lettertipe vervanging kan uitvoer nie, probeer dit om die eerste beskikbare lettertipe uit beskikbare lettertipe bronne te kry.
1. Ten slotte, as Aspose.Words nie enige lettertipes onder die beskikbare lettertipe bronne kan vind nie, maak dit die dokument met behulp van die gratis Fanwood lettertipe wat in die Aspose.Words vergadering ingebed is.

{{% alert color="primary" %}}

As **FontInfo** beskikbaar is, sal die *FontInfo substitution rule* altyd die lettertipe oplos en die standaard lettertipe reël oorskryf. As jy die standaard lettertipe reël wil gebruik, moet jy die *FontInfo substitution rule* deaktiveer. Let daarop dat die *FontConfig substitution rule* die lettertipe in die meeste gevalle sal oplos, en dus alle ander reëls oorskry.

{{% /alert %}}


