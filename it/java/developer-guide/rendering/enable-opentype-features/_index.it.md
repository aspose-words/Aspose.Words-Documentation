---
title: Attiva funzionalità OpenType in Java
second_title: Aspose.Words per Java
articleTitle: Attiva funzionalità OpenType
linktitle: Attiva funzionalità OpenType
description: "Caratteristiche della tipografia avanzate in Aspose.Words per Java."
type: docs
weight: 25
url: /it/java/enable-opentype-features/
---



OpenType è un formato di carattere, introdotto per fornire un supporto migliore per le lingue internazionali e sistemi di scrittura rispetto a PostScript e TrueType. Le caratteristiche di layout di OpenType sono comunemente conosciute come funzioni OpenType. Aspose.Words- Sto piangendo.HarfBuzz pacchetto fornisce supporto per le funzionalità OpenType in Aspose.Words usando `HarfBuzz` motore di modellazione del testo.

Aspose.Words è in grado di utilizzare oggetti di formatura di testo forniti esternamente. Un shaper di testo rappresenta un carattere e calcola le informazioni di modellazione per un testo. Un documento si riferisce tipicamente a più caratteri quindi è necessaria una fabbrica di shaper di testo. Questo pacchetto contiene un'implementazione di una fabbrica di shaper di testo utilizzata da Aspose.Words.Layout.LayoutOptions.TextShaperFactory property.

{{% alert color="primary" %}}

La modellazione del testo viene eseguita solo quando si esporta in PDF o XPS formati.

{{% /alert %}}

In una tipica applicazione un'istanza singola di una fabbrica di shaper di testo è condivisa tra tutte le istanze di documento. Ogni volta che un shaper di testo viene creato un file di carattere è accessibile. Parsing a font file è un'operazione costosa quindi si consiglia di caching. Aspose.Words strumenti Testo di base Classe Cache che avvolge l'implementazione della fabbrica del shaper del testo e memorizza le istanze del shaper del testo restituito dalla fabbrica avvolta.

Il seguente esempio di codice mostra come attivare il supporto delle funzionalità OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
