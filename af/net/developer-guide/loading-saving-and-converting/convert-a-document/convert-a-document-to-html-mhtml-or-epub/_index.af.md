---
title: Skakel'n Dokument om na HTML, MHTML of EPUB in C#
second_title: Aspose.Words vir .NET
articleTitle: Skakel'n Dokument om na HTML, MHTML of EPUB
linktitle: Skakel'n Dokument om na HTML, MHTML of EPUB
description: "Skakel'n dokument van byna enige formaat na HTML of MHTML, sowel as na EPUB formaat met behulp van C#. U kan ook stooropsies spesifiseer vir die bestuur van die uitvoerdokument."
type: docs
weight: 20
url: /af/net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-07-09-19-00-42
---

Dokumente in HTML en MHTML vloei-uitleg formate is ook baie gewild en kan gebruik word op enige web platform. Om daardie rede is die omskakeling van dokumente na HTML en MHTML 'n belangrike kenmerk van Aspose.Words.

EPUB (kort vir "Elektroniese Publikasie") is'n HTML-gebaseerde formaat wat algemeen gebruik word vir elektroniese boekverspreiding. Hierdie formaat word ten volle ondersteun in Aspose.Words vir die uitvoer van elektroniese boeke wat versoenbaar is met die meeste lees toestelle.

## Skakel'n Dokument om

Vir eenvoudige omskakeling na HTML, MHTML, of EPUB, word een van die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) metode oorladings gebruik. U kan die dokument in'n lêer of stroom stoor en die uitvoerdokument stoorformaat eksplisiet stel of dit van die lêernaamuitbreiding definieer.

Die volgende voorbeeld toon hoe om DOCX om te skakel na HTML met die spesifisering van'n stoor formaat:

**.NET**

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "docx-to-html.cs" >}}

Om'n dokument te omskep in MHTML of EPUB, gebruik onderskeidelik `SaveFormat.Mhtml` of `SaveFormat.Epub`.

## Skakel'n Dokument met Heen-En-Terug-Inligting om

Die HTML formaat ondersteun nie baie Microsoft Word funksies nie, en as ons'n dokumentmodel so naby as moontlik aan die oorspronklike moet herstel, moet ons ekstra inligting in die HTML lêer stoor. Sulke inligting word ook"heen-en-terug-inligting" genoem. Vir hierdie doel, Aspose.Words bied'n vermoë om heen-en-terug inligting uit te voer wanneer dit gestoor word na HTML, MHTML, of EPUB met behulp van die [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) eienskap. Die stoor van die heen-en-terug inligting kan dokument eienskappe soos oortjies, kommentaar, koptekste, en voetskrifte te herstel tydens die laai dokumente van die gelys formate terug in'n **Document** voorwerp.

Die verstekwaarde is **true** vir HTML en **false** vir MHTML en EPUB:

- Wanneer **true**, die heen-en - terug inligting uitgevoer word as - aw - * CSS eienskappe van die ooreenstemmende HTML elemente
- Wanneer **false**, is daar geen heen-en-terug inligting wat in geproduseerde lêers uitgevoer moet word nie

Die volgende kode voorbeeld toon hoe om heen-en-terug inligting uitvoer wanneer die omskakeling van'n dokument van DOCX in HTML:

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "export-roundtrip-information.cs" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Spesifiseer Stoorkeuses wanneer Omskakeling na HTML

Aspose.Words laat toe om'n Word-dokument om te skakel na HTML met behulp van standaard of persoonlike stoor opsies. 'n paar voorbeelde van persoonlike stoor opsies word hieronder beskryf.

### Spesifiseer'n Gids vir die Besparing van Hulpbronne

Met behulp van Aspose.Words kan ons'n fisiese gids spesifiseer waar alle hulpbronne, soos beelde, lettertipes en eksterne CSS, gestoor word wanneer'n dokument omgeskakel word na HTML. By verstek, dit is'n leë string.

