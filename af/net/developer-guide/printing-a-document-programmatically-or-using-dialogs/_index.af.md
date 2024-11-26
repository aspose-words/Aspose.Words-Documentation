---
title: Druk'n Dokument in C#
second_title: Aspose.Words vir .NET
articleTitle: Druk'n Dokument Programmaties of Gebruik Dialoog
linktitle: Druk'n Dokument Programmaties of Gebruik Dialoog
description: "Druk'n dokument op'n Bediener met behulp van die onbeheerde XpsPrint API of via'n geselekteerde drukker met Instellings en Druk Voorskou Dialoog in C#."
type: docs
weight: 55
url: /af/net/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-31-14-23-37
---

Hierdie artikel beskryf hoe om'n woordverwerkingsdokument uit'n ASP.NET Of Windows Diensprogram te druk met behulp van Aspose.Words en die `XpsPrint` API. Dit demonstreer ook die metodes van die druk van'n dokument met Instellings, Druk voorskou, en Druk vordering dialoog, en verduidelik hoe om die tyd van die eerste oproep om'n dokument te druk te verminder.

## Druk'n Dokument op'n Bediener via die `XpsPrint` API

Hierdie afdeling is bedoel vir gebruikers wat'n XPS dokument wil indien aan die onbeheerde XpsPrint API van'n .NET aansoek met behulp van Aspose.Words.

### Beperkings van die druk van'n dokument in die ASP.NET Of Windows Diens aansoeke

Wanneer die ontwikkeling van'n .NET aansoek wat'n paar gedrukte uitset produseer, kan jy tipies gebruik klasse wat in die *System.Drawing.Printing* naamruimte, of Windows Presentation Foundation (WPF) klasse. As die aansoek egter'n ASP.NET Of Windows Dienstoepassing is, is die opsies vir drukwerk beperk, omdat Microsoft die gebruik van hierdie benadering ontmoedig. Die .NET Framework Druk klasse word nie ondersteun deur dienste aansoek. Dit sluit ASP bladsye in, wat gewoonlik in die konteks van die bedienerdiens loop.

Die klasse binne die *System.Drawing.Printing* naamruimte word nie ondersteun vir gebruik binne'n Windows diens of'n ASP.NET aansoek of diens, en probeer om hul gebruik kan verminder diens prestasie, run-time uitsonderings, en ander kwessies te produseer. Die gebruik van WPF om Windows dienste te bou word ook nie ondersteun nie. Aangesien WPF 'n aanbiedingstegnologie is, vereis die Windows diens toepaslike regte om visuele bewerkings uit te voer wat gebruikersinteraksie behels. As die Windows diens nie sulke toestemmings het nie, kan daar onverwagte resultate wees.

Die Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) voorwerp bied'n familie van [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) metodes om dokumente te druk. Hierdie metodes gebruik die .NET druk klasse gedefinieer in die *System.Drawing.Printing* naamruimte. Daar is baie Aspose.Words kliënte wat hulle suksesvol gebruik vir drukwerk in hul bediener-kant toepassings. Hierdie artikel toon nietemin'n alternatiewe metode vir drukwerk wat aan Microsoft se aanbevelings voldoen.

### Metodes Om'n Dokument Op'n Bediener Te Druk

Die regte manier om dokumente volgens Microsoft te druk, is deur die onbeheerde XpsPrint API te gebruik. Hierdie API is beskikbaar op Windows 7, Windows Server 2008 R2, en op Windows Vista mits die Platform Update vir Windows Vista geïnstalleer is.

Aangesien Aspose.Words enige dokument maklik na XPS kan omskakel, hoef jy net die kode te skryf wat'n XPS - dokument aan die `XpsPrint` API deurgee. Die enigste probleem is dat die `XpsPrint` API is onbeheerd en vereis'n paar kennis van die Platform Oproep tegnologie.

Om'n dokument te druk, Aspose.Words bied'n **XpsPrintHelper** klas bevat'n eenvoudige Druk metode, waar jy net nodig het om die volgende parameters spesifiseer (sien meer besonderhede in die artikel [Druk Dokument via XPS API](/words/net/missing-features-in-openxml/)):

- Dokument wat jy wil druk.
- Drukker naam.
- Werknaam (opsioneel).
- Booleaanse waarde, spesifiseer of die program moet wag totdat die drukwerk voltooi is. Daarom sal die stelsel kyk of die dokument suksesvol gedruk is of onmiddellik terugkeer nadat die drukwerk gestuur is. In die laaste geval is dit onmoontlik om vas te stel of die drukwerk suksesvol was.

Wanneer enige probleme ondervind word om die dokument in te dien of te druk, sal die metode'n uitsondering gooi.

Die kode voorbeeld hieronder toon hoe om'n dokument te druk met behulp van die **XpsPrintHelper** klas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

