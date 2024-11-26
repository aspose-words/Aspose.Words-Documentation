---
title: Spesifiseer Stoorkeuses in Java
second_title: Aspose.Words vir Java
articleTitle: Spesifiseer Stoorkeuses
linktitle: Spesifiseer Stoorkeuses
description: "Stel gevorderde eienskappe wanneer'n dokument gestoor word met Java om meer presiese beheer oor die proses te verskaf."
type: docs
weight: 20
url: /af/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Wanneer jy'n dokument stoor, kan jy'n paar gevorderde eienskappe stel. Aspose.Words bied u die [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) klas, wat meer presiese beheer van die stoorproses moontlik maak. Daar is oorladings van die **Save** metode wat'n **SaveOptions** voorwerp aanvaar dit moet'n voorwerp van'n klas afgelei van die **SaveOptions** klas wees. Elke stoor formaat het'n ooreenstemmende klas wat stoor opsies vir hierdie stoor formaat hou, byvoorbeeld, daar is [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) vir die stoor na PDF formaat, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) vir die stoor na Markdown formaat, of [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) vir die stoor na'n beeld. Hierdie artikel bied voorbeelde van die werk met'n paar opsies klasse afgelei van **SaveOptions**.

Die volgende kode voorbeeld toon hoe om die stoor opsies stel voor die stoor van die dokument in HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Die artikel beskryf'n paar eienskappe wat jy kan beheer wanneer jy'n dokument stoor.

## Enkripteer'n Dokument Met'n Wagwoord

Gebruik die **Password** eienskap om'n wagwoord vir'n geënkripteerde dokument te kry of in te stel. Gebruik die **Password** eienskap van die ooreenstemmende klas om te werk met die gekose dokument formaat.

Byvoorbeeld, wanneer'n dokument gestoor word in DOC of DOT formaat, gebruik die [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) eienskap van die [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) klas.

Die volgende kode voorbeeld toon hoe om'n wagwoord te stel om'n dokument te enkripteer met behulp van die RC4 enkripsie metode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Wanneer'n dokument in ODT formaat gestoor word, gebruik die [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) eienskap van die [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) klas.

Die volgende kode voorbeeld toon hoe om te laai en te stoor OpenDocument geïnkripteer met'n wagwoord:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Nie alle formate ondersteun enkripsie en die gebruik van **Password** eienskap nie.

## Wys Dokument Stoor Vordering Kennisgewings

Aspose.Words bied die vermoë om die [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) eienskap te gebruik om kennisgewings te kry oor die vordering van dokumentbesparing.

Dit is nou beskikbaar wanneer spaar om DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, of TXT formate.

## Dateer Die Dokument Se Skeppingstyd op

Aspose.Words bied'n vermoë om die [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) eienskap te gebruik om die dokument skep datum in UTC te kry of stel. U kan ook hierdie waarde opdateer voordat u die [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) - opsie gebruik.

Die volgende kode voorbeeld toon hoe om die dokument skepping tyd te werk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Dateer Laaste Gestoorde Eiendom Op

Aspose.Words bied'n vermoë om die [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) eienskap te gebruik om'n waarde te kry of te stel wat bepaal of die [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) eienskap opgedateer word voordat dit gestoor word.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te stel en stoor die dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Stoor Swart En Wit Beeld Met Een Bietjie Per Pixel Formaat

Om beeld stoor opsies te beheer, is die **ImageSaveOptions** klas gebruik. U kan byvoorbeeld die [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) - eienskap gebruik om die pixelformaat vir die gegenereerde beelde in te stel. Let asseblief daarop dat die pixel formaat van die uitset beeld kan verskil van die stel waarde as gevolg van die werk van GDI+.

Die volgende kode voorbeeld toon hoe om'n swart en wit beeld te red met een bietjie per pixel formaat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
