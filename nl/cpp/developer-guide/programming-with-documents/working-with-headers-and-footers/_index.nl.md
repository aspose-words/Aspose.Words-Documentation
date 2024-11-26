---
title: Werken met kop-en voetteksten in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Headers en Footers
linktitle: Werken met Headers en Footers
description: "Kop-en voetteksten bewerken met C++."
type: docs
weight: 150
url: /nl/cpp/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Met Aspose.Words kunnen gebruikers werken met kop-en voetteksten in een document. Een koptekst is tekst die bovenaan een pagina wordt geplaatst en een voettekst is tekst onderaan een pagina. Meestal worden deze gebieden gebruikt om informatie in te voegen die op alle of sommige pagina ' s van het document moet worden herhaald, zoals paginanummers, aanmaakdatum, bedrijfsinformatie, enzovoort.

## Kop-of voetteksten maken met DocumentBuilder

Als u een documentkop of voettekst programmatisch wilt toevoegen, is de eenvoudigste manier om de [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) - klasse te gebruiken om dit te doen.

Het volgende codevoorbeeld laat zien hoe u een kop-en voettekst voor documentpagina ' s kunt toevoegen:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## Kop-of Voettekstopties opgeven

Wanneer u een kop-of voettekst aan een document toevoegt, kunt u een aantal geavanceerde eigenschappen instellen. Aspose.Words biedt gebruikers de klassen [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) en [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/), evenals [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/) opsomming die u meer controle geeft over het aanpassingsproces van kop-en voetteksten.

### Kop-of Voetteksttype opgeven

U kunt drie verschillende kopteksttypen en drie verschillende voetteksttypen opgeven voor één document:

1. Kop-en / of voettekst voor de eerste pagina
2. Kop-en / of voettekst voor even pagina ' s
3. Kop-en / of voettekst voor oneven pagina ' s

Het volgende codevoorbeeld laat zien hoe u een koptekst voor oneven documentpagina ' s kunt toevoegen:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### Geef op of u verschillende kop-of voetteksten voor de eerste pagina wilt weergeven

Zoals hierboven vermeld, kunt u ook een andere kop-of voettekst instellen voor de eerste pagina. Om dit te doen, moet u de vlag [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) instellen op `true` en vervolgens de waarde **HeaderFirst** of **FooterFirst** specificeren.

Het volgende codevoorbeeld laat zien hoe u de koptekst alleen voor de eerste pagina instelt:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### Geef op of verschillende kop-of voetteksten voor oneven of Even pagina ' s moeten worden weergegeven

 Vervolgens wilt u verschillende kop-of voetteksten instellen voor oneven en even pagina ' s in een document. Om dit te doen, moet u de vlag [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) instellen op `true` en vervolgens de waarden **HeaderPrimary** en **HeaderEven** of **FooterPrimary** en **FooterEven** specificeren.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### Voeg een absoluut gepositioneerde afbeelding in de koptekst

Als u een afbeelding in een kop-of voettekst wilt plaatsen, gebruikt u het type **HeaderPrimary** koptekst of het type **FooterPrimary** voettekst en de methode `InsertImage`.

Het volgende codevoorbeeld laat zien hoe u een afbeelding aan een koptekst toevoegt:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### Lettertype-en alinea-Eigenschappen instellen voor koptekst of voettekst

Met Aspose.Words kunt u de eigenschappen lettertype en alinea instellen, het type **HeaderPrimary** koptekst of het type **FooterPrimary** voettekst gebruiken, evenals methoden en eigenschappen voor het werken met de lettertypen en alinea ' s die u gebruikt voor de hoofdtekst van het document.

Het volgende codevoorbeeld laat zien hoe u de tekst in de koptekst instelt op Arial, vet, grootte 14 en centeruitlijning:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### Paginanummers invoegen in de kop-of voettekst

Indien nodig kunt u paginanummers toevoegen aan de kop-of voettekst. Gebruik hiervoor het type **HeaderPrimary** koptekst of het type **FooterPrimary** voettekst en de methode [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) om het vereiste veld toe te voegen.

Het volgende codevoorbeeld laat zien hoe u paginanummers toevoegt aan de voettekst aan de rechterkant:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### Kop-of voetteksten gebruiken die in de vorige sectie zijn gedefinieerd

Als u de kop-of voettekst van de vorige sectie wilt kopiëren, kunt u dat ook doen.

Het volgende codevoorbeeld laat zien hoe u de kop-of voettekst uit de vorige sectie kopieert:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### Zorg ervoor dat de kop-of voettekst eruitziet bij gebruik van verschillende Paginaoriëntaties en paginagrootte

Met Aspose.Words kunt u de weergave van een kop-of voettekst weergeven wanneer u verschillende oriëntaties en paginagroottes gebruikt.

Het volgende voorbeeld laat zien hoe dit te doen:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## Alleen kopteksten of alleen voetteksten verwijderen

Elke sectie in een document kan maximaal drie kopteksten en maximaal drie voetteksten hebben (voor eerste, even en oneven pagina ' s). Als u ALLE kop-of voetteksten in een document wilt verwijderen, moet u alle secties doorlopen en elke overeenkomstige kop-of voettekstknoop verwijderen.

Het volgende codevoorbeeld laat zien hoe u alle voetteksten uit alle secties kunt verwijderen, maar kopteksten intact kunt laten. U kunt alleen headers op een vergelijkbare manier verwijderen:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
