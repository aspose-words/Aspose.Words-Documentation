---
title: Spesifiseer Laadkeuses in C++
second_title: Aspose.Words vir C++
articleTitle: Spesifiseer Laai Opsies
linktitle: Spesifiseer Laai Opsies
description: "Beheer die lasproses meer akkuraat."
type: docs
weight: 10
url: /af/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

Wanneer jy'n dokument laai, kan jy'n paar gevorderde eienskappe stel. Aspose.Words bied u die [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/) klas, wat meer presiese beheer van die lasproses moontlik maak. Sommige laai formate het'n ooreenstemmende klas wat laai opsies vir hierdie laai formaat hou, byvoorbeeld, daar is [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) vir laai na PDF formaat of [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) vir laai na TXT. Hierdie artikel bied voorbeelde van die werk met opsies van die **LoadOptions** klas.

## Stel Microsoft Word Weergawe om Die Voorkoms Te Verander

Verskillende weergawes van die Microsoft Word aansoek kan dokumente onverskillig vertoon. Daar is byvoorbeeld'n bekende probleem met OOXML dokumente soos DOCX of DOTX wat met WPS Office vervaardig word. In so'n geval kan noodsaaklike dokumentopmerkingselemente ontbreek of anders geïnterpreteer word, wat veroorsaak dat Microsoft Word 2019 so'n dokument anders vertoon in vergelyking met Microsoft Word 2010.

By verstek Aspose.Words open dokumente met behulp van Microsoft Word 2019 reëls. As u die laai van dokumente moet laat verskyn soos dit in een van die vorige Microsoft Word - toepassingsweergawes sou gebeur, moet u die gewenste weergawe uitdruklik spesifiseer deur die [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) - eienskap van die **LoadOptions** - klas te gebruik.

Die volgende kode voorbeeld toon hoe om die Microsoft Word weergawe met laai opsies stel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Stel Taalvoorkeure in Om Die Voorkoms Te Verander

Die besonderhede van die vertoon van'n dokument in Microsoft Word hang nie net af van die aansoek weergawe en die **MswVersion** eienskap waarde, maar ook op die taal instellings. Microsoft Word kan dokumente anders wys, afhangende van die dialooginstellings "Kantoortaalvoorkeure", wat gevind kan word in "Lêer Argentia Opsies Argentia Taal". Die gebruik van hierdie dialoog'n gebruiker kan kies, byvoorbeeld, primêre taal, bewys tale, vertoon tale, en so aan. Aspose.Words verskaf die [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) eienskap as die ekwivalent van hierdie dialoog. As Aspose.Words uitset verskil van die Microsoft Word uitset, stel die toepaslike waarde vir **EditingLanguage** – dit kan die uitsetdokument verbeter.

Die volgende kode voorbeeld toon hoe Om Japannese stel as **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Gebruik WarningCallback Om Probleme Te Beheer Terwyl'n Dokument Gelaai Word

Sommige dokumente kan beskadig wees, ongeldige inskrywings bevat, of funksies het wat tans nie deur Aspose.Words ondersteun word nie. As u wil weet van probleme wat voorgekom het tydens die laai van'n dokument, bied Aspose.Words die [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) - koppelvlak.

Die volgende kode voorbeeld toon die implementering van die **IWarningCallback** koppelvlak:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Om inligting oor alle probleme gedurende die laai tyd te kry, gebruik die `WarningCallback` eienskap.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te gebruik:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Gebruik ResourceLoadingCallback Om Die Eksterne Hulpbronne Laai Beheer

'n dokument kan eksterne skakels bevat na beelde wat êrens op'n plaaslike skyf, netwerk of Internet geleë is. Aspose.Words laai sulke beelde outomaties in'n dokument, maar daar is situasies wanneer hierdie proses beheer moet word. Byvoorbeeld, om te besluit of ons regtig nodig het om'n sekere beeld te laai of dalk slaan dit. Die ResourceLoadingCallback laai opsie laat jou toe om dit te beheer.

Die volgende kode voorbeeld toon die implementering van die IResourceLoadingCallback koppelvlak:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

Die volgende kode voorbeeld toon hoe om die **ResourceLoadingCallback** eiendom te gebruik:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Gebruik TempFolder Om'n Geheue Uitsondering Te Vermy

Aspose.Words ondersteun uiters groot dokumente wat duisende bladsye vol ryk inhoud het. Om sulke dokumente te laai, kan baie RAM vereis. In die proses van laai, Aspose.Words benodig selfs meer geheue om tydelike strukture te hou wat gebruik word om'n dokument te ontleed.

As jy'n probleem het met Die uit-Geheue uitsondering terwyl jy'n dokument laai, probeer om die [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/) eienskap te gebruik. In hierdie geval sal Aspose.Words sommige data in tydelike lêers stoor in plaas van geheue, en dit kan help om so'n uitsondering te vermy.

Die volgende kode voorbeeld toon hoe om **TempFolder**stel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Stel Die Enkodering Eksplisiet

Die meeste moderne dokumentformate stoor hul inhoud in Unicode en vereis nie spesiale hantering nie. Aan die ander kant is daar nog baie dokumente wat'n paar pre-Unicode kodering gebruik en soms koderingsinligting misloop of nie eens koderingsinligting van nature ondersteun nie. Aspose.Words probeer om die toepaslike kodering outomaties by verstek op te spoor, maar in'n seldsame geval moet u dalk'n kodering gebruik wat verskil van die een wat deur ons koderingsherkenningsalgoritme opgespoor word. In hierdie geval, gebruik die [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) eienskap om te kry of stel die kodering.

Die volgende kode voorbeeld toon hoe om die kodering te stel om die outomaties gekies kodering oorskryf:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Laai Geënkripteerde Dokumente

U kan Word-dokumente met'n wagwoord geïnkripteer laai. Om dit te doen, gebruik'n spesiale konstruktor oorlading, wat'n [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/) voorwerp aanvaar. Hierdie voorwerp bevat die [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/) eienskap, wat die wagwoord string spesifiseer.

Die volgende kode voorbeeld toon hoe om'n dokument geïnkripteer met'n wagwoord te laai:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

As u nie vooraf weet of die lêer geënkripteer is nie, kan u die [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/) - klas gebruik, wat nutmetodes bied om met lêerformate te werk, soos om die lêerformaat op te spoor of lêeruitbreidings na/van lêerformaatopsommings om te skakel. Om vas te stel of die dokument geënkripteer is en'n wagwoord benodig om dit oop te maak, gebruik die `IsEncrypted` eienskap.

Die volgende kode voorbeeld toon hoe om te verifieer OpenDocument of dit is geïnkripteer of nie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
