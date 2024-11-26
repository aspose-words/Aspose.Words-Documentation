---
title: Werken met Content Control SDT
second_title: Aspose.Words voor C++
articleTitle: Werken met Content Control SDT
linktitle: Werken met Content Control SDT
type: docs
description: "Geavanceerd documentcontentbeheer, hoe u inhoudsbesturingselementen (gestructureerde Documenttags) kunt maken en manipuleren met behulp van C++."
weight: 390
url: /nl/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

In Microsoft Word kunt u een formulier maken door te beginnen met een sjabloon en inhoudsbesturingselementen toe te voegen, waaronder selectievakjes, tekstvakken, datumkiezers en vervolgkeuzelijsten. In Aspose.Words wordt een gestructureerde Documenttag of inhoudsbesturingselement van elk document dat in Aspose.Words is geladen, geïmporteerd als een StructuredDocumentTag - knooppunt. Gestructureerde document tags (SDT of content control) maken het mogelijk om door de klant gedefinieerde semantiek en het gedrag en uiterlijk ervan in een document in te sluiten. StructuredDocumentTag kan op de volgende plaatsen in een document voorkomen:

- Blokniveau-tussen alinea ' s en tabellen, als een kind van een hoofdtekst, HeaderFooter, opmerking, voetnoot of een vormknooppunt
- Rij-niveau-tussen rijen in een tabel, als een kind van een Tabelknooppunt
- Celniveau-tussen cellen in een tabelrij, als een kind van een rijknooppunt
- Inline-niveau-onder inline-inhoud binnen, als een kind van een alinea
- Genest in een andere StructuredDocumentTag

## Stijl instellen voor het opmaken van tekst die in het inhoudsbesturingselement is getypt

Als u de stijl van inhoudsbesturing wilt instellen, kunt u Eigenschappen `StructuredDocumentTag.Style` of `StructuredDocumentTag.StyleName` gebruiken. Wanneer u de tekst in inhoudscontrole in het uitvoerdocument typt, zal de getypte tekst stijl "citaat"hebben.

{{% alert color="primary" %}}

Merk op dat alleen gekoppelde en tekenstijlen kunnen worden toegepast op inhoudsbeheer. Een InvalidOperationException ("kan deze stijl niet toepassen op de SDT") wordt gegooid wanneer een stijl die bestaat maar niet is gekoppeld of tekenstijl wordt toegepast.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u de stijl van inhoudsbeheer instelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Werken met Repeating Section Content Control

Met het inhoudsbesturingselement herhalende sectie kunt u de inhoud ervan herhalen. Met behulp van Aspose.Words kunnen de gestructureerde document tag nodes van de herhalende sectie en herhalende sectie item types worden gemaakt en voor dit doel biedt SdtType enumeration type **RepeatingSectionItem** eigenschap.

Het volgende codevoorbeeld laat zien hoe u een herhalende sectie-inhoudsbesturingselement aan een tabel kunt binden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
