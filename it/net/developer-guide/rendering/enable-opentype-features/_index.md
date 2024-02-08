---
title: Abilita le funzionalità OpenType in C#
second_title: Aspose.Words per .NET
articleTitle: Abilita funzionalità OpenType
linktitle: Abilita funzionalità OpenType
description: "Funzionalità tipografiche avanzate utilizzando C#."
type: docs
weight: 25
url: /it/net/enable-opentype-features/
---

OpenType è un formato di carattere, introdotto per fornire un migliore supporto per le lingue e i sistemi di scrittura internazionali rispetto a PostScript e TrueType. Le funzionalità di layout di OpenType sono comunemente note come funzionalità OpenType. Il pacchetto Aspose.Words.Shaping.HarfBuzz fornisce il supporto per le funzionalità OpenType in Aspose.Words utilizzando il motore di modellazione del testo HarfBuzz.

Aspose.Words è in grado di utilizzare oggetti modellatori di testo forniti esternamente. Uno shaper di testo rappresenta un carattere e calcola le informazioni di modellazione per un testo. Un documento in genere fa riferimento a più caratteri, pertanto è necessaria una fabbrica di modellazione del testo. Questo pacchetto contiene un'implementazione di una factory di modellazione del testo utilizzata dalla proprietà Aspose.Words.Layout.LayoutOptions.TextShaperFactory.

{{% alert color="primary" %}}

La modellazione del testo viene eseguita solo durante l'esportazione nei formati PDF o XPS.

{{% /alert %}}

In un'applicazione tipica, una singola istanza di una factory di modellazione del testo è condivisa tra tutte le istanze del documento. Ogni volta che viene creato un modellatore di testo, si accede a un file di caratteri. L'analisi di un file di font è un'operazione costosa, pertanto è consigliata la memorizzazione nella cache. Aspose.Words implementa la classe BasicTextShaperCache che racchiude l'implementazione della factory dello shaper di testo e memorizza nella cache le istanze dello shaper di testo restituite dalla factory incapsulata.

L'esempio di codice seguente mostra come attivare il supporto delle funzionalità OpenType.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
