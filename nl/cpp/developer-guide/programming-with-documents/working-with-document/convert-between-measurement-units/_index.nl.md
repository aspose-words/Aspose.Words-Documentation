---
title: Converteren tussen meeteenheden in C++
second_title: Aspose.Words voor C++
articleTitle: Converteren Tussen Meeteenheden
linktitle: Converteren Tussen Meeteenheden
description: "Aspose.Words voor C++ kan u helpen bij het converteren tussen meeteenheden, bijvoorbeeld inches naar punten en punten naar inches, pixels naar punten, punten naar pixels."
type: docs
weight: 20
url: /nl/cpp/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

De meeste objecteigenschappen in Aspose.Words API die een bepaalde meting vertegenwoordigen, zoals breedte of hoogte, marges en verschillende afstanden, accepteren waarden in punten, waarbij 1 inch gelijk is aan 72 punten. Soms is dit niet handig en moeten punten worden omgezet in andere eenheden.

Aspose.Words biedt de [ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util) - klasse die helperfuncties biedt om te converteren tussen verschillende meeteenheden. Het maakt het mogelijk om inches, pixels en millimeters te converteren naar punten, punten naar inches en pixels en pixels van de ene resolutie naar de andere te converteren.Het converteren van pixels naar punten en vice versa kan worden uitgevoerd met een resolutie van 96 dpi (dots per inch) of een gespecificeerde dpi-resolutie.

De **ConvertUtil** - klasse is vooral handig bij het instellen van verschillende pagina-eigenschappen, omdat inches bijvoorbeeld vaker meeteenheden zijn dan punten.

Het volgende codevoorbeeld laat zien hoe Pagina-eigenschappen in inches worden opgegeven:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

