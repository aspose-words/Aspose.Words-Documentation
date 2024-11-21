---
title: Kenmerken
second_title: Aspose.Words voor Python via .NET
articleTitle: Ondersteunde functies
linktitle: Ondersteunde functies
description: "Aspose.Words voor Python via .NET biedt gebruikers een breed scala aan functies, van het eenvoudig omzetten en wijzigen van documenten tot het creëren van gestructureerde en visueel aantrekkelijke documenten of het automatiseren van rapportage."
type: docs
weight: 30
url: /nl/python-net/features/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words biedt gebruikers een breed scala aan functies. Gebruikers kunnen een enorme hoeveelheid document-gerelateerde taken uit te voeren van het eenvoudig omzetten van documenten van het ene ondersteunde formaat naar het andere en het wijzigen van die documenten tijdens het conversieproces om zakelijke taken, zoals het creëren van gestructureerde en visueel aantrekkelijke documenten of het automatiseren van rapportage.

Moderne documentformaten en standaarden zijn complex, en wanneer u documentconversie of andere documentenverwerkingsfuncties in uw project nodig hebt, is de enige praktische oplossing vaak om te vertrouwen op een onderdeel van derden dat de gewenste functionaliteit implementeert. Maar het gebruik van een derde-partij component draagt altijd wat risico. Een van de unieke risico's in de documentverwerking is de vraag hoe de bibliotheek een bepaald documentformaat of standaard volledig en correct implementeert.

Aspose streeft ernaar de meest complete en nauwkeurige implementaties van documentformaten en standaarden te leveren. De Aspose.Words team toont hun inzet voor interoperabiliteit aan door gedetailleerde uitvoeringsnota's te verstrekken voor ondersteunde documentformaten op meerdere platforms.

De onderstaande tabellen geven een samenvatting en vergelijken de beschikbaarheid van Aspose.Words voor Python via .NET functies en links naar gedetailleerde functiebeschrijvingen.

## Ondersteunde platforms

De platforms Aspose.Words voor Python via .NET kan gebruikt worden op Windows x64 of x86, macOS x86_x64 of arm64 en een breed scala van Linux distributies met Python 3.5 of later geïnstalleerd. Er zijn aanvullende eisen aan de doelstelling Linux en macOS-platforms:
- GCC-6 runtime bibliotheken (of later)
- Afhankelijkheden van .NET Core Runtime. Installatie .NET Core Runtime zelf is `NOT` vereist
- Voor Python 3.5-3.7: Het `pymalloc` bouw van Python is nodig. De `--with-pymalloc` Python bouwoptie is standaard ingeschakeld. De Commissie is van mening dat de `pymalloc` bouw van Python is gemarkeerd met `m` achtervoegsel in de bestandsnaam.
- `libpython` gedeeld Python bibliotheek. De `--enable-shared` Python bouwoptie is standaard uitgeschakeld, sommige Python distributies bevatten geen `libpython` gedeelde bibliotheek. Voor sommige linux platforms, de `libpython` gedeelde bibliotheek kan worden geïnstalleerd met behulp van de pakketbeheerder, bijvoorbeeld: `sudo apt-get install libpython3.7`. De gemeenschappelijke kwestie is dat `libpython` bibliotheek is geïnstalleerd op een andere locatie dan de standaard systeemlocatie voor gedeelde bibliotheken. Het probleem kan worden opgelost met behulp van de Python bouwopties voor het instellen van alternatieve bibliotheekpaden bij het compileren Python, of vastgesteld door het creëren van een symbolische link naar de `libpython` bibliotheekbestand in de systeemstandaardlocatie voor gedeelde bibliotheken. De Commissie is van mening dat de `libpython` gedeelde bibliotheek bestandsnaam is `libpythonX.Ym.so.1.0` voor Python 3,5-3.7, of libpythonX.Y.so.1.0 voor Python 3.8 of later (bijvoorbeeld: `libpython3.7m.so.1.0`, `libpython3.9.so.1.0`).

Als je ondersteuning nodig hebt voor meer platforms, zoek dan naar de "twin brother" producten Aspose.Words voor .NET of Aspose.Words voor Java.

## Bestandsformaten en conversies

Veel klanten over de hele wereld vertrouwen op de grondige invoer- en exportfuncties van documenten Aspose.Words.

