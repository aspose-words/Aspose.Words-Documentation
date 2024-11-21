---
title: Werken met lettertypen in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met lettertypen
linktitle: Werken met lettertypen
description: "Lettertypeopmaak in details met behulp van Java."
type: docs
weight: 230
url: /nl/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Een lettertype is een verzameling tekens met een bepaalde grootte, kleur en ontwerp. Aspose.Words kunt u werken met lettertypen met behulp van verschillende lettertype-gerelateerde klassen, waaronder de [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) Klasse.

## Lettertypeopmaak

Huidige lettertypeopmaak wordt weergegeven door een **Font** object teruggegeven door de [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) eigendom. De **Font** klasse bevat een breed scala aan font eigenschappen mogelijk in Microsoft Word.

Het volgende codevoorbeeld laat zien hoe u lettertypeopmaak kunt instellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Vullen eigenschappen zijn nu ook beschikbaar voor lettertypen om vul opmaak van tekst in te stellen. Het geeft een mogelijkheid om te veranderen, bijvoorbeeld, de voorgrondkleur of transparantie van tekst vullen.

## Lettertypelijnruimte ophalen

De lijnafstand van een lettertype is de verticale afstand tussen de basislijnen van twee opeenvolgende regels tekst. De lijnafstand omvat dus de lege ruimte tussen lijnen en de hoogte van het teken zelf.

De [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) het eigendom werd ingevoerd in de **Font** klasse om deze waarde te verkrijgen zoals aangegeven in het onderstaande voorbeeld:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Lettertype met nadruk Mark

De **Font** klasse levert [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) eigenschap om te krijgen of instellen NadrukMark opsommingswaarden worden toegepast in de opmaak.

Het volgende code voorbeeld laat zien hoe u de **EphasisMark** eigenschap:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