Die spesifisering van die [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) eienskap is die eenvoudigste manier om die gids te stel waar al die hulpbronne geskryf moet word. Ons kan individuele eienskappe gebruik, soos [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) wat lettertipes in die gespesifiseerde gids stoor en [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) wat beelde in'n gespesifiseerde gids stoor. Wanneer'n relatiewe pad gespesifiseer word, verwys **FontsFolder** en **ImagesFolder** na die gids waar die kode-samestelling geleë is, **ResourceFolder** en [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) na die uitsetmap waar die HTML - dokument geleë is.

In hierdie voorbeeld spesifiseer **ResourceFolder** die relatiewe pad. Hierdie pad verwys na die uitset gids waar HTML dokument gestoor word. Die waarde van die **ResourceFolderAlias** eienskap word gebruik om URLs vir alle hulpbronne te skep.

Die volgende kode voorbeeld toon hoe om te werk met hierdie eienskappe:

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "export-resources.cs" >}}

Deur die [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) eienskap te gebruik, kan ons ook die naam van die gids spesifiseer wat gebruik word om URIs van alle hulpbronne wat in'n HTML dokument geskryf is, te bou. Dit is die eenvoudigste manier om te spesifiseer hoe URIs gegenereer moet word vir alle hulpbron lêers. Dieselfde inligting kan vir beelde en lettertipes afsonderlik gespesifiseer word via [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) en [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) eienskappe, onderskeidelik.

Daar is egter geen individuele eienskap vir CSS nie. Die gedrag van die **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** en **CssStyleSheetFileName** eienskappe is nie verander nie. Let daarop dat die **CssStyleSheetFileName** eienskap gebruik word beide vir die spesifisering van gids naam en lêer naam.

- **ResourceFolder** het laer prioriteit as dopgehou wat deur **FontsFolder**, **ImagesFolder** en **CssStyleSheetFileName** gespesifiseer word. As die gids gespesifiseer in die **ResourceFolder** nie bestaan nie, sal dit outomaties geskep word.
- **ResourceFolderAlias** het'n laer prioriteit as **FontsFolderAlias** en **ImagesFolderAlias**. As **ResourceFolderAlias** leeg is, sal die waarde van die **ResourceFolder** eienskap gebruik word om hulpbron URIs te skep. As **ResourceFolderAlias** op "." (punt) gestel is, sal hulpbron URIs slegs lêernaam bevat sonder om'n pad te spesifiseer.

### Uitvoer Base64 Enkodering Lettertipes Hulpbronne

Aspose.Words bied'n vermoë om te spesifiseer of lettertipe hulpbronne in HTML in Base64 koderings ingebed moet word. Om dit uit te voer, gebruik die [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) eienskap – dit is'n uitbreiding van die [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) eienskap. By verstek is die waarde **false**, en lettertipes word in afsonderlike lêers geskryf. Maar as hierdie opsie is ingestel op **true**, sal lettertipes ingebed word in die dokument se CSS In Base64 kodering. Die **ExportFontsAsBase64** eienskap beïnvloed slegs HTML formaat en beïnvloed nie EPUB en MHTML nie.

Die volgende kode voorbeeld toon hoe om te uitvoer Base64-ingebou fonts aan HTML:

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "export-fonts-as-base64.cs" >}}

## Spesifiseer Stoorkeuses wanneer Omskakeling na EPUB

Aspose.Words laat toe om'n Word-dokument in EPUB - formaat te omskep deur standaard of persoonlike stooropsies te gebruik. U kan'n aantal opsies spesifiseer deur'n voorbeeld van [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) aan die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) - metode te gee.

Die volgende kode voorbeeld toon hoe om'n Word dokument om te skakel na EPUB met die spesifisering van'n paar persoonlike stoor opsies:

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "split-document-by-headings.cs" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Sien Ook

- [Hoe om heen-en-terug inligting uit te voer wanneer jy stoor na HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)