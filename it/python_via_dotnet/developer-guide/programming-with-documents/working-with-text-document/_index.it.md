---
title: Lavorare con documenti di testo
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con documenti di testo
linktitle: Lavorare con documenti di testo
description: "Lavora con un documento di testo e modifica i suoi oggetti utilizzando Python."
type: docs
weight: 430
url: /it/python-net/working-with-text-document/
---

In questo articolo impareremo quali opzioni possono essere utili per lavorare con un documento di testo tramite Aspose.Words. Tieni presente che questo non è un elenco completo delle opzioni disponibili, ma solo un esempio di come lavorare con alcune di esse.

## Aggiungi indicatori bidirezionali

È possibile utilizzare la proprietà [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) per specificare se aggiungere contrassegni bidirezionali prima di ogni esecuzione BiDi durante l'esportazione in formato testo normale. Aspose.Words inserisce il carattere Unicode "SEGNO DA DESTRA A SINISTRA" (U+200F) prima di ogni [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) bidirezionale nel testo. Questa opzione corrisponde all'opzione "Aggiungi segni bidirezionali" nella finestra di dialogo Conversione file MS Word quando esporti in un formato di testo normale. Tieni presente che appare nel dialogo solo se in MS Word viene aggiunta una delle lingue di modifica araba o ebraica.

Nell'esempio di codice seguente viene illustrato come utilizzare la proprietà [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/). Il valore predefinito di questa proprietà è `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Riconoscere gli elementi dell'elenco durante il caricamento di TXT

Aspose.Words può importare voci di elenco di un file di testo come numeri di elenco o testo semplice nel suo modello di oggetti di documento. La proprietà [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) consente di specificare il modo in cui vengono riconosciuti gli elementi dell'elenco numerato quando un documento viene importato dal formato testo normale:

* Se questa opzione è impostata su `True`, gli spazi vengono utilizzati anche come delimitatori dei numeri dell'elenco: l'algoritmo di riconoscimento dell'elenco per la numerazione in stile arabo (1., 1.1.2.) utilizza sia gli spazi che i simboli punto (".").
* Se questa opzione è impostata su `False`, l'algoritmo di riconoscimento degli elenchi rileva i paragrafi dell'elenco, quando i numeri dell'elenco terminano con un punto, una parentesi chiusa o un simbolo di punto elenco (come "•", "*", "-" o "o").

L'esempio di codice seguente mostra come utilizzare questa proprietà:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Gestire gli spazi iniziali e finali durante il caricamento di TXT

È possibile controllare il modo di gestire gli spazi iniziali e finali durante il caricamento del file TXT. Gli spazi iniziali potrebbero essere tagliati, conservati o convertiti in rientro e gli spazi finali potrebbero essere tagliati o conservati.

L'esempio di codice seguente mostra come tagliare gli spazi iniziali e finali durante l'importazione del file TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Rileva la direzione del testo del documento

Aspose.Words fornisce la proprietà [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) nella classe [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) per rilevare la direzione del testo (RTL/LTR) nel documento. Questa proprietà imposta o ottiene le indicazioni del testo del documento fornite nell'enumerazione [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/). Il valore predefinito è da sinistra a destra.

Il seguente esempio di codice mostra come rilevare la direzione del testo del documento durante l'importazione del file TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Esporta intestazione e piè di pagina nell'output TXT

Se desideri esportare intestazione e piè di pagina nel documento TXT di output, puoi utilizzare la proprietà [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/). Questa proprietà specifica il modo in cui le intestazioni e i piè di pagina vengono esportati nel formato testo normale.

L'esempio di codice seguente mostra come esportare intestazioni e piè di pagina in formato testo semplice:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## Esporta rientro elenco nell'output TXT

Aspose.Words ha introdotto la classe [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) che consente di specificare come vengono rientrati i livelli dell'elenco durante l'esportazione in un formato di testo normale. Mentre si lavora con [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/), viene fornita la proprietà [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) per specificare il carattere da utilizzare per il rientro dei livelli dell'elenco e il conteggio specificando quanti caratteri utilizzare come rientro per un livello dell'elenco. Il valore predefinito per la proprietà carattere è '\0' che indica che non è presente alcun rientro. Per la proprietà count, il valore predefinito è 0, il che significa nessun rientro.

### Utilizzo del carattere di tabulazione

Il seguente esempio di codice mostra come esportare i livelli di elenco utilizzando i caratteri di tabulazione:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Utilizzo del carattere spaziale

Il seguente esempio di codice mostra come esportare i livelli di elenco utilizzando i caratteri spazio:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

