---
title: Tabelstijl wijzigen in Word documenten
second_title: Aspose.Words voor C++
articleTitle: Tabelstijl Toepassen
linktitle: Tabelstijl Toepassen
description: "Geavanceerde tabelopmaak C++. Maak een tabelstijl met C++. Tabelstijl C++ toepassen."
type: docs
weight: 80
url: /nl/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Een tabelstijl definieert een set opmaak die gemakkelijk op een tabel kan worden toegepast. Opmaak zoals randen, schaduw, uitlijning en lettertype kunnen in een tabelstijl worden ingesteld en op veel tabellen worden toegepast voor een consistent uiterlijk.

Aspose.Words ondersteunt het toepassen van een tabelstijl op een tabel en ook het lezen van eigenschappen van elke tabelstijl. Tabelstijlen worden tijdens het laden en opslaan op de volgende manieren behouden:

- Tabelstijlen in de indelingen DOCX en WordML blijven behouden bij het laden en opslaan in deze indelingen
- Tabelstijlen blijven behouden bij het laden en opslaan in DOC - indeling (maar niet in een andere indeling)
- Bij het exporteren naar andere indelingen, renderen of afdrukken worden tabelstijlen uitgebreid tot directe opmaak in de tabel, zodat alle opmaak behouden blijft

## Een tabelstijl maken

De gebruiker kan een nieuwe stijl maken en deze toevoegen aan style collection. De methode [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) wordt gebruikt om een Nieuwe tabelstijl te maken.

Het volgende codevoorbeeld laat zien hoe u een nieuwe door de gebruiker gedefinieerde tabelstijl maakt:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Een bestaande tabelstijl kopiëren

Indien nodig kunt u een tabelstijl die al bestaat in een bepaald document kopiëren naar uw stijlcollectie met behulp van de methode `AddCopy`.

Het is belangrijk om te weten dat bij dit kopiëren ook de gekoppelde stijlen worden gekopieerd.

Het volgende codevoorbeeld laat zien hoe u een stijl van het ene document naar het andere document importeert:

EXAMPLE

## Een bestaande tabelstijl toepassen

Aspose.Words geeft een [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) geërfd van de [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) klasse. **TableStyle** vergemakkelijkt de gebruiker om verschillende stijlopties toe te passen, zoals schaduw, opvulling, inspringing, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) en [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/), enz.

Daarnaast biedt Aspose.Words de [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) klasse en een paar eigenschappen van de `Table` klasse om aan te geven met welke tabelstijl we zullen werken: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), en [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words biedt ook [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) klasse die speciale opmaak vertegenwoordigt die wordt toegepast op een bepaald gebied van een tabel met een toegewezen tabelstijl, en de [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) die een verzameling **ConditionalStyle** objecten vertegenwoordigt. Deze collectie bevat een permanente set items die één item vertegenwoordigen voor elke waarde van het [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/) opsommingstype. De **ConditionalStyleType** - opsomming definieert alle mogelijke tabelgebieden waarvoor voorwaardelijke opmaak in een tabelstijl kan worden gedefinieerd.

In dit geval kan voorwaardelijke opmaak worden gedefinieerd voor alle mogelijke tabelgebieden die zijn gedefinieerd onder het opsommingstype ConditionalStyleType.

Het volgende codevoorbeeld laat zien hoe voorwaardelijke opmaak voor kopregelrij van de tabel moet worden gedefinieerd:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

U kunt ook kiezen op welke tabelonderdelen stijlen worden toegepast, zoals eerste kolom, laatste kolom en gestreepte rijen. Ze worden vermeld in de [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) opsomming en worden toegepast via de [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/) eigenschap. De **TableStyleOptions** opsomming maakt een bitwise combinatie van deze kenmerken mogelijk.

Het volgende codevoorbeeld laat zien hoe u een nieuwe tabel maakt met een toegepaste tabelstijl:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

De onderstaande afbeeldingen tonen een weergave van de **Table Styles** in Microsoft Word en hun overeenkomstige eigenschappen in Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Neem opmaak van tabelstijl en pas het toe als directe opmaak

Aspose.Words biedt ook de [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) methode om opmaak gevonden op een tabelstijl te nemen en deze uit te breiden naar de rijen en cellen van de tabel als directe opmaak. Probeer opmaak te combineren met tabelstijl en celstijl.

{{% alert color="primary" %}}

Deze methode vervangt geen andere opmaak die al is toegepast op de tabel via een rij-of celindeling.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u de opmaak van stijlen kunt uitbreiden naar tabelrijen en cellen als directe opmaak:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}
