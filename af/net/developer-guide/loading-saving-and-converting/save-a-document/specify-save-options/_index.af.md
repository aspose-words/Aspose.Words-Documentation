---
title: Spesifiseer Stoorkeuses in C#
second_title: Aspose.Words vir .NET
articleTitle: Spesifiseer Stoorkeuses
linktitle: Spesifiseer Stoorkeuses
description: "Meer akkuraat beheer die stoor proses met behulp van C#."
type: docs
weight: 10
url: /af/net/specify-save-options/
---

Wanneer jy'n dokument stoor, kan jy'n paar gevorderde eienskappe stel. Aspose.Words bied u die [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) klas, wat meer presiese beheer van die stoorproses moontlik maak. Daar is oorladings van die **Save** metode wat'n **SaveOptions** voorwerp aanvaar dit moet'n voorwerp van'n klas afgelei van die **SaveOptions** klas wees. Elke stoor formaat het'n ooreenstemmende klas wat stoor opsies vir hierdie stoor formaat hou, byvoorbeeld, daar is [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) vir die stoor na PDF formaat, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) vir die stoor na Markdown formaat, of [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) vir die stoor na'n beeld. Hierdie artikel bied voorbeelde van die werk met'n paar opsies klasse afgelei van **SaveOptions**.

Die volgende kode voorbeeld toon hoe om die stoor opsies stel voor die stoor van die dokument in HTML:

{{< gist "aspose-words-gists" "83e5c469d0e72b5114fb8a05a1d01977" "export-text-input-form-field-as-text.cs" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Die artikel beskryf'n paar eienskappe wat jy kan beheer wanneer jy'n dokument stoor.

## Enkripteer'n Dokument Met'n Wagwoord

Gebruik die **Password** eienskap om'n wagwoord vir'n geënkripteerde dokument te kry of in te stel. Gebruik die **Password** eienskap van die ooreenstemmende klas om te werk met die gekose dokument formaat.

Byvoorbeeld, wanneer'n dokument gestoor word in DOC of DOT formaat, gebruik die [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) eienskap van die [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) klas.

Die volgende kode voorbeeld toon hoe om'n wagwoord te stel om'n dokument te enkripteer met behulp van die RC4 enkripsie metode:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

Wanneer'n dokument in Odt-formaat gestoor word, gebruik die [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) eienskap van die [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) klas.

Die volgende kode voorbeeld toon hoe om te laai en te stoor OpenDocument geïnkripteer met'n wagwoord:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}

Nie alle formate ondersteun enkripsie en die gebruik van **Password** eienskap nie.

## Wys Dokument Stoor Vordering Kennisgewings

Aspose.Words bied die vermoë om die [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) eienskap te gebruik om kennisgewings te kry oor die vordering van dokumentbesparing.

Dit is nou beskikbaar wanneer spaar om DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, of TXT formate.

## Dateer Die Dokument Se Skeppingstyd op

Aspose.Words bied'n vermoë om die [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) eienskap te gebruik om die dokument skep datum in UTC te kry of stel. U kan ook hierdie waarde opdateer voordat u die [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) - opsie gebruik.

Die volgende kode voorbeeld toon hoe om die dokument skepping tyd te werk:

{{< gist "aspose-words-gists" "83e5c469d0e72b5114fb8a05a1d01977" "update-last-printed.cs" >}}

## Dateer Laaste Gestoorde Eiendom Op

Aspose.Words bied'n vermoë om die [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) eienskap te gebruik om'n waarde te kry of te stel wat bepaal of die [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) eienskap opgedateer word voordat dit gestoor word.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te stel en stoor die dokument:

{{< gist "aspose-words-gists" "83e5c469d0e72b5114fb8a05a1d01977" "update-last-saved-time.cs" >}}

## Beheer Eksterne Hulpbronne Wanneer'n Dokument In HTML Of SVGGestoor Word

Om HTML of SVG in PDF om te skakel, roep eenvoudig die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) metode op en spesifiseer'n lêernaam met die ".PDF" uitbreiding. As jy beelde wil laai, CSS, ens. van eksterne bronne kan jy [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/) gebruik.

## Stoor Swart En Wit Beeld Met Een Bietjie Per Pixel Formaat

Om beeld stoor opsies te beheer, is die **ImageSaveOptions** klas gebruik. U kan byvoorbeeld die [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) - eienskap gebruik om die pixelformaat vir die gegenereerde beelde in te stel. Let asseblief daarop dat die pixel formaat van die uitset beeld kan verskil van die stel waarde as gevolg van die werk van GDI+.

Die volgende kode voorbeeld toon hoe om'n swart en wit beeld te red met een bietjie per pixel formaat:

{{< gist "aspose-words-gists" "83e5c469d0e72b5114fb8a05a1d01977" "format1-bpp-indexed.cs" >}}
