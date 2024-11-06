---
title: Skakel'n Dokument om na PDF in Java
second_title: Aspose.Words vir Java
articleTitle: Skakel'n Dokument om na PDF
linktitle: Skakel'n Dokument om na PDF
description: "Skakel'n dokument in Word of enige ander ondersteunde formaat na PDF, wat die oorspronklike voorkoms van'n dokument behou tydens sy weergawe op verskeie platforms met behulp van Java."
type: docs
weight: 10
url: /af/java/convert-a-document-to-pdf/
---

Die vermoë om dokumente maklik en betroubaar van een formaat na'n ander te omskep, is'n belangrike kenmerk van Aspose.Words. Een van die gewildste formate vir omskakeling is PDF – 'n vaste uitlegformaat, wat die oorspronklike voorkoms van'n dokument behou tydens die weergawe daarvan op verskillende platforms. Die term" rendering " word in Aspose.Words gebruik om die proses van omskakeling van'n dokument in'n lêerformaat te beskryf wat gepagineer is of die konsep van bladsye het.

## Skakel'n Word-Dokument om na PDF {#convert-a-word-document-to-pdf}

Omskakeling van Woord na PDF is'n taamlik komplekse proses wat verskeie stadiums van berekening vereis. Aspose.Words uitleg enjin naboots die manier waarop die Microsoft Word se bladsy uitleg enjin werk, maak PDF uitset dokumente lyk so naby as moontlik aan wat jy kan sien in Microsoft Word.

Met Aspose.Words kan jy'n dokument programmaties omskakel van DOC of DOCX formaat na PDF sonder om Microsoft Office te gebruik. Hierdie artikel verduidelik hoe om hierdie omskakeling uit te voer.

{{% alert color="primary" %}}

Let daarop dat die aantal bladsye in'n dokument die omskakelingstyd beïnvloed.

{{% /alert %}}

### Omskakeling DOCX of DOC na PDF {#converting-doc-or-docx-to-pdf}

Omskakeling van die DOC of DOCX dokument formaat in die PDF formaat in Aspose.Words is baie maklik en kan bereik word met net twee reëls van die kode wat:

1. Laai jou dokument in'n [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) voorwerp met behulp van een van sy konstruktors deur die spesifiseer van die dokument naam met sy formaat uitbreiding.
1. Roep een van die [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) metodes op die **Document** voorwerp en spesifiseer die gewenste uitset formaat as PDF deur die invoer van'n lêernaam met die ".PDF" uitbreiding.

Die volgende kode voorbeeld toon hoe om'n dokument van DOCX te omskep in PDF met behulp van die `Save` metode:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Soms is dit nodig om addisionele opsies te spesifiseer, wat die resultaat van die stoor van'n dokument as'n PDF kan beïnvloed. Hierdie opsies kan gespesifiseer word deur die gebruik van die [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) klas, wat eienskappe bevat wat bepaal hoe die PDF uitset vertoon sal word.

Let daarop dat met dieselfde tegniek, kan jy enige vloei-uitleg formaat dokument om te skakel na PDF formaat.

{{% /alert %}}

### Skakel Na Verskillende PDF Standaarde {#converting-to-various-pdf-standards}

Aspose.Words verskaf die [PdfCompliace ](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)opsomming om die omskakeling van DOC of DOCX in verskillende PDF formaat standaarde (soos PDF 1.7, PDF 1.5, en so aan.).

Die volgende kode voorbeeld demonstreer hoe om'n dokument te omskep na PDF 1.7 met behulp van [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) met ooreenstemming met PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Skakel Beelde om na PDF

Omskakeling na PDF word nie beperk deur Microsoft Word dokumentformate nie. Enige formaat ondersteun deur Aspose.Words, insluitend programmaties geskep, kan ook omgeskakel word na PDF. Byvoorbeeld, kan ons enkele bladsy beelde, soos JPEG, PNG, BMP, EMF, of WMF, sowel as meerbladsy-beelde, soos TIFF en GIF, tot PDF.

Die volgende kode voorbeeld toon hoe om JPEG en TIFF beelde te omskep in PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Om hierdie kode te laat werk, moet jy verwysings na Aspose.Words, Java byvoeg.awt.beeld, en javax.imageio klas pakkette om jou projek.

## Verminder PDF Uitset Grootte

Wanneer jy stoor na PDF, kan jy spesifiseer of jy die uitset wil optimaliseer. Om dit te doen, moet jy die [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) vlag op waar stel, en dan sal oorbodige geneste doeke en leë doeke verwyder word, naburige glywe met dieselfde formatering sal gekonketen word.

Die volgende kode voorbeeld toon hoe om die uitset te optimaliseer:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Die gebruik van die **OptimizeOutput** eienskap kan die akkuraatheid van inhoud vertoon beïnvloed.

{{% /alert %}}

## Sien Ook

- Die artikel [Lewering](/words/java/rendering/) vir meer inligting oor die vaste bladsy en vloei-uitleg formate
- Die artikel [Omskakeling Na Vaste bladsy Formaat](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) vir meer inligting oor die bladsy uitleg
- Die artikel [Spesifiseer Vertoonopsies Wanneer U Na PDFOmskakel](/words/java/specify-rendering-options-when-converting-to-pdf/) vir meer inligting oor die gebruik van die `PdfSaveOptions` klas
