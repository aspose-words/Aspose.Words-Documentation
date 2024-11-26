---
title: Converteren tussen meeteenheden in C#
second_title: Aspose.Words voor .NET
articleTitle: Converteren tussen meeteenheden
linktitle: Converteren tussen meeteenheden
description: "Aspose.Words voor .NET kan u helpen met het omzetten tussen meeteenheden, bijvoorbeeld, inches naar punten en punten naar inches, pixels naar punten, punten naar pixels met behulp van C#."
type: docs
weight: 20
url: /nl/net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

De meeste object eigenschappen in de Aspose.Words API die een bepaalde meting vertegenwoordigen, zoals breedte of hoogte, marges en verschillende afstanden, accepteren waarden in punten, waarbij 1 inch gelijk is aan 72 punten. Soms is dit niet handig en moeten punten worden omgezet in andere eenheden.

Aspose.Words levert de [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) klasse die helperfuncties biedt om te converteren tussen verschillende meeteenheden. Het maakt het mogelijk om te converteren:

- inches, pixels en millimeters tot punten
- wijst naar inches en pixels
- beeldpunten van de ene resolutie naar de andere

Het omzetten van pixels naar punten en vice versa kan worden uitgevoerd bij 96 dpi (dots per inch) resoluties of gespecificeerde dpi resolutie.

De **ConvertUtil** klasse is vooral nuttig bij het instellen van verschillende pagina eigenschappen, omdat bijvoorbeeld, inches zijn meer gangbare meeteenheden dan punten.

Het volgende voorbeeld van code laat zien hoe pagina eigenschappen in inches te specificeren:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
