---
title: Specificare le opzioni di layout in Java
second_title: Aspose.Words per Java
articleTitle: Specificare le opzioni di layout
linktitle: Specificare le opzioni di layout
description: "Creare documenti di output con vari layout, a seconda dei parametri specificati nel Documento utilizzando Java."
type: docs
weight: 10
url: /it/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words consente di creare documenti di uscita con vari layout, a seconda dei parametri specificati nel [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) proprietà della **Document**. Questa proprietà assomiglia ad alcuni dei Microsoft Word opzioni di menu di interfaccia utente descritte in questo articolo.

Per un elenco completo di parametri come [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) per calcolare i numeri di pagina in una sezione continua che riavvia la numerazione della pagina, o [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) ignorare l'opzione di compatibilità "Usa metriche della stampante per estrarre il documento", vedere [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) pagina di classe.

## Formattazione dei segni

Aspose.Words consente di gestire i segni di formattazione utilizzando le seguenti proprietà:

- No. [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) – a `Boolean` valore, che specifica se il testo nascosto viene reso.
- No. [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) – a `Boolean` valore, che specifica se i caratteri di segno di paragrafo sono resi.

La pagina riportata nell'esempio sottostante contiene tre paragrafi. Il secondo è nascosto. Un utente può cambiare **ShowHiddenText** opzione per visualizzare questo testo nascosto nella pagina. Inoltre, ogni paragrafo ha un segno di paragrafo alla fine. Il segno di paragrafo di solito non è visibile a meno che il **ShowParagraphMarks** la proprietà è impostata per renderla.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, questi parametri vengono impostati utilizzando la finestra di dialogo "File → Opzioni → Visualizza" come segue:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Osservazioni e revisioni

Con Aspose.Words, è possibile rendere i commenti di documento che guarderanno lo stesso come in Microsoft Word. Per specificare se vengono resi i commenti, utilizzare [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) proprieta'.

In Microsoft Word, questo parametro viene impostato utilizzando la finestra di dialogo "Opzioni modifiche del carrello", come mostrato di seguito:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Inoltre, Aspose.Words consente di visualizzare le revisioni in un documento. Utilizzare [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) proprietà della **LayoutOptions** classe per definire se vengono visualizzate le revisioni del documento. Per controllare il loro aspetto (revisione evidenziando il colore, revisione bar, ecc), utilizzare il [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) classe.

Puoi anche avere revisioni visualizzate come commenti al contenuto. Con questo scopo, utilizzare il [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) proprietà e [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) valore.

Il seguente esempio di codice mostra come personalizzare la visualizzazione delle revisioni:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

L'immagine qui sotto mostra come Aspose.Words rende i commenti e le cancella revisioni:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Shaper di testo per il rendering di tipografia avanzata

The [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) la proprietà consente di impostare la funzionalità di modellazione del testo, così come la `OpenType` caratteristiche di supporto.

Utilizzare la modellazione del testo per l'elaborazione dei documenti nei seguenti casi principali:

- Un documento utilizza Kerning, Numeral Shaping, Numeral Forms, o Ligatures.
- Un documento utilizza gli script complessi, come l'arabo, il Khmer, il tailandese, ecc.

{{% alert color="primary" %}}

La modellazione del testo sarà abilitata solo quando si esporta un documento in PDF o XPS.

{{% /alert %}}
