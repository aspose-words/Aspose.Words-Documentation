---
title: Convertire tra unità di misura in Java
second_title: Aspose.Words per Java
articleTitle: Convertire tra unità di misura
linktitle: Convertire tra unità di misura
description: "Aspose.Words per Java può aiutare con come convertire tra unità di misura, ad esempio, pollici a punti e punti a pollici, pixel a punti, punti a pixel."
type: docs
weight: 20
url: /it/java/convert-between-measurement-units/
---

La maggior parte delle proprietà dell'oggetto fornite nel Aspose.Words API che rappresentano alcune misure, come larghezza o altezza, margini e varie distanze, accettano valori in punti, dove 1 pollice equivale a 72 punti. A volte questo non è conveniente e i punti devono essere convertiti in altre unità.

Aspose.Words fornisce [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) classe che fornisce funzioni di helper per convertire tra varie unità di misura. Consente la conversione di pollici, pixel e millimetri a punti, punti a pollici e pixel, e la conversione di pixel da una risoluzione all'altra. La conversione di pixel in punti e viceversa può essere effettuata a 96 dpi (dotti per pollice) risoluzioni o risoluzione dpi specificata.

The **ConvertUtil** classe è particolarmente utile quando si impostano varie proprietà di pagina perché, ad esempio, i pollici sono unità di misura più comuni rispetto ai punti.

Il seguente esempio di codice mostra come specificare le proprietà della pagina in pollici:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
