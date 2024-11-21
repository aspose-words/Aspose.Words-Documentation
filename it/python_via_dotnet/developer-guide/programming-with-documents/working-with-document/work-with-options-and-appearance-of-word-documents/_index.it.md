---
title: Opzioni e aspetto del documento Word
second_title: Aspose.Words per Python
articleTitle: Lavora con le opzioni e l'aspetto dei documenti Word
linktitle: Lavora con le opzioni e l'aspetto dei documenti Word
description: "Controlla l'aspetto dei documenti Word tenendo conto della differenza tra le varie versioni Microsoft Word utilizzando Python."
type: docs
weight: 40
url: /it/python-net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

A volte potrebbe essere necessario modificare l'aspetto di un documento, ad esempio impostare le preferenze della lingua o il numero di righe per pagina. Aspose.Words offre la possibilità di controllare come verrà visualizzato il documento, oltre ad alcune opzioni aggiuntive. Questo articolo descrive tali possibilità.

## Imposta le opzioni di visualizzazione del documento

Puoi controllare come un documento verrà visualizzato in Microsoft Word utilizzando la classe [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/). Ad esempio, puoi impostare un valore di zoom del documento utilizzando la proprietà [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/) o la modalità di visualizzazione utilizzando la proprietà [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/).

Il seguente esempio di codice mostra come garantire che un documento venga visualizzato al 50% quando viene aperto in Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello per questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 non scrive alcun fattore di zoom su un documento e non imposta più lo zoom predefinito dal valore scritto nel documento, sembra invece utilizzare il fattore di zoom dell'ultimo documento aperto.

{{% /alert %}}

## Imposta le opzioni di visualizzazione della pagina

Se desideri impostare il numero di caratteri per riga, utilizza la proprietà [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/). Puoi anche impostare il numero di righe per pagina per un documento Word: utilizza la proprietà [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) per ottenere o impostare il numero di righe per pagina nella griglia del documento.

{{% alert color="primary" %}}

In Microsoft Word è possibile impostare gli stessi parametri utilizzando la scheda "Griglia documento" nella finestra di dialogo "Imposta pagina" solo quando è installato il supporto per le lingue asiatiche.

{{% /alert %}}

Il seguente esempio di codice mostra come impostare il numero di caratteri per riga e il numero di righe per pagina per un documento Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Imposta le preferenze della lingua

La visualizzazione di un documento in Microsoft Word dipende da quali lingue sono impostate come predefinite per questo documento. Se non sono impostate lingue predefinite, Microsoft Word prende le informazioni dalla finestra di dialogo "Imposta preferenze lingua di Office", che si trova ad esempio in "File → Opzioni → Lingua" in Microsoft Word 2019.

Con Aspose.Words puoi anche impostare le preferenze della lingua utilizzando la classe [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/). Tieni inoltre presente che per la corretta visualizzazione del tuo documento è necessario impostare la versione Microsoft Word a cui dovrà corrispondere il processo di caricamento del documento: questo può essere fatto utilizzando la proprietà [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/).

{{% alert color="primary" %}}

Se il documento generato da Aspose.Words non ha l'aspetto previsto, controlla i valori [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) e [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) e, se necessario, modificali in modo che corrispondano alle impostazioni della tua versione Microsoft Word.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere il giapponese alle lingue di modifica:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

Il seguente esempio di codice mostra come impostare il russo come lingua di modifica predefinita:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Ottimizza un documento per una particolare versione di Word

Il metodo [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) consente di ottimizzare il contenuto del documento, nonché il comportamento Aspose.Words predefinito per una particolare versione di Microsoft Word. È possibile utilizzare questo metodo per impedire a Microsoft Word di visualizzare la barra multifunzione "Modalità compatibilità" al caricamento del documento. Tieni presente che potrebbe anche essere necessario impostare la proprietà [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) su [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) o versione successiva.

Il seguente esempio di codice mostra come ottimizzare il contenuto del documento per Microsoft Word 2016:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
