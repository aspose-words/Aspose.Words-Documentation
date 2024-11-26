---
title: Werk met Inhoud Beheer SDT
second_title: Aspose.Words vir C++
articleTitle: Werk met Inhoud Beheer SDT
linktitle: Werk met Inhoud Beheer SDT
type: docs
description: "Gevorderde dokumentinhoudbestuur, hoe om inhoudbeheer (Gestruktureerde Dokumentetikette) te skep en te manipuleer met behulp van C++."
weight: 390
url: /af/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

In Microsoft Word kan jy'n vorm skep deur met'n sjabloon te begin en inhoudskontroles by te voeg, insluitend vinkbokse, tekskassies, datumplukkers en aftreklyste. In Aspose.Words word'n Gestruktureerde Dokument Tag of inhoud beheer van enige dokument gelaai in Aspose.Words ingevoer as'n StructuredDocumentTag node. Gestruktureerde dokument etikette (SDT of inhoud beheer) toelaat om kliënt-gedefinieerde semantiek sowel as sy gedrag en voorkoms in'n dokument te insluit. StructuredDocumentTag kan in'n dokument voorkom in die volgende plekke:

- Blokvlak - onder paragrawe En tabelle, As'n Kind Van'n Liggaam, HeaderFooter, Kommentaar, Voetnoot of'n Vormknooppunt
- Ry-vlak-Tussen rye in'n tabel, as'n kind van'n Tabelknooppunt
- Selvlak-Onder selle In'n tabelry, as'n kind van'n Ryknooppunt
- Inline-vlak-Onder inline inhoud binne, as'n kind Van'n Paragraaf
- Geneste binne'n ander StructuredDocumentTag

## Hoe Om Styl Te Stel Om Teks Wat In Die Inhoudsbeheer Getik Is, Te Formateer

As jy die styl van inhoudbeheer wil instel, kan jy `StructuredDocumentTag.Style` of `StructuredDocumentTag.StyleName` eienskappe gebruik. As u die teks in die inhoudsbeheer in die uitvoerdokument tik, sal die getikte teks styl "Kwotasie"hê.

{{% alert color="primary" %}}

Let daarop dat slegs Gekoppelde en Karakterstyle toegepas kan word op inhoudbeheer. 'n InvalidOperationException ("Kan nie hierdie styl op die SDT toepas nie") word gegooi wanneer'n styl wat bestaan, maar nie Gekoppel is nie of Karakterstyl toegepas word.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die styl van inhoud beheer stel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Werk Met Herhalende Afdeling Inhoud Beheer

Die herhalende afdeling inhoud beheer laat herhaling van die inhoud wat daarin vervat is. Met behulp van Aspose.Words, kan die gestruktureerde dokument tag nodes van die herhalende afdeling en herhalende afdeling item tipes geskep word en vir hierdie doel, SdtType opsomming tipe bied **RepeatingSectionItem** eiendom.

Die volgende kode voorbeeld toon hoe om'n herhalende gedeelte inhoud beheer te bind aan'n tabel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
