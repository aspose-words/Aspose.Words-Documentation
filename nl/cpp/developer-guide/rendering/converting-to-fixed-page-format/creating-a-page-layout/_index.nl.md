---
title: Een pagina-indeling maken in C++
second_title: Aspose.Words voor C++
articleTitle: Een pagina-indeling maken
linktitle: Een pagina-indeling maken
description: "Het maken van een pagina-indeling kan een kostbare procedure zijn. Aspose.Words maakt alleen een pagina-indeling aan als dat nodig is: om documentpagina ' s weer te geven, om een veldwaarde te verkrijgen, om een document naar HTML te exporteren, enz."
type: docs
weight: 10
url: /nl/cpp/creating-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

Het maken van een pagina-indeling kan een kostbare procedure zijn, zowel in termen van snelheid als geheugen. Dit is te wijten aan verschillende redenen:

- Het document kan een grote hoeveelheid inhoud bevatten, die mogelijk op duizenden pagina ' s moet worden weergegeven. De geometrie van elk object op elke pagina moet worden beschreven, waardoor geheugenbronnen worden verbruikt.
- Het document kan veel regels bevatten, waardoor de geometrie wordt beperkt. Er kan aanzienlijke rekentijd worden besteed, zodat aan elke beperking wordt voldaan.
- Sommige documentfuncties, bijvoorbeeld het veld `NUMPAGES`, creëren recursieve afhankelijkheden voor toekomstige eigenschapswaarden, die niet beschikbaar zijn op het moment van berekening. Dit leidt tot repetitieve berekeningen en telt op in de rekentijd.

Om de bovengenoemde redenen zal Aspose.Words alleen een pagina-indeling maken als dat nodig is. Een typische reden hiervoor is een verzoek om documentpagina ' s weer te geven of om een veldwaarde te verkrijgen die afhankelijk is van de informatie die beschikbaar is in de pagina-indeling. Een minder voor de hand liggende reden kan het exporteren van een document naar HTML zijn. Hoewel HTML geen vast paginaformaat is en de geometrie van de inhoudsobjecten niet wordt beschreven, ondersteunt het nog steeds afbeeldingen. Dergelijke afbeeldingen kunnen de vorm hebben van vormen die in Microsoft Word zijn gemaakt met een tekst erin. Een grafiek met aslabels kan bijvoorbeeld als afbeelding naar HTML worden geëxporteerd, maar voordat dit kan worden gedaan, moet Aspose.Words die afbeelding renderen en dus weten waar het label moet worden weergegeven. Zie het onderstaande grafiekvoorbeeld:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Niet-Geometrische Eigenschappen

Naast het verwerken van geometrische informatie is een pagina-indeling ook verantwoordelijk voor het berekenen van kleuren en randstijlen. In Microsoft Word kan tekstkleur als automatisch worden opgegeven, wat betekent dat de kleurselectie moet worden gebaseerd op de schaduwkleur van de cel of alinea, of op de kleur van de pagina waar de tekst wordt weergegeven.

Pagina-indeling berekent waar de tekst zal verschijnen en welke inhoud erachter zal worden weergegeven, waardoor kleurberekening mogelijk is. Er zijn andere specifieke berekeningen uitgevoerd door de pagina-indeling. Een horizontale rand in een tabel hangt bijvoorbeeld af van de vraag of een tabelrij de laatste is in een kolom met tekst en of deze over kolommen is gebroken. Als een rij als laatste in een kolom wordt weergegeven, wordt de onderste rand gebruikt in plaats van horizontaal.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

In Aspose.Words kan een gebruiker vragen om een nieuwe pagina-indeling te maken of een bestaande bij te werken. Beide kunnen worden uitgevoerd met de [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/) methode, geleverd door de [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) klasse. Als een pagina-indeling niet bestaat, maar wel nodig is (bijvoorbeeld wanneer het document wordt geëxporteerd naar een vaste paginaindeling), zal Aspose.Words Deze methode automatisch aanroepen. Als een pagina-indeling echter al bestaat, zal Aspose.Words de bestaande gebruiken om te voorkomen dat de benodigde bronnen worden gebruikt om deze bij te werken. In dit geval moet de gebruiker de methode `UpdatePageLayout` aanroepen om ervoor te zorgen dat de pagina-indeling up-to-date is met het documentmodel.

## Dynamische Structuur

Het proces van het maken van de pagina-indeling bestaat uit de volgende stappen::

- *Conversion* – inhoud van het documentmodel opsommen en overeenkomstige lay-outobjecten voorbereiden.
- *Build* – lay-outobjecten rangschikken om de inhoud van het document op pagina ' s weer te geven.
- *Reflow* – de rangschikking van objecten bijwerken om te voldoen aan geometriebeperkingen.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* – een stap vereist als het document shapes bevat met geneste tekstinhoud.

Merk op dat de pagina-indeling een dynamische structuur is, die gedeeltelijk kan worden herbouwd. Dit is vooral nodig wanneer het onmogelijk is om veldwaarden te berekenen zonder de documentlayoutstructuur opnieuw op te bouwen. Het veld kan verwijzen naar de locatie van een object op een pagina en tegelijkertijd wordt de veldwaarde zelf ook weergegeven op de pagina, wat van invloed is op de locatie van het object waarnaar wordt verwezen. Een pagina-indeling kan niet in één keer worden gebouwd, omdat veldwaarden mogelijk nog niet beschikbaar zijn op het moment van positionering op een pagina.

Overweeg het typische scenario wanneer het veld `NUMPAGES` wordt weergegeven in de voettekst van de eerste pagina in het document. De waarde van dit veld is het totale aantal pagina ' s. Om het veld op een pagina te plaatsen, moet de waarde ervan bekend zijn. Als alleen de eerste pagina Momenteel wordt gebouwd, is het totale aantal pagina ' s nog niet bekend. In dit geval moet de pagina-indeling De standaardwaarde gebruiken en later terugkeren naar dat veld en de waarde ervan wijzigen volgens de werkelijke berekeningen. Het wijzigen van de veldwaarde kan echter van invloed zijn op andere documentinhoud op een pagina en er uiteindelijk toe leiden dat een nieuwe pagina wordt toegevoegd of een bestaande pagina wordt verwijderd, waardoor de berekende waarde verouderd wordt. Dit probleem kan worden opgelost door het mogelijk te maken om de bestaande pagina-indeling bij te werken.

Bij het maken van een lay-out is het ook mogelijk om [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) eigenschappen in te stellen die van invloed zijn op de uitvoer van het document op pagina ' s.
