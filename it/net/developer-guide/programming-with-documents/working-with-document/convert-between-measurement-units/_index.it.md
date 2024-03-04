---
title: Converti tra unità di misura in C#
second_title: Aspose.Words per .NET
articleTitle: Converti tra unità di misura
linktitle: Converti tra unità di misura
description: "Aspose.Words per .NET può aiutarti a convertire tra unità di misura, ad esempio pollici in punti e punti in pollici, pixel in punti, punti in pixel utilizzando C#."
type: docs
weight: 20
url: /it/net/convert-between-measurement-units/
---

La maggior parte delle proprietà dell'oggetto fornite nel Aspose.Words API che rappresentano alcune misure, come larghezza o altezza, margini e varie distanze, accettano valori in punti, dove 1 pollice equivale a 72 punti. A volte questo non è conveniente e i punti devono essere convertiti in altre unità.

Aspose.Words fornisce la classe [ConvertUtil](https://reference.aspose.com/words/it/net/aspose.words/convertutil/) che fornisce funzioni di supporto per la conversione tra varie unità di misura. Permette di convertire:

- pollici, pixel e millimetri in punti
- indica pollici e pixel
- pixel da una risoluzione all'altra

La conversione dei pixel in punti e viceversa può essere eseguita con risoluzioni di 96 dpi (punti per pollice) o con una risoluzione dpi specificata.

La classe **ConvertUtil** è particolarmente utile quando si impostano varie proprietà della pagina perché, ad esempio, i pollici sono unità di misura più comuni dei punti.

L'esempio di codice seguente mostra come specificare le proprietà della pagina in pollici:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
