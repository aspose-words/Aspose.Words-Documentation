---
title: Omzetten tussen meeteenheden in Java
second_title: Aspose.Words voor Java
articleTitle: Converteren tussen meeteenheden
linktitle: Converteren tussen meeteenheden
description: "Aspose.Words voor Java kan u helpen met het omzetten tussen meeteenheden, bijvoorbeeld, inches naar punten en punten naar inches, pixels naar punten, punten naar pixels."
type: docs
weight: 20
url: /nl/java/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

De meeste object eigenschappen in de Aspose.Words API die een bepaalde meting vertegenwoordigen, zoals breedte of hoogte, marges en verschillende afstanden, accepteren waarden in punten, waarbij 1 inch gelijk is aan 72 punten. Soms is dit niet handig en moeten punten worden omgezet naar andere eenheden.

Aspose.Words levert de [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) klasse die helperfuncties biedt om te converteren tussen verschillende meeteenheden. Het maakt het omzetten van inches, pixels en millimeters naar punten, wijst naar inches en pixels, en het omzetten van pixels van de ene resolutie naar de andere. Het omzetten van pixels naar punten en vice versa kan worden uitgevoerd bij 96 dpi (dots per inch) resoluties of gespecificeerde dpi resolutie.

De **ConvertUtil** klasse is vooral handig bij het instellen van verschillende pagina eigenschappen, omdat bijvoorbeeld centimeter zijn meer gangbare meeteenheden dan punten.

Het volgende voorbeeld van code laat zien hoe pagina eigenschappen in inches te specificeren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
