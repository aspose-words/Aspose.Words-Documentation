---
title: Converti tra unità di misura
second_title: Aspose.Words per Python via .NET
articleTitle: Converti tra unità di misura
linktitle: Converti tra unità di misura
description: "Aspose.Words per Python via .NET può aiutarti a convertire tra unità di misura, ad esempio pollici in punti e punti in pollici, pixel in punti, punti in pixel."
type: docs
weight: 20
url: /it/python-net/convert-between-measurement-units/
---

La maggior parte delle proprietà dell'oggetto fornite nel Aspose.Words API che rappresentano alcune misure, come larghezza o altezza, margini e varie distanze, accettano valori in punti, dove 1 pollice equivale a 72 punti. A volte questo non è conveniente e i punti devono essere convertiti in altre unità.

Aspose.Words fornisce la classe [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) che fornisce funzioni di supporto per la conversione tra varie unità di misura. Consente di convertire pollici, pixel e millimetri in punti, punti in pollici e pixel e convertire pixel da una risoluzione a un'altra. La conversione dei pixel in punti e viceversa può essere eseguita con risoluzioni di 96 dpi (punti per pollice) o con una risoluzione dpi specificata.

La classe [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) è particolarmente utile quando si impostano varie proprietà della pagina perché, ad esempio, i pollici sono unità di misura più comuni dei punti.

L'esempio di codice seguente mostra come specificare le proprietà della pagina in pollici:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
