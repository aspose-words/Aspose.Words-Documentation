---
title: Specificare le opzioni di layout in C++
second_title: Aspose.Words per C++
articleTitle: Specificare le opzioni di layout
linktitle: Specificare le opzioni di layout
description: "Specificare le opzioni di layout per vari layout di documenti."
type: docs
weight: 20
url: /it/cpp/specify-layout-options/
---

Aspose.Words consente di creare documenti di output con vari layout, a seconda dei parametri specificati nella proprietà [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) di **Document**. Questa proprietà assomiglia ad alcune delle opzioni del menu dell'interfaccia utente Microsoft Word descritte in questo articolo.

Per un elenco completo di parametri, ad esempio [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) per calcolare i numeri di pagina in una sezione continua che riavvia la numerazione delle pagine o [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) per ignorare l'opzione di compatibilità "Usa le metriche della stampante per disporre il documento", vedere la pagina della classe [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options).

## Segni di formattazione

Aspose.Words consente di gestire i segni di formattazione utilizzando le seguenti proprietà:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) – un valore `Boolean`, che specifica se il testo nascosto viene visualizzato.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) – un valore `Boolean`, che specifica se i caratteri del segno di paragrafo vengono renderizzati.

La pagina illustrata nell'esempio seguente contiene tre paragrafi. Il secondo è nascosto. Un utente può modificare l'opzione **ShowHiddenText** per visualizzare questo testo nascosto nella pagina. Inoltre, ogni paragrafo ha un segno di paragrafo alla fine. Il segno di paragrafo di solito non è visibile a meno che la proprietà **ShowParagraphMarks** non sia impostata per renderlo.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

In Microsoft Word, questi parametri vengono impostati utilizzando la finestra di dialogo" File → Opzioni → Visualizza " come segue:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Commenti e revisioni

Con Aspose.Words, è possibile eseguire il rendering dei commenti del documento che avranno lo stesso aspetto di Microsoft Word. Per specificare se vengono visualizzati i commenti, utilizzare la proprietà [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

In Microsoft Word, questo parametro viene impostato utilizzando la finestra di dialogo "Opzioni traccia modifiche", come illustrato di seguito:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Inoltre, Aspose.Words consente di visualizzare le revisioni in un documento. Utilizzare la proprietà [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) della classe **LayoutOptions** per definire se vengono visualizzate le revisioni del documento. Per controllarne l'aspetto (colore evidenziazione revisione, colore barra revisione, ecc.), usa la classe [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

È inoltre possibile visualizzare le revisioni come commenti al contenuto. A tale scopo, utilizzare la proprietà [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/)e il valore [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

L'esempio di codice seguente mostra come personalizzare la visualizzazione delle revisioni:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

L'immagine seguente mostra come Aspose.Words esegue il rendering dei commenti e delle revisioni di Eliminazione:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Text Shaper per il rendering tipografico avanzato

La proprietà [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) consente di impostare la funzionalità di modellazione del testo e il supporto delle funzionalità `OpenType`.

Utilizzare la modellazione del testo per l'elaborazione dei documenti nei seguenti casi principali:

- Un documento utilizza Crenatura, Forma numerale, Forme numerali o legature.
- Un documento utilizza script complessi, come arabo, khmer, tailandese, ecc.

{{% alert color="primary" %}}

La modellazione del testo sarà abilitata solo quando si esporta un documento in PDF o XPS.

{{% /alert %}}
