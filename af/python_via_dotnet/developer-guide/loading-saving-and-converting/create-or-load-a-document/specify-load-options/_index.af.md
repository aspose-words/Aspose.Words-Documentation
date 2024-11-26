---
title: Spesifiseer Laadkeuses in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Spesifiseer Laai Opsies
linktitle: Spesifiseer Laai Opsies
description: "Meer akkuraat beheer die las proses met behulp van Python."
type: docs
weight: 10
url: /af/python-net/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Wanneer jy'n dokument laai, kan jy'n paar gevorderde eienskappe stel. Aspose.Words bied u die [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) klas, wat meer presiese beheer van die lasproses moontlik maak. Sommige laai formate het'n ooreenstemmende klas wat laai opsies vir hierdie laai formaat hou, byvoorbeeld, daar is [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) vir laai na PDF formaat of [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) vir laai na TXT. Hierdie artikel bied voorbeelde van die werk met opsies van die [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) klas.

## Stel Microsoft Word Weergawe om Die Voorkoms Te Verander

Verskillende weergawes van Microsoft Word aansoek kan dokumente in verskillende vertoon. Daar is byvoorbeeld'n bekende probleem met OOXML dokumente soos DOCX of DOTX wat met WPS Office vervaardig word. In so'n geval kan noodsaaklike dokument opmerkings elemente ontbreek of anders geïnterpreteer word wat veroorsaak dat Microsoft Word 2019 so'n dokument anders vertoon in vergelyking met Microsoft Word 2010.

By verstek Aspose.Words maak dokumente oop met behulp van Microsoft Word 2019 reëls. As u die laai van dokumente moet laat verskyn soos dit in een van die vorige Microsoft Word - toepassingsweergawes sou gebeur, moet u die gewenste weergawe uitdruklik spesifiseer deur die [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) - eienskap van die [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) - klas te gebruik.

Die volgende kode voorbeeld toon hoe om die Microsoft Word weergawe met laai opsies stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Stel Taalvoorkeure in Om Die Voorkoms Te Verander

Die besonderhede van die vertoon van'n dokument in Microsoft Word hang nie net af van die aansoek weergawe en die [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) eienskap waarde, maar ook op die taal instellings. Microsoft Word kan dokumente anders wys, afhangende van die dialooginstellings "Kantoortaalvoorkeure", wat gevind kan word in "Lêer Argentia Opsies Argentia Taal". Die gebruik van hierdie dialoog'n gebruiker kan kies, byvoorbeeld, primêre taal, bewys tale, vertoon tale, en so aan. Aspose.Words verskaf die [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) eienskap as die ekwivalent van hierdie dialoog. As Aspose.Words uitset verskil van die Microsoft Word uitset, stel die toepaslike waarde vir [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) – dit kan die uitsetdokument verbeter.

Die volgende kode voorbeeld toon hoe Om Japannese stel as [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Gebruik TempFolder Om'n Geheue Uitsondering Te Vermy

Aspose.Words ondersteun uiters groot dokumente wat duisende bladsye vol ryk inhoud het. Om sulke dokumente te laai, kan baie RAM vereis. In die proses van laai, Aspose.Words benodig selfs meer geheue om tydelike strukture te hou wat gebruik word om'n dokument te ontleed.

As jy'n probleem het Met uit Geheue uitsondering terwyl jy'n dokument laai, probeer om die [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) eienskap te gebruik. In hierdie geval sal Aspose.Words sommige data in tydelike lêers stoor in plaas van geheue, en dit kan help om so'n uitsondering te vermy.

Die volgende kode voorbeeld toon hoe om [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/)stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Stel Die Enkodering Eksplisiet

Die meeste moderne dokumentformate stoor hul inhoud in Unicode en vereis nie spesiale hantering nie. Aan die ander kant is daar nog baie dokumente wat'n paar pre-Unicode kodering gebruik en soms koderingsinligting misloop of nie eens koderingsinligting van nature ondersteun nie. Aspose.Words probeer om die toepaslike kodering outomaties by verstek op te spoor, maar in'n seldsame geval moet u dalk'n kodering gebruik wat verskil van die een wat deur ons koderingsherkenningsalgoritme opgespoor word. In hierdie geval, gebruik die [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) eienskap om te kry of stel die kodering.

Die volgende kode voorbeeld toon hoe om die kodering te stel om die outomaties gekies kodering oorskryf:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Laai Geënkripteerde Dokumente

U kan Word-dokumente met'n wagwoord geïnkripteer laai. Om dit te doen, gebruik'n spesiale konstruktor oorlading, wat'n [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) voorwerp aanvaar. Hierdie voorwerp bevat die [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) eienskap, wat die wagwoord string spesifiseer.

Die volgende kode voorbeeld toon hoe om'n dokument geïnkripteer met'n wagwoord te laai:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

As u nie vooraf weet of die lêer geënkripteer is nie, kan u die [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/) - klas gebruik, wat nutmetodes bied om met lêerformate te werk, soos om die lêerformaat op te spoor of lêeruitbreidings na/van lêerformaatopsommings om te skakel. Om vas te stel of die dokument geënkripteer is en'n wagwoord benodig om dit oop te maak, gebruik die [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) eienskap.

Die volgende kode voorbeeld toon hoe om dokument te verifieer of dit is geïnkripteer of nie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
