---
title: Specificare le opzioni di layout in Java
second_title: Aspose.Words per Java
articleTitle: Specificare le opzioni di layout
linktitle: Specificare le opzioni di layout
description: "Creare documenti di output con vari layout, a seconda dei parametri specificati nel documento utilizzando Java."
type: docs
weight: 10
url: /it/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words consente di creare documenti di output con vari layout, a seconda dei parametri specificati nella proprietà [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) di **Document**. Questa proprietà assomiglia ad alcune delle opzioni del menu dell'interfaccia utente Microsoft Word descritte in questo articolo.

Per un elenco completo di parametri, ad esempio [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) per calcolare i numeri di pagina in una sezione continua che riavvia la numerazione delle pagine o [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) per ignorare l'opzione di compatibilità "Usa le metriche della stampante per disporre il documento", vedere la pagina della classe [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

## Segni di formattazione

Aspose.Words consente di gestire i segni di formattazione utilizzando le seguenti proprietà:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - un valore `Boolean`, che specifica se il testo nascosto viene sottoposto a rendering.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - un valore `Boolean`, che specifica se i caratteri dei segni di paragrafo sono resi.

La pagina illustrata nell'esempio seguente contiene tre paragrafi. Il secondo è nascosto. Un utente può modificare l'opzione **ShowHiddenText** per visualizzare questo testo nascosto nella pagina. Inoltre, ogni paragrafo ha un segno di paragrafo alla fine. Il segno di paragrafo di solito non è visibile a meno che la proprietà **ShowParagraphMarks** non sia impostata per renderlo.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, questi parametri vengono impostati utilizzando la finestra di dialogo" File → Opzioni → Visualizza " come segue:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Commenti e revisioni

Con Aspose.Words, è possibile eseguire il rendering dei commenti del documento che avranno lo stesso aspetto di Microsoft Word. Per specificare se vengono visualizzati i commenti, utilizzare la proprietà [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

In Microsoft Word, questo parametro viene impostato utilizzando la finestra di dialogo "Opzioni traccia modifiche", come illustrato di seguito:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Inoltre, Aspose.Words consente di visualizzare le revisioni in un documento. Utilizzare la proprietà [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) della classe **LayoutOptions** per definire se vengono visualizzate le revisioni del documento. Per controllarne l'aspetto (colore evidenziazione revisione, colore barra revisione, ecc.), usa la classe [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/).

È inoltre possibile visualizzare le revisioni come commenti al contenuto. A tale scopo, utilizzare la proprietà [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode)e il valore [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/).

L'esempio di codice seguente mostra come personalizzare la visualizzazione delle revisioni:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

L'immagine seguente mostra come Aspose.Words esegue il rendering dei commenti e delle revisioni di Eliminazione:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Text Shaper per il rendering tipografico avanzato

La proprietà [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) consente di impostare la funzionalità di modellazione del testo e il supporto delle funzionalità `OpenType`.

Utilizzare la modellazione del testo per l'elaborazione dei documenti nei seguenti casi principali:

- Un documento utilizza Crenatura, Forma numerale, Forme numerali o legature.
- Un documento utilizza script complessi, come arabo, khmer, tailandese, ecc.

{{% alert color="primary" %}}

La modellazione del testo sarà abilitata solo quando si esporta un documento in PDF o XPS.

{{% /alert %}}
