---
title: Omskep Woord na PDF in C#
second_title: Aspose.Words vir .NET
articleTitle: Skakel'n Dokument om na PDF
linktitle: Skakel'n Dokument om na PDF
description: "Skakel'n dokument om na PDF met C#. Omskep DOCX na PDF C#. Verskeie invoer formate word ondersteun, insluitend Word, OpenOffice, Beeld en eBook formate."
type: docs
weight: 10
url: /af/net/convert-a-document-to-pdf/
timestamp: 2024-09-25-11-08-55
---

Die vermoë om dokumente maklik en betroubaar van een formaat na'n ander te omskep, is'n belangrike kenmerk van Aspose.Words. Een van die mees gewilde formate vir die omskakeling is PDF – 'n vaste uitleg-formaat, wat bewaar die oorspronklike voorkoms van'n dokument tydens sy lewering op verskeie platforms. Die "lewering" term word gebruik in Aspose.Words om te beskryf die proses van die omskakeling van'n dokument in'n lêer formaat wat is gepagineer of het die konsep van die bladsye.

## Skakel'n Word-Dokument om na PDF

Omskakeling van Woord na PDF is'n taamlik komplekse proses wat verskeie stadiums van berekening vereis. Aspose.Words uitleg enjin naboots die manier waarop die Microsoft Word se bladsy uitleg enjin werk, maak PDF uitset dokumente lyk so naby as moontlik aan wat jy kan sien in Microsoft Word.

Met Aspose.Words kan jy'n dokument programmaties omskakel Van Woordformate, soos DOC of DOCX, na PDF sonder om Microsoft Office te gebruik. Hierdie artikel verduidelik hoe om hierdie omskakeling uit te voer.

{{% alert color="primary" %}}

Let daarop dat die aantal bladsye in'n dokument die omskakelingstyd beïnvloed.

{{% /alert %}}

### Omskep DOCX of DOC na PDF

Omskakeling van die DOC of DOCX dokument formaat in die PDF formaat in Aspose.Words is baie maklik en kan bereik word met net twee reëls van die kode wat:

1. Laai jou dokument in'n [Document](https://reference.aspose.com/words/net/aspose.words/document/) voorwerp met behulp van een van sy konstruktors deur die spesifiseer van die dokument naam met sy formaat uitbreiding.
1. Roep een van die [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) metodes op die **Document** voorwerp en spesifiseer die gewenste uitset formaat as PDF deur die invoer van'n lêernaam met die ".PDF" uitbreiding.

Die volgende kode voorbeeld toon hoe om'n dokument van DOCX te omskep in PDF met behulp van die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) metode:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Soms is dit nodig om addisionele opsies te spesifiseer, wat die resultaat van die stoor van'n dokument as'n PDF kan beïnvloed. Hierdie opsies kan gespesifiseer word deur die gebruik van die [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) klas, wat eienskappe bevat wat bepaal hoe die PDF uitset vertoon sal word.

Let daarop dat met dieselfde tegniek, kan jy enige vloei-uitleg formaat dokument om te skakel na PDF formaat.

{{% /alert %}}

### Skakel Na Verskillende PDF Standaarde

Aspose.Words bied die [PdfCompliace ](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/)opsomming te ondersteun die omskakeling van DOC of DOCX in verskeie PDF formaat standaarde (soos PDF 1.7, PDF 1.5, ens.).

Die volgende kode voorbeeld demonstreer hoe om'n dokument te omskep in PDF 1.7 met behulp van [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) met ooreenstemming met PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Skakel Beelde om na PDF

Omskakeling na PDF word nie beperk deur Microsoft Word dokumentformate nie. Enige formaat ondersteun deur Aspose.Words, insluitend programmaties geskep, kan ook omgeskakel word na PDF. Byvoorbeeld, kan ons enkele bladsy beelde, soos JPEG, PNG, BMP, EMF, of WMF, sowel as meerbladsy-beelde, soos TIFF en GIF, tot PDF.

Die volgende kode voorbeeld toon hoe om JPEG en TIFF beelde te omskep in PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

Om hierdie kode te laat werk, moet jy verwysings na Aspose.Words en `System.Drawing` by jou projek voeg.

## Verminder PDF Uitset Grootte

Wanneer jy stoor na PDF, kan jy spesifiseer of jy die uitset wil optimaliseer. Om dit te doen, moet jy die [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) vlag op waar stel, en dan sal oorbodige geneste doeke en leë doeke verwyder word, naburige glywe met dieselfde formatering sal gekonketen word.

Die volgende kode voorbeeld toon hoe om die uitset te optimaliseer:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

Die gebruik van die **OptimizeOutput** eienskap kan die akkuraatheid van inhoud vertoon beïnvloed.

{{% /alert %}}

## Sien Ook

- Die artikel [Lewering](/words/net/rendering/) vir meer inligting oor die vaste bladsy en vloei-uitleg formate
- Die artikel [Omskakeling Na Vaste bladsy Formaat](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) vir meer inligting oor die bladsy uitleg
- Die artikel [Spesifiseer Vertoonopsies Wanneer U Na PDFOmskakel](/words/net/specify-rendering-options-when-converting-to-pdf/) vir meer inligting oor die gebruik van die `PdfSaveOptions` klas
- Die artikel [Leer Kenmerke van Omskakeling na PDF/A en PDF/UA](/words/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) beskryf watter PDF standaard en die relevante ISO vir PDF standaarde ondersteun Aspose.Words
- Die artikel [Watter PDF Standaard Is Beter Om Te Kies](/words/net/which-pdf-standard-is-better-to-choose/) om te bepaal watter PDF standaarde sin maak vir watter gevalle

- Die artikel [Werk met PDF/A of PDF/UA](/words/net/working-with-pdfa-or-pdfua/) beskryf die vereistes vir die dokumentinhoud in PDF/A en PDF/UA formate-hoofsaaklik die vereistes vir die struktuur en lettertipes

- Die artikel [Toeganklikheid Uitgawe Waarskuwings Wanneer Stoor na PDF/A en PDF/UA](/words/net/warnings-when-saving-to-pdfa-and-pdfua/) beskryf wat inhoud toeganklikheid vereistes PDF/A en PDF/UA oplê
