---
title: Werk met Inhoud Beheer SDT in Java
second_title: Aspose.Words vir Java
articleTitle: Werk met Inhoud Beheer SDT
linktitle: Werk met Inhoud Beheer SDT
type: docs
description: "Gevorderde dokumentinhoudbestuur, hoe om inhoudbeheer (Gestruktureerde Dokumentetikette) te skep en te manipuleer met behulp van Java."
weight: 390
url: /af/java/working-with-content-control-sdt/
---

In Microsoft Word kan jy'n vorm skep deur met'n sjabloon te begin en inhoudskontroles by te voeg, insluitend checkboxes, tekskassies, datumplukkers en aftreklyste. In Aspose.Words word'n Gestruktureerde Dokumentetiket of inhoudbeheer van enige dokument wat in Aspose.Words gelaai is, ingevoer as'n StructuredDocumentTag - knooppunt. Gestruktureerde dokument etikette (SDT of inhoud beheer) toelaat inbed kliënt-gedefinieerde semantiek sowel as sy gedrag en voorkoms in'n dokument.

StructuredDocumentTag kan in'n dokument voorkom in die volgende plekke:

- Blokvlak-Onder paragrawe en tabelle, As'n Kind van'n Liggaam, HeaderFooter, Kommentaar, Voetnoot of'n Vormknooppunt.
- Ry-vlak-Tussen rye in'n tabel, as'n kind van'n Tabelknooppunt.
- Selvlak-Onder selle in'n tabelry, as'n kind van'n Ryknooppunt.
- Inline-vlak-Onder inline inhoud binne, as'n kind van'n Paragraaf.
- Ingesluit binne'n ander StructuredDocumentTag.

## Invoeging Van Inhoudkontroles in'n Dokument

In hierdie weergawe van Aspose.Words, kan die volgende tipes van SDT of inhoud beheer geskep word:

- Checkbox
- DropDownList
- ComboBox
- Datum
- BuildingBlockGallery
- Groep
- `Picture`
- RichText
- PlainText

Die volgende kode voorbeeld toon hoe om inhoud beheer van tipe checkboxte skep:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Die volgende kode voorbeeld toon hoe om inhoud beheer van tipe ryk teks boks te skep:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Die volgende kode voorbeeld toon hoe om inhoud beheer van tipe combo boks te skep:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Hoe Om Inhoudskontroles Op Te Dateer

Hierdie afdeling verduidelik hoe om die waardes van SDT of inhoud beheer programmaties te werk.

Die volgende kode voorbeeld toon hoe om die huidige toestand van die checkboxstel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Die volgende kode voorbeeld toon hoe om inhoud kontroles van tipe gewone teks boks, drop-down lys en prentjie te verander:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeelde aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Bindende Inhoud Beheer Om Persoonlike XML Dele

Jy kan inhoudsbeheer bind met XML data (*custom XML part*) in Word-dokumente.

Die volgende kode voorbeeld toon hoe om inhoud beheer bind om persoonlike XML dele:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Maak die inhoud van'n Inhoudsbeheer skoon

U kan die inhoud van'n inhoudsbeheer skoonmaak deur'n plekhouer te vertoon. **StructuredDocumentTag.clear()** metode maak die inhoud van hierdie gestruktureerde dokument tag skoon en vertoon'n plekhouer as dit gedefinieer is. Dit is egter nie moontlik om die inhoud van'n inhoudskontrole skoon te maak as dit hersienings het nie. As'n inhoudskontrole geen plekhouer het nie, word vyf spasies ingevoeg soos in MS Word (behalwe herhalende afdelings, herhalende afdelingitems, groepe, vinkbokse, aanhalings). As'n inhoud beheer is gekarteer na persoonlike XML, die verwys XML node is skoongemaak.

Die volgende kode voorbeeld toon hoe om die inhoud van inhoud beheer skoon te maak:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Verander Inhoud Beheer Agtergrond En Grens Kleure

Die `StructuredDocumentTag.Color` eienskap laat jou toe om die kleur van inhoud beheer te kry of stel. Die kleur beïnvloed inhoud beheer in twee situasies:

1. MS Word beklemtoon die agtergrond van die inhoudbeheer wanneer die muis oor die inhoudbeheer beweeg. Dit help om die inhoud beheer te identifiseer. Die kleur van die verligting is'n bietjie" sagter " as die *Color*. Byvoorbeeld, MS Word beklemtoon die agtergrond met die pienk kleur, wanneer *Color* Rooi is.
2. Wanneer jy interaksie (redigering, pluk ens) met die inhoud beheer, is die grens van inhoud beheer gekleur met die *Color*.

Die volgende kode voorbeeld toon hoe om die kleur van inhoud beheer te verander:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Hoe Om Styl Te Stel Om Teks Wat In Die Inhoudsbeheer Getik Is, Te Formateer

As jy die styl van inhoudbeheer wil instel, kan jy `StructuredDocumentTag.Style` of `StructuredDocumentTag.StyleName` eienskappe gebruik. As u die teks in die inhoudsbeheer in die uitvoerdokument tik, sal die getikte teks die styl "Kwotasie"hê.

{{% alert color="primary" %}}

Let daarop dat slegs Gekoppelde en Karakterstyle toegepas kan word op inhoudbeheer. 'n InvalidOperationException ("Kan nie hierdie styl op die SDT toepas nie") word gegooi wanneer'n styl wat bestaan, maar nie Gekoppel is nie of Karakterstyl toegepas word.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die styl van inhoud beheer stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Werk Met Herhalende Afdeling Inhoud Beheer

Die herhalende afdeling inhoud beheer laat herhaling van die inhoud wat daarin vervat is. Met behulp van Aspose.Words, kan die gestruktureerde dokument tag nodes van die herhalende afdeling en herhalende afdeling item tipes geskep word en vir hierdie doel, [SdtType enumeration type](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) bied REPEATING_SECTION_ITEM lid.

Die volgende kode voorbeeld toon hoe om'n herhalende gedeelte inhoud beheer te bind aan'n tabel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

