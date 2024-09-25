---
title: Geheugenvereisten
second_title: Aspose.Words voor Java
articleTitle: Geheugenvereisten
linktitle: Geheugenvereisten
description: "Hoeveel geheugen doet Aspose.Words voor Java moeten werken met documenten? Leer de details."
type: docs
weight: 10
url: /nl/java/memory-requirements/
---

Aspose.Words biedt een breed scala aan functies om te werken met documenten in verschillende formaten. Het is belangrijk om op te merken dat er geen limiet op de maximale grootte van een document bestand dat Aspose.Words kan verwerken of renderen. De enige beperking is de hoeveelheid RAM (geheugen) die aan uw zijde beschikbaar is.

## Hoeveel geheugen Aspose.Words Noodzakelijk

Meestal Aspose.Words heeft meerdere malen meer geheugen nodig dan de documentgrootte om een model van het document in het geheugen op te bouwen. Bijvoorbeeld, als uw document grootte is 1 MB, Aspose.Words heeft 10-20 MB RAM nodig om zijn Document Object Model (DOM) in het geheugen. De multiplier is afhankelijk van het formaat omdat sommige formaten compacter zijn dan andere. DOCX is bijvoorbeeld compacter dan DOC en RTF, en DOC is compacter dan RTF.

Er is geen exacte manier om te schatten hoeveel geheugen Aspose.Words daadwerkelijk verbruikt tijdens de verwerking van een bepaald documentbestand. Zoals u wellicht weet Java slaat gegevens op in klassen, elke klasse instantie gebruikt wat geheugen voor JVM (Java Virtuele machine) interne doeleinden. Dus elke paragraaf of geformatteerde tekst (zelfs bestaat uit een teken) neemt wat extra geheugen na het laden in de DOM. Bovendien heeft de Java Vuilnisverzamelaar engine gebruikt een complex algoritme om de beste tijd om een geheugenverzameling uit te voeren te bepalen, waardoor het moeilijk is om het echte geheugenverbruik te bepalen.

## Hoe het bedrag van het geheugen te berekenen

Laten we twee documenten bekijken:

1. DOCX "A" document
2. DOCX "B" document met daarin 0.35 MB grootte (slechts 1 pagina), met PNG afbeelding

Zoals u weet, zijn veel moderne formaten zoals DOCX, ODT, etc. eenvoudige ZIP-archieven. We krijgen het volgende rekenalgoritme:
1. Ontritsen. Uitgepakt document "A" heeft 20 MB grootte, document "B" heeft 0,4 MB grootte
2. Het document in het model laden (building its Document Object Model Wat? DOM):
* Creëren DOM van het eerste document "A" vereist 49 MB grootte
* Creëren DOM van het tweede document "B" vereist slechts 2 MB grootte.
3. Meten van de benodigde hoeveelheid geheugen om deze documenten aan PDF te geven. Voor deze operatie, Aspose.Words vereist:
  * 294 MB voor document "A"
  * 7 MB voor document "B"

Zoals je kunt zien, is er geen lineaire afhankelijkheid van de grootte van het invoerdocument. Er zijn veel factoren die van invloed kunnen zijn op de vereiste RAM-grootte van het document formaat, de complexiteit en structuur, het aantal afbeeldingen en hun formaat, en veel andere factoren.

## Hoe de Memory Multiplier nauwkeurig te berekenen

Experimenten met duizenden echte documenten tonen aan dat typisch Aspose.Words vereist meerdere malen meer geheugen dan de gemiddelde documentgrootte om een documentmodel in het geheugen op te bouwen en eenvoudige bewerkingen zoals conversie tussen stroomformaten uit te voeren; mail merge, Ontleden, vervangen, enzovoort. Soms hebben we het over een multiplier van 2 en soms 20.

Meer complexe bewerkingen zoals rendering (omzetten naar vaste paginaformaten), het bijwerken van velden, het splitsen van pagina's, en andere, voor sommige documenten vereisen 20 keer meer middelen dan het geheugen toegewezen door het document geladen in Aspose.Words DOM.

Als uw profilering resultaten wijzen op een mogelijk geheugen probleem in Aspose.Words, Neem contact op met ons [Technische ondersteuning](/words/nl/java/technical-support/) en omvat alle diagnostische informatie.

## Zie ook

* [Renderen](/words/nl/java/rendering/)
* [Mail Merge en relatie](/words/java/mail-merge-and-reporting/)
* [Werken met Velden](/words/nl/java/working-with-fields/)