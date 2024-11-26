---
title: Spesifiseer Laadkeuses in Java
second_title: Aspose.Words vir Java
articleTitle: Spesifiseer Laai Opsies
linktitle: Spesifiseer Laai Opsies
description: "Stel gevorderde eienskappe wanneer'n dokument gelaai word met Java om meer presiese beheer van die proses te verkry."
type: docs
weight: 10
url: /af/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Wanneer jy'n dokument laai, kan jy'n paar gevorderde eienskappe stel. Aspose.Words bied u die [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) klas, wat meer presiese beheer van die lasproses moontlik maak. Sommige laai formate het'n ooreenstemmende klas wat laai opsies vir hierdie laai formaat hou, byvoorbeeld, daar is [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) vir laai na PDF formaat of [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) vir laai na TXT. Hierdie artikel bied voorbeelde van die werk met opsies van die **LoadOptions** klas.

## Stel Microsoft Word Weergawe om Die Voorkoms Te Verander

Verskillende weergawes van die Microsoft Word aansoek kan dokumente in verskillende vertoon. Daar is byvoorbeeld'n bekende probleem met OOXML dokumente soos DOCX of DOTX wat met WPS Office vervaardig word. In sulke gevalle kan noodsaaklike dokument opmerkings elemente ontbreek of anders geïnterpreteer word wat veroorsaak dat Microsoft Word 2019 so'n dokument anders vertoon in vergelyking met Microsoft Word 2010.

By verstek Aspose.Words maak dokumente oop met behulp van Microsoft Word 2019 reëls. As u die laai van dokumente moet laat verskyn soos dit in een van die vorige Microsoft Word - toepassingsweergawes sou gebeur, moet u die gewenste weergawe uitdruklik spesifiseer deur die [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) - eienskap van die **LoadOptions** - klas te gebruik.

Die volgende kode voorbeeld toon hoe om die Microsoft Word weergawe met laai opsies stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Stel Taalvoorkeure in Om Die Voorkoms Te Verander

Die besonderhede van die vertoon van'n dokument in Microsoft Word hang nie net af van die aansoek weergawe en die **MswVersion** eienskap waarde, maar ook op die taal instellings. Microsoft Word kan dokumente anders wys, afhangende van die dialooginstellings "Kantoortaalvoorkeure", wat gevind kan word in "Lêer Argentia Opsies Argentia Taal". Die gebruik van hierdie dialoog'n gebruiker kan kies, byvoorbeeld, primêre taal, bewys tale, vertoon tale, en so aan. Aspose.Words verskaf die [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) eienskap as die ekwivalent van hierdie dialoog. As Aspose.Words uitset verskil van die Microsoft Word uitset, stel die toepaslike waarde vir **EditingLanguage** – dit kan die uitsetdokument verbeter.

Die volgende kode voorbeeld toon hoe Om Japannese stel as **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Gebruik WarningCallback Om Probleme Te Beheer Terwyl'n Dokument Gelaai Word

Sommige dokumente kan beskadig wees, ongeldige inskrywings bevat, of funksies het wat tans nie deur Aspose.Words ondersteun word nie. As u wil weet van probleme wat voorgekom het tydens die laai van'n dokument, bied Aspose.Words die [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) - koppelvlak.

Die volgende kode voorbeeld toon die implementering van die **IWarningCallback** koppelvlak:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Om inligting oor alle probleme gedurende die laai tyd te kry, gebruik die [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) eienskap.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te gebruik:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Gebruik ResourceLoadingCallback Om Die Eksterne Hulpbronne Laai Beheer

'n dokument kan eksterne skakels bevat na beelde wat êrens op'n plaaslike skyf, netwerk of Internet geleë is. Aspose.Words laai sulke beelde outomaties in'n dokument, maar daar is situasies wanneer hierdie proses beheer moet word. Byvoorbeeld, om te besluit of ons regtig nodig het om'n sekere beeld te laai of dalk slaan dit. Die [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) laai opsie laat jou toe om dit te beheer.

Die volgende kode voorbeeld toon die implementering van die [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) koppelvlak:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

Die volgende kode voorbeeld toon hoe om die **ResourceLoadingCallback** eiendom te gebruik:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Gebruik TempFolder Om'n Geheue Uitsondering Te Vermy

Aspose.Words ondersteun uiters groot dokumente wat duisende bladsye vol ryk inhoud het. Om sulke dokumente te laai, kan baie RAM vereis. In die proses van laai, Aspose.Words benodig selfs meer geheue om tydelike strukture te hou wat gebruik word om'n dokument te ontleed.

As jy'n probleem het met Die uit-Geheue uitsondering terwyl jy'n dokument laai, probeer om die [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) eienskap te gebruik. In hierdie geval sal Aspose.Words sommige data in tydelike lêers stoor in plaas van geheue, en dit kan help om so'n uitsondering te vermy.

Die volgende kode voorbeeld toon hoe om **TempFolder**stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Stel Die Enkodering Eksplisiet

Die meeste moderne dokumentformate stoor hul inhoud in Unicode en vereis nie spesiale hantering nie. Aan die ander kant is daar nog baie dokumente wat'n paar pre-Unicode kodering gebruik en soms koderingsinligting misloop of nie eens koderingsinligting van nature ondersteun nie. Aspose.Words probeer om die toepaslike kodering outomaties by verstek op te spoor, maar in'n seldsame geval moet u dalk'n kodering gebruik wat verskil van die een wat deur ons koderingsherkenningsalgoritme opgespoor word. In hierdie geval, gebruik die [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) eienskap om te kry of stel die kodering.

Die volgende kode voorbeeld toon hoe om die kodering te stel om die outomaties gekies kodering oorskryf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Laai Geënkripteerde Dokumente

U kan Word-dokumente met'n wagwoord geïnkripteer laai. Om dit te doen, gebruik'n spesiale konstruktor oorlading, wat'n [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) voorwerp aanvaar. Hierdie voorwerp bevat die [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) eienskap, wat die wagwoord string spesifiseer.

Die volgende kode voorbeeld toon hoe om'n dokument geïnkripteer met'n wagwoord te laai:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

As u nie vooraf weet of die lêer geënkripteer is nie, kan u die [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) - klas gebruik, wat nutmetodes bied om met lêerformate te werk, soos om die lêerformaat op te spoor of lêeruitbreidings na/van lêerformaatopsommings om te skakel. Om vas te stel of die dokument geënkripteer is en'n wagwoord benodig om dit oop te maak, gebruik die [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) eienskap.

Die volgende kode voorbeeld toon hoe om te verifieer OpenDocument of dit is geïnkripteer of nie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
