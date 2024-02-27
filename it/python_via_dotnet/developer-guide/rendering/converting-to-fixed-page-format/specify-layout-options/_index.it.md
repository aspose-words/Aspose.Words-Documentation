---
title: Specificare le opzioni di layout in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Specificare le opzioni di layout
linktitle: Specificare le opzioni di layout
description: "Specifica le opzioni di layout per vari layout di documenti utilizzando Python."
type: docs
weight: 10
url: /it/python-net/specify-layout-options/
---

Aspose.Words consente di creare documenti di output con vari layout, a seconda dei parametri specificati nelle proprietà della classe [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/). Alcune di queste proprietà assomigliano ad alcune opzioni del menu dell'interfaccia utente Microsoft Word: verranno descritte in questo articolo.

Per un elenco completo di parametri come [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) per calcolare i numeri di pagina in una sezione continua che riavvia la numerazione delle pagine o [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) per ignorare l'opzione di compatibilità "Utilizza le metriche della stampante per disporre il documento", vedere la pagina della classe [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/).

## Segni di formattazione

Aspose.Words consente di gestire i segni di formattazione utilizzando le seguenti proprietà:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/): un valore `Boolean`, che specifica se viene eseguito il rendering del testo nascosto.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/): un valore `Boolean`, che specifica se viene eseguito il rendering dei caratteri del segno di paragrafo.

La pagina raffigurata nell'esempio seguente contiene tre paragrafi. Il secondo è nascosto. Un utente può modificare l'opzione [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) per visualizzare questo testo nascosto nella pagina. Inoltre, ogni paragrafo ha un segno di paragrafo alla fine. Il segno di paragrafo in genere non è visibile a meno che la proprietà [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) non sia impostata per eseguirne il rendering.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, questi parametri vengono impostati utilizzando la finestra di dialogo "File → Opzioni → Visualizza" come segue:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Commenti e revisioni

Con Aspose.Words, puoi visualizzare i commenti del documento che avranno lo stesso aspetto di Microsoft Word. Per specificare se viene eseguito il rendering dei commenti, utilizzare la proprietà [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/).

In Microsoft Word, questo parametro viene impostato utilizzando la finestra di dialogo "Opzioni modifiche traccia", come mostrato di seguito:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Inoltre, Aspose.Words ti consente di visualizzare le revisioni in un documento. Utilizzare la proprietà [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) della classe [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) per definire se vengono visualizzate le revisioni del documento. Per controllarne l'aspetto (colore dell'evidenziazione della revisione, colore della barra di revisione, ecc.), utilizzare la classe [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/).

È inoltre possibile visualizzare le revisioni come commenti al contenuto. A questo scopo, utilizzare la proprietà [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) e il valore [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons).

L'esempio di codice seguente mostra come personalizzare la visualizzazione delle revisioni:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

L'immagine seguente mostra come Aspose.Words visualizza i commenti e le revisioni Elimina:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>