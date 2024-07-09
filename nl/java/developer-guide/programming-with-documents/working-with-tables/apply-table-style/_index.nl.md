---
title: Werken met tabelstijlen in Java
second_title: Aspose.Words voor Java
articleTitle: Tabelstijl toepassen
linktitle: Tabelstijl toepassen
description: "Geavanceerde tabelopmaak Java. Een tabelstijl aanmaken met Java. Inleiding tot geavanceerde tafelopmaak, Tabelstijlen gebruiken Java."
type: docs
weight: 80
url: /nl/java/working-with-tablestyle/
---

Een tabel stijl definieert een set van opmaak die gemakkelijk kan worden toegepast op een tabel. Formatteren zoals randen, schaduw, uitlijning, en lettertype kan worden ingesteld in een tabel stijl en toegepast op vele tabellen voor een consistente verschijning.

Aspose.Words ondersteunt het toepassen van een tafel stijl op een tafel en ook het lezen van eigenschappen van elke tafel stijl. Tabelstijlen worden bewaard tijdens het laden en opslaan op de volgende manieren:

- Tabelstijlen in DOCX en WordML formaten worden bewaard bij het laden en opslaan naar deze formaten
- Tabelstijlen worden bewaard bij het laden en opslaan in DOC formaat (maar niet in een ander formaat)
- Bij het exporteren naar andere formaten, renderen of afdrukken, worden tafelstijlen uitgebreid tot directe opmaak in de tabel, zodat alle opmaak behouden blijft

## Een tabelstijl aanmaken

De gebruiker kan een nieuwe stijl maken en toevoegen aan stijlverzameling. De [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) methode wordt gebruikt om een nieuwe tafelstijl te creëren.

Het volgende voorbeeld van code laat zien hoe u een nieuwe door de gebruiker gedefinieerde tabelstijl aanmaakt:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Een bestaande tabelstijl kopiëren

Indien nodig kunt u een tabel stijl die al bestaat in een bepaald document kopiëren in uw stijl collectie met behulp van de `AddCopy` methode.

Het is belangrijk om te weten dat met dit kopiëren ook de gekoppelde stijlen worden gekopieerd.

Het volgende voorbeeld van code laat zien hoe je een stijl van het ene document naar een ander document importeert:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Een bestaande tabelstijl toepassen

Aspose.Words levert a [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) Erfde van de [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) Klasse. **TableStyle** vergemakkelijkt de gebruiker om verschillende stijlopties zoals shading, padding, inspringen toe te passen, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) en [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), enz.

Bovendien, Aspose.Words levert de [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) klasse en een paar eigenschappen van de `Table` klasse om aan te geven met welke tabelstijl we zullen werken: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), en [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words biedt [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) klasse die speciale opmaak toegepast op een bepaald gebied van een tabel met een toegewezen tabelstijl, en de [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) die een verzameling van **ConditionalStyle** objecten. Deze collectie bevat een permanente reeks artikelen die één item vertegenwoordigen voor elke waarde van de [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) Identificatietype. De **ConditionalStyleType** De opsomming definieert alle mogelijke tabelgebieden waaraan voorwaardelijke opmaak in tabelstijl kan worden gedefinieerd.

In dit geval kan voorwaardelijke formattering worden gedefinieerd voor alle mogelijke tabelgebieden die worden gedefinieerd onder het tellingstype van het VoorwaardelijkeStyleType.

Het volgende voorbeeld van code laat zien hoe voorwaardelijke opmaak voor header rij van de tabel te definiëren:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

U kunt ook kiezen voor de tabeldelen om stijlen toe te passen, zoals eerste kolom, laatste kolom, rijen met banden. Zij zijn opgenomen in de [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) telling en worden toegepast via de [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) eigendom. De **TableStyleOptions** De opsomming maakt een bitwise combinatie van deze eigenschappen mogelijk.

Het volgende voorbeeld van code laat zien hoe je een nieuwe tabel kunt maken met een tabelstijl:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

De foto's hieronder tonen een voorstelling van de **Table Styles** in Microsoft Word en hun overeenkomstige eigenschappen in Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Opmaak nemen van tabelstijl en toepassen als directe opmaak

Aspose.Words de [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) methode om opmaak gevonden op een tabel stijl en breidt het uit naar de rijen en cellen van de tabel als directe opmaak. Probeer opmaak te combineren met tafelstijl en celstijl.

{{% alert color="primary" %}}

Deze methode zal geen andere opmaak al toegepast op de tabel via een rij of celformaat overschrijven.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe de opmaak van stijlen uit te breiden naar tabelrijen en cellen als directe opmaak:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}