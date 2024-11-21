---
title: Tabelstijl wijzigen in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Tabelstijl toepassen
linktitle: Tabelstijl toepassen
description: "Geavanceerde tabelopmaak C#. Een tabelstijl aanmaken met Python. Tabelstijl toepassen Python."
type: docs
weight: 80
url: /nl/python-net/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Een tabelstijl definieert een set van opmaak die gemakkelijk kan worden toegepast op een tabel. Formatteren zoals randen, schaduw, uitlijning, en lettertype kan worden ingesteld in een tabelstijl en toegepast op vele tabellen voor een consistente verschijning.

Aspose.Words ondersteunt het toepassen van een tafel stijl op een tafel en ook het lezen van eigenschappen van elke tafel stijl. Tabelstijlen worden bewaard tijdens het laden en opslaan op de volgende manieren:

- Tabelstijlen in DOCX en WordML formaten worden bewaard bij het laden en opslaan naar deze formaten
- Tabelstijlen worden bewaard bij het laden en opslaan in DOC formaat (maar niet in een ander formaat)
- Bij het exporteren naar andere formaten, renderen of afdrukken, worden tafelstijlen uitgebreid naar directe opmaak in de tabel, zodat alle opmaak behouden blijft

## Een tabelstijl aanmaken

De gebruiker kan een nieuwe stijl maken en toevoegen aan stijlverzameling. De [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) methode wordt gebruikt om een nieuwe tafelstijl te creëren.

Het volgende voorbeeld van code laat zien hoe u een nieuwe door de gebruiker gedefinieerde tabelstijl kunt maken:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## Een bestaande tabelstijl kopiëren

Indien nodig kunt u een tabel stijl die al bestaat in een bepaald document kopiëren in uw stijl collectie met behulp van de `AddCopy` methode.

Het is belangrijk om te weten dat met dit kopiëren, de gekoppelde stijlen ook worden gekopieerd.

Het volgende voorbeeld van code laat zien hoe je een stijl van het ene document naar een ander document importeert:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## Een bestaande tabelstijl toepassen

Aspose.Words levert a [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) Erfde van de [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) Klasse. **TableStyle** vergemakkelijkt de gebruiker om verschillende stijlopties zoals shading, padding, inspringen toe te passen, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) en [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/), enz.

Bovendien, Aspose.Words levert de [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) klasse en een paar eigenschappen van de `Table` klasse om aan te geven met welke tabelstijl we zullen werken: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/), en [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words biedt [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) klasse die speciale opmaak toegepast op een bepaald gebied van een tabel met een toegewezen tabelstijl, en de [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) die een verzameling van **ConditionalStyle** objecten. Deze collectie bevat een permanente reeks artikelen die één item vertegenwoordigen voor elke waarde van de [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) Identificatietype. De **ConditionalStyleType** De opsomming definieert alle mogelijke tabelgebieden waaraan voorwaardelijke opmaak in tabelstijl kan worden gedefinieerd.

In dit geval kan voorwaardelijke opmaak worden gedefinieerd voor alle mogelijke tabelgebieden die worden gedefinieerd onder het tellingstype van het VoorwaardelijkeStyleType.

Het volgende voorbeeld van code laat zien hoe voorwaardelijke opmaak voor header rij van de tabel te definiëren:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

U kunt ook kiezen welke tafeldelen stijlen toe te passen, zoals eerste kolom, laatste kolom, gebandeerde rijen. Zij zijn vermeld in de [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) telling en worden toegepast via de [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/) eigendom. De **TableStyleOptions** De opsomming maakt een bitwise combinatie van deze functies mogelijk.

Het volgende voorbeeld van code laat zien hoe je een nieuwe tabel met een tabel stijl toegepast:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

De foto's hieronder tonen een voorstelling van de **Table Styles** in Microsoft Word en de overeenkomstige eigenschappen in Aspose.Words.

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## Werken met tafelstijlen

Een tabelstijl definieert een set van opmaak die gemakkelijk kan worden toegepast op een tabel. Formatteren zoals randen, schaduw, uitlijning en lettertype kan worden ingesteld in een tafelstijl en toegepast op vele tabellen voor een consistente verschijning.

Aspose.Words ondersteunt het toepassen van een tafel stijl op een tafel en ook het lezen van eigenschappen van elke tafel stijl. Tabelstijlen worden bewaard tijdens het laden en opslaan op de volgende manieren:

- Tabelstijlen in DOCX en WordML formaten worden bewaard bij het laden en opslaan naar deze formaten.
- Tabelstijlen worden bewaard bij het laden en opslaan in het DOC formaat (maar niet in een ander formaat).
- Bij het exporteren naar andere formaten, renderen of afdrukken, worden tafelstijlen uitgebreid naar directe opmaak op de tafel zodat alle opmaak behouden blijft.

Momenteel kunt u geen nieuwe tafelstijlen aanmaken. U kunt alleen ingebouwde tabelstijlen of aangepaste tabelstijlen toepassen die al in het document aanwezig zijn op een tabel

## Opmaak nemen van tabelstijl en toepassen als directe opmaak

Aspose.Words de [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) methode om opmaak gevonden op een tabel stijl nemen en breidt het uit naar de rijen en cellen van de tabel als directe opmaak. Probeer opmaak te combineren met tafelstijl en celstijl.

{{% alert color="primary" %}}

Deze methode zal geen andere opmaak al toegepast op de tabel via een rij of celformaat overschrijven.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe de opmaak van stijlen uit te breiden naar tabelrijen en cellen als directe opmaak:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}
