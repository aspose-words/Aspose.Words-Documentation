---
title: Abilita le funzioni OpenType in Java
second_title: Aspose.Words per Java
articleTitle: Abilita funzionalità OpenType
linktitle: Abilita funzionalità OpenType
description: "Caratteristiche tipografiche avanzate in Aspose.Words per Java."
type: docs
weight: 25
url: /it/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType è un formato di font, introdotto per fornire un supporto migliore per le lingue e i sistemi di scrittura internazionali rispetto a PostScript e TrueType. Le caratteristiche di layout di OpenType sono comunemente note come caratteristiche di OpenType. Aspose.Words.Plasmare.Il pacchetto HarfBuzz fornisce il supporto per le funzionalità OpenType in Aspose.Words utilizzando il motore di modellazione del testo `HarfBuzz`.

Aspose.Words è in grado di utilizzare oggetti text shaper forniti esternamente. Uno shaper di testo rappresenta un font e calcola le informazioni di modellazione per un testo. Un documento si riferisce in genere a più font, quindi è necessaria una fabbrica di shaper di testo. Questo pacchetto contiene un'implementazione di una text shaper factory utilizzata da Aspose.Words.Layout.LayoutOptions.TextShaperFactory proprietà.

{{% alert color="primary" %}}

La modellazione del testo viene eseguita solo quando si esporta nei formati PDF o XPS.

{{% /alert %}}

In un'applicazione tipica, una singola istanza di una fabbrica di shaper di testo viene condivisa tra tutte le istanze del documento. Ogni volta che viene creato uno shaper di testo si accede a un file di font. L'analisi di un file di font è un'operazione costosa, quindi si consiglia la memorizzazione nella cache. Aspose.Words implementa BasicTextShaperCache classe che avvolge l'implementazione di text shaper factory e memorizza nella cache le istanze di text shaper restituite dalla factory wrapped.

Il seguente esempio di codice mostra come attivare il supporto delle funzionalità OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