As u die projek uitvoer, druk dit'n voorbeelddokument op die gespesifiseerde drukker en maak'n konsole-venster oop om drukresultate te vertoon. Wanneer die drukwerk voltooi of foute uit, sal die stelsel'n sukses boodskap of teks van die gegooi uitsondering vertoon.

U kan ook'n paar drukinstellings instel deur die [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) - klas te gebruik. Byvoorbeeld, in Microsoft Word, is drukkerbakke vir elke afdeling gedefinieer en is drukkerspesifiek. Daarom kan jy programmaties hierdie waardes vir elke afdeling verander via die [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) en [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/) eienskappe.

{{% alert color="primary" %}}

In sommige gevalle sal jy dalk hierdie monster sonder Aspose.Words moet gebruik. Byvoorbeeld, wanneer jy reeds'n XPS dokument het en dit net wil druk vanaf'n ASP.NET Of Windows Diens aansoek. Dan kan jy net die `Print` metode uitvee.

{{% /alert %}}

Daar is twee oorladings van die **XpsPrintHelper**.**Print** metode. Die eerste oorlading neem'n [Document](https://reference.aspose.com/words/net/aspose.words/document/) voorwerp en stoor dit in'n `MemoryStream` in die XPS formaat. Die tweede oorlading aanvaar'n `Stream` voorwerp. Die stroom moet'n dokument in die XPS formaat bevat.

Jy kan die voorbeelde van metode oorlading aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Druk'n Dokument met Instellings en Druk Voorskou Dialoog

Wanneer jy met dokumente werk, moet jy dit dikwels op'n geselekteerde drukker druk. Dit is nuttig om'n drukvoorskou dialoog te gebruik om visueel te inspekteer hoe die gedrukte dokument sal verskyn en kies relevante druk opsies.

Die Aspose.Words het geen ingeboude dialoog of vorms nie, maar implementeer die [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) klas, gebaseer op die .NET **PrintDocument** klas. 'n voorbeeld van hierdie klas kan oorgedra word na die **PrintPreviewDialog** vorm om voorskou en druk die dokument. Ook die [PrintPreviewDialog](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) klas definieer die uitset te stuur na'n drukker.

Die volgende voorbeeld toon hoe om hierdie klasse te gebruik om'n dokument van Aspose.Words te druk via Die Druk voorskou en Instellings dialoog:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

Die **AllowSomePages** eienskap stel jou in staat om'n reeks bladsye te kies om te druk as die waarde van hierdie eienskap Waar is. By verstek word alle bladsye in die reeks gekies vir drukwerk.

{{% /alert %}}

Om die voorkoms van druk Voorskou dialoog instellings te optimaliseer, spesifiseer eienskappe van die **PrintPreviewDialog** klas.

## Druk Verskeie Bladsye op Een Vel

Dit is altyd voordelig om meer buigsaamheid te hê wanneer dokumente gedruk word. Deur .NET en Aspose.Words te gebruik, kan u die drukproses maklik verfyn om u persoonlike logika te implementeer deur die manier waarop die dokument op die gedrukte bladsy verskyn, te definieer.

Soos in die vorige afdeling, implementeer Aspose.Words die **MultipagePrintDocument** klas, wat gebaseer is op die .NET **PrintDocument** klas. Dit beteken dat die bestaande .NET druk infrastruktuur gebruik kan word op so'n manier dat die druk en druk voorskou dialoog sal visualisering van die dokument voor druk in staat stel. Die **MultipagePrintDocument** klas bied die vermoë om verskeie bladsye op een vel papier te druk.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Die resultaat van hierdie kode voorbeeld word hieronder getoon:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](print-a-document-programmatically-or-using-dialogs-1.png)

## Versteek Die Druk Vordering Dialoog Wanneer Die Druk Van'n Dokument

Die Druk Vordering Dialoog verskyn nie wanneer die druk van'n dokument via die [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) metode. Hierdie dialoog verskyn egter tydens drukwerk met'n ander [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) metode. In hierdie geval, om te verhoed dat Die druk dialoog verskyn, moet jy geldige drukker instellings en'n standaard druk kontroleerder spesifiseer in hierdie metode, soos getoon in die voorbeeld hieronder:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Hoe Om Die Tyd Van Die Eerste Oproep Te Verminder Om'n Dokument Te Druk

Aspose.Words lees en caches sommige velde van **PrinterSettings** om druk tyd te verminder. Jy kan dit bereik deur die [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) metode te noem. Hierdie metode word genoem voordat die drukwerk begin as dit nie voorheen uitgevoer is nie. Let daarop dat die totale tyd van druk met en sonder roeping van hierdie metode is byna dieselfde. Die doel van die gebruik van hierdie metode is om die tyd van die eerste oproep van die [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) metode te verminder. Die volgende kode voorbeeld toon hoe om hierdie metode te gebruik:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Sien Ook

- [Platform Opdatering vir Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
