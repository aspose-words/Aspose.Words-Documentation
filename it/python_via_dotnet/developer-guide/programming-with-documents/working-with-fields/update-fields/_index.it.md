---
title: Aggiornamento campi Python
second_title: Aspose.Words per Python via .NET
articleTitle: Aggiorna campi
linktitle: Aggiorna campi
description: "Aggiorna i campi in un documento in modi diversi e utilizzando opzioni diverse in Python."
type: docs
weight: 30
url: /it/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

In genere, un campo inserito in Microsoft Word contiene già un valore aggiornato. Ad esempio, se il campo è una formula o un numero di pagina, conterrà il valore calcolato corretto per la versione specifica del documento. Ma se hai un'applicazione che genera o modifica un documento con campi come unire due documenti o popolarlo con dati, allora idealmente tutti i campi devono essere aggiornati affinché il documento sia utile.

## Come aggiornare i campi

Quando un documento viene caricato, Aspose.Words imita il comportamento di Microsoft Word con l'opzione di aggiornare automaticamente i campi disattivata. Il comportamento può essere così riassunto:

- quando apri/salvi un documento i campi rimangono intatti
- puoi aggiornare esplicitamente tutti i campi in un documento (ad esempio ricostruire il sommario) quando necessario
- quando si stampa/esegui il rendering in PDF o XPS i campi relativi alla numerazione delle pagine nelle intestazioni/piè di pagina vengono aggiornati
- quando esegui Mail Merge tutti i campi vengono aggiornati automaticamente

### Aggiorna i campi a livello di codice

Per aggiornare esplicitamente i campi nell'intero documento, chiama semplicemente [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Per aggiornare i campi contenuti in una parte di un documento, ottenere un oggetto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) e chiamare il metodo [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/). In Aspose.Words, puoi ottenere un **Range** per qualsiasi nodo nell'albero del documento, come [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), ecc. utilizzando la proprietà [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/). È possibile aggiornare il risultato di un singolo campo chiamando il metodo [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/).

### Aggiornamento automatico dei campi relativi alla pagina durante il rendering

Quando esegui la conversione di un documento in un formato a pagina fissa, ad esempio in PDF o XPS, Aspose.Words aggiornerà automaticamente i campi relativi al layout di pagina `PAGE`, `PAGEREF` trovati nelle intestazioni/piè di pagina del documento. Questo comportamento imita il comportamento di Microsoft Word durante la stampa di un documento.

Se desideri aggiornare tutti gli altri campi nel documento, devi chiamare [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) prima di eseguire il rendering del documento.

Il seguente esempio di codice mostra come aggiornare tutti i campi prima di eseguire il rendering di un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Aggiornamento automatico dei campi durante Mail Merge

Quando esegui un mail merge, tutti i campi del documento verranno aggiornati automaticamente. Questo perché il Mail Merge è un caso di aggiornamento sul campo. Il programma rileva un campo Mail Merge e deve aggiornarne il risultato, il che comporta il prelievo del valore dall'origine dati e l'inserimento nel campo. La logica è ovviamente più complicata, ad esempio, quando viene raggiunta la fine della regione del documento/mail merge ma ci sono ancora altri dati da unire, allora la regione deve essere duplicata e il nuovo set di campi aggiornato.

## Aggiorna i campi con attributo sporco

w:dirty è un attributo a livello di campo che aggiornerà solo il campo specificato all'apertura del documento. Indica a MS Word di aggiornare questo campo solo la prossima volta che il documento viene aperto. È possibile utilizzare la proprietà [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) per specificare se aggiornare i campi con l'attributo dirty. Quando il valore di **update_dirty_fields** è impostato su `True`, tutti i campi con valore `True` per la proprietà [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) o [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) vengono aggiornati al caricamento del documento.

Il seguente esempio di codice mostra come aggiornare i campi con l'attributo dirty:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Aggiorna la proprietà LastSavedTime prima di salvare

È possibile utilizzare la proprietà [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) per aggiornare la proprietà del documento incorporata corrispondente [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) durante il salvataggio del documento.

L'esempio di codice seguente mostra come aggiornare questa proprietà:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