|  Functie | Omschrijving | Python via .NET |
|  :-  |  :-  |  :-  |
| `Microsoft Word - DOC` | De snelste en meest complete DOC-formaat implementatie die u kunt vinden. | {{< emoticons/tick >}} |
| `WordprocessingML - DOCX and XML` | Aspose.Words biedt uitgebreide ondersteuning OOXML, Flat OPC en ook Word 2003 XML. | {{< emoticons/tick >}} |
| `Rich Text Format - RTF` | Uitgebreide ondersteuning van het RTF-formaat voor interactie met verschillende toepassingen. | {{< emoticons/tick >}} |
| `HTML, XHTML and MHTML` | HTML/XHTML laden en opslaan voor nog meer interoperabiliteit. Opslaan als MHTML is ook beschikbaar. | {{< emoticons/tick >}} |
| `OpenDocument - ODT` | Aspose.Words kan documenten laden en opslaan in de `OpenDocument` Tekst (.odt) formaat. | {{< emoticons/tick >}} |
| `Adobe Portable Document Format - PDF` | Elk document omzetten naar PDF met een hoge betrouwbaarheid. PDF/A wordt ondersteund. | {{< emoticons/tick >}} |
| `XML Paper Specification - XPS` | Een document omzetten naar XPS met hoge trouw. | {{< emoticons/tick >}} |
| `Plain Text - TXT` | Eenvoudig tekst uitpakken door op te slaan in platte tekstformaat. | {{< emoticons/tick >}} |
| `Digital Publishing EPUB` | EPUB is een populair formaat voor eBooks. U kunt elk document converteren van Aspose.Words naar het IDPF EPUB-formaat. | {{< emoticons/tick >}} |
| `Printer Command Language (PCL)` | Aspose.Words voor .NET biedt ondersteuning om document op te slaan in PCL-formaat. | {{< emoticons/tick >}} |

## Renderen en afdrukken

Aspose.Words nu biedt hoge trouw rendering van documentpagina's.

|  Functie | Python via .NET |
|  :-  |  :-  |
| Opmaak document in pagina's met hoge trouw (precies zoals Microsoft Word® zou dat doen) naar alle onderstaande formaten. | {{< emoticons/tick >}} |
| Individuele pagina's of volledige documenten renderen naar PDF of XPS. | {{< emoticons/tick >}} |
| Documentpagina's naar BMP-afbeeldingen renderen | {{< emoticons/tick >}} |
| Documentpagina's naar afbeeldingen renderen (PNG, EMF, JPEG, GIF). | {{< emoticons/tick >}} |
| Render individuele vormen van het document in raster- of vectorbeelden. | {{< emoticons/tick >}} |
| Specificeer beeldresolutie, kwaliteit, compressie en andere opties. | {{< emoticons/tick >}} |
| Pagina's of vormen renderen naar een .NET Grafisch object met transformaties, naar een bepaalde grootte. | {{< emoticons/tick >}} |
| Documentpagina's afdrukken met de .NET drukkerijinfrastructuur. | {{< emoticons/cross >}} |
| Bijwerken `TOC`, paginanummers en andere velden vóór het renderen of afdrukken. | {{< emoticons/tick >}} |

## Functies voor documentinhoud

Aspose.Words biedt een rijk object model dat bestaat uit meer dan 100 openbare klassen, die u toelaten om programmatisch genereren, combineren, wijzigen, parsen of anderszins onderzoeken geladen documenten.

|  Functie | Python via .NET |
|  :-  |  :-  |
| Toegang tot, maken en wijzigen van paragrafen en tekst. | {{< emoticons/tick >}} |
| Toegang tot, maken en wijzigen van afbeeldingen, tekstvakken en vormen. | {{< emoticons/tick >}} |
| Toegang tot, maken en wijzigen van tabellen, rijen en cellen. | {{< emoticons/tick >}} |
| Velden, formuliervelden, hyperlinks en bladwijzers openen, aanmaken en wijzigen. | {{< emoticons/tick >}} |
| Documentsecties, headers en voetteksten openen, aanmaken en wijzigen. | {{< emoticons/tick >}} |
| Tonen, maken en wijzigen voetnoten, endnotes en opmerkingen. | {{< emoticons/tick >}} |
| Toegang tot, maken en wijzigen van aangepaste XML, SmartTags en gestructureerde documenttags (Content Controls). | {{< emoticons/tick >}} |
| Alle documentelementen benaderen en wijzigen met behulp van **XmlDocument** Zoals lessen en methoden. | {{< emoticons/tick >}} |
| Veldresultaten bijwerken `IF`, formule en andere populaire veldtypes. | {{< emoticons/tick >}} |
| Inhoudsopgave- (TOC-) velden opnieuw opbouwen en bijwerken, precies zoals Microsoft Word Doe het. | {{< emoticons/tick >}} |
| Documentelementen tussen documenten kopiëren en verplaatsen. | {{< emoticons/tick >}} |
| Deel en deel documenten. | {{< emoticons/tick >}} |
| Get and set ingebouwde en aangepaste document eigenschappen. | {{< emoticons/tick >}} |
| Specificeer documentbescherming, open beschermde en gecodeerde documenten. | {{< emoticons/tick >}} |
| Zoek en vervang tekst, tel op over documentinhoud. | {{< emoticons/tick >}} |
| Accepteer alle herzieningen in een document. | {{< emoticons/tick >}} |
| Bewaar of haal OLE-objecten en ActiveX-besturingselementen uit het document. | {{< emoticons/tick >}} |
| VBA macro's uit het document bewaren of verwijderen. Bewaar VBA macro's digitale handtekening. | {{< emoticons/tick >}} |
| Detecteer en verifieer digitale handtekeningen in documenten. | {{< emoticons/tick >}} |
| HTML tekst invoegen. | {{< emoticons/tick >}} |
| VBA uitpakken Macro's van Word Document. | {{< emoticons/tick >}} |

