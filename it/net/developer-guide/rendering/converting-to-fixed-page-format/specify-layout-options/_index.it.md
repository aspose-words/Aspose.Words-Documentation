---
title: Specificare le opzioni di layout in C#
second_title: Aspose.Words per .NET
articleTitle: Specificare le opzioni di layout
linktitle: Specificare le opzioni di layout
description: "Specifica le opzioni di layout per vari layout di documenti utilizzando C#."
type: docs
weight: 10
url: /it/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words consente di creare documenti di output con vari layout, a seconda dei parametri specificati nelle proprietà della classe [LayoutOptions](https://reference.aspose.com/words/it/net/aspose.words.layout/layoutoptions/). Alcune di queste proprietà assomigliano ad alcune opzioni del menu dell'interfaccia utente Microsoft Word: verranno descritte in questo articolo.

Per un elenco completo di parametri come [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/it/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) per calcolare i numeri di pagina in una sezione continua che riavvia la numerazione delle pagine o [IgnorePrinterMetrics](https://reference.aspose.com/words/it/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) per ignorare l'opzione di compatibilità "Utilizza le metriche della stampante per disporre il documento", vedere la pagina della classe [LayoutOptions](https://reference.aspose.com/words/it/net/aspose.words.layout/layoutoptions/).

## Segni di formattazione

Aspose.Words consente di gestire i segni di formattazione utilizzando le seguenti proprietà:

- [ShowHiddenText](https://reference.aspose.com/words/it/net/aspose.words.layout/layoutoptions/showhiddentext/): un valore `Boolean`, che specifica se viene eseguito il rendering del testo nascosto.
- [ShowParagraphMarks](https://reference.aspose.com/words/it/net/aspose.words.layout/layoutoptions/showparagraphmarks/): un valore `Boolean`, che specifica se viene eseguito il rendering dei caratteri del segno di paragrafo.

La pagina raffigurata nell'esempio seguente contiene tre paragrafi. Il secondo è nascosto. Un utente può modificare l'opzione **ShowHiddenText** per visualizzare questo testo nascosto nella pagina. Inoltre, ogni paragrafo ha un segno di paragrafo alla fine. Il segno di paragrafo in genere non è visibile a meno che la proprietà **ShowParagraphMarks** non sia impostata per eseguirne il rendering.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, questi parametri vengono impostati utilizzando la finestra di dialogo "File → Opzioni → Visualizza" come segue:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Commenti e revisioni

Con Aspose.Words, puoi visualizzare i commenti del documento che avranno lo stesso aspetto di Microsoft Word. Per specificare se viene eseguito il rendering dei commenti, utilizzare la proprietà [CommentDisplayMode](https://reference.aspose.com/words/it/net/aspose.words.layout/layoutoptions/commentdisplaymode/).

In Microsoft Word, questo parametro viene impostato utilizzando la finestra di dialogo "Opzioni modifiche traccia", come mostrato di seguito:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Inoltre, Aspose.Words ti consente di visualizzare le revisioni in un documento. Utilizzare la proprietà [RevisionOptions](https://reference.aspose.com/words/it/net/aspose.words.layout/layoutoptions/revisionoptions/) della classe **LayoutOptions** per definire se vengono visualizzate le revisioni del documento. Per controllarne l'aspetto (colore dell'evidenziazione della revisione, colore della barra di revisione, ecc.), utilizzare la classe [RevisonOptions](https://reference.aspose.com/words/it/net/aspose.words.layout/revisionoptions/).

È inoltre possibile visualizzare le revisioni come commenti al contenuto. A questo scopo, utilizzare la proprietà [CommentDisplayMode](https://reference.aspose.com/words/it/net/aspose.words.layout/layoutoptions/commentdisplaymode/) e il valore [ShowInBalloons](https://reference.aspose.com/words/it/net/aspose.words.layout/commentdisplaymode/).

L'esempio di codice seguente mostra come personalizzare la visualizzazione delle revisioni:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

L'immagine seguente mostra come Aspose.Words esegue il rendering dei commenti e delle revisioni Elimina:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## Shaper di testo per il rendering tipografico avanzato

La proprietà [TextShaperFactory](https://reference.aspose.com/words/it/net/aspose.words.layout/layoutoptions/textshaperfactory/) consente di impostare la funzionalità di modellazione del testo, nonché il supporto delle funzionalità `OpenType`.

Utilizzare la modellazione del testo per l'elaborazione dei documenti nei seguenti casi principali:

- Un documento utilizza crenatura, modellazione numerica, forme numeriche o legature.
- Un documento utilizza script complessi, come arabo, khmer, tailandese, ecc.

{{% alert color="primary" %}}

La modellazione del testo sarà abilitata solo quando si esporta un documento in PDF o XPS.

{{% /alert %}}
