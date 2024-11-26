---
title: Conversione tra unità di misura in Java
second_title: Aspose.Words per Java
articleTitle: Conversione tra unità di misura
linktitle: Conversione tra unità di misura
description: "Aspose.Words per Java può aiutarti a convertire tra unità di misura, ad esempio, pollici in punti e punti in pollici, pixel in punti, punti in pixel."
type: docs
weight: 20
url: /it/java/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

La maggior parte delle proprietà dell'oggetto fornite in Aspose.Words API che rappresentano alcune misure, come larghezza o altezza, margini e varie distanze, accettano valori in punti, dove 1 pollice equivale a 72 punti. A volte questo non è conveniente e i punti devono essere convertiti in altre unità.

Aspose.Words fornisce la classe [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) che fornisce funzioni di supporto per la conversione tra varie unità di misura. Consente la conversione di pollici, pixel e millimetri in punti, punti in pollici e pixel e la conversione di pixel da una risoluzione all'altra.La conversione di pixel in punti e viceversa può essere eseguita a risoluzioni di 96 dpi (punti per pollice) o risoluzione dpi specificata.

La classe **ConvertUtil** è particolarmente utile quando si impostano varie proprietà di pagina perché, ad esempio, i pollici sono unità di misura più comuni dei punti.

Il seguente esempio di codice mostra come specificare le proprietà della pagina in pollici:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