## Documentopmaakfuncties

Aspose.Words biedt gedetailleerde programmatische toegang tot de opmaak eigenschappen van alle document elementen.

|  Functie | Python via .NET |
|  :-  |  :-  |
| Toegang tot en wijzigen van alle karakteropmaak inclusief lettertypen, kleuren, effecten, randen en schaduw. | {{< emoticons/tick >}} |
| Toegang tot en wijziging van alle alinea-opmaak met inbegrip van streepjes, afstand, randen en schaduw, tabstops. | {{< emoticons/tick >}} |
| Toegang tot en wijzigen van alle gebullette en genummerde lijsten opmaak met inbegrip van nummering en niveaus. | {{< emoticons/tick >}} |
| Toegang tot en wijzigen van tabelopmaak met inbegrip van uitlijning, oriëntatie, grenzen en schaduw. | {{< emoticons/tick >}} |
| Toegang tot en wijzigen van alle sectie eigenschappen, inclusief papiergrootte, marges en oriëntatie. | {{< emoticons/tick >}} |
| Documentstijlen openen, aanmaken en wijzigen. | {{< emoticons/tick >}} |
| Tekenobjecten openen en wijzigen, inclusief positie, grootte, lijn- en vuleigenschappen, afbeeldingsbytes. | {{< emoticons/tick >}} |

## Mail Merge Kenmerken

U kunt Aspose.Words als een eigen rapportageoplossing. Ontwerp uw rapporten in Microsoft Word en dan hebben Aspose.Words Bevolk documenten met gegevens uit verschillende gegevensbronnen.

|  Functie | Python via .NET |
|  :-  |  :-  |
| Alle standaard gebruiken Microsoft Word mail merge velden in uw rapporten inclusief `MERGEFIELD`, `NEXT`, `NEXTIF`, `ADDRESSBLOCK`, Groeten. | {{< emoticons/tick >}} |
| Uitvoeren mail merge voor documenten die zelfs de meest complexe en geneste bevatten `IF` velden en formules. | {{< emoticons/tick >}} |
| Populeer en verbouw dynamisch tabellen of fragmenten in het document met behulp van uw gegevensbron mail merge regio's. | {{< emoticons/cross >}} |
| Gemakkelijk rapporten genereren die master-detail gegevens bevatten zoals Order/OrderDetails. | {{< emoticons/cross >}} |
| Documenten met gegevens van alle .NET gegevensbron zoals DataSet, DataTable, DataView, DataReader of ADO Recordset. | {{< emoticons/cross >}} |
| Populeer documenten van een gegevensbron zoals een LINQ query, XML-bestand of zakelijke objecten door het implementeren van de [IMailMergeDataSource](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/imailmergedatasource/) interface. | {{< emoticons/cross >}} |
| Neem nauwkeurige controle, zoals nummeropmaak, over hoe uw gegevens worden samengevoegd met behulp van gebeurtenissen. | {{< emoticons/cross >}} |
| Afbeeldingen invoegen tijdens mail merge. | {{< emoticons/tick >}} |
| Programmatisch een Microsoft Word mail merge gegevensbron voor een document. Behoud mail merge instellingen en gegevensbronnen. | {{< emoticons/tick >}} |
| Ophalen mail merge veldnamen. | {{< emoticons/tick >}} |

## Rapportagefuncties

LINQ Reporting Engine is een geavanceerde rapportage tool waarmee u documenten kunt genereren op basis van template documenten en gegevens verkregen uit verschillende bronnen, waaronder databases, XML, JSON, OData, objecten van aangepaste CLR-types, externe documenten, en meer uit de doos.

| Belangrijkste kenmerken | Python via .NET |
|  :-  |  :-  |
| Steun van C# syntax en LINQ uitbreidingsmethoden direct in templates (zelfs voor `ADO.NET` gegevensbronnen) | {{< emoticons/tick >}} |
| Ondersteuning van herhaalbare en voorwaardelijke documentblokken (lussen en voorwaarden) voor tabellen, lijsten en gemeenschappelijke inhoud | {{< emoticons/tick >}} |
| Ondersteuning van dynamisch gegenereerde grafieken en afbeeldingen | {{< emoticons/tick >}} |
| Ondersteuning van het invoegen van buitenste documenten en HTML-blokken in een document | {{< emoticons/tick >}} |
| Ondersteuning van meerdere gegevensbronnen (met inbegrip van verschillende soorten) voor het genereren van één enkel document | {{< emoticons/tick >}} |
| Ingebouwde ondersteuning van datarelaties (master-detail) | {{< emoticons/tick >}} |
| Uitgebreide ondersteuning van verschillende gegevensmanipulaties zoals groeperen, sorteren, filteren en anderen direct in templates | {{< emoticons/tick >}} |
| WYSIWYG: Een gegenereerd document behoudt dezelfde opmaak van de elementen als een overeenkomstige template heeft | {{< emoticons/tick >}} |
