---
title: Aggiorna campi C#
second_title: Aspose.Words per .NET
articleTitle: Aggiorna campi
linktitle: Aggiorna campi
description: "Scopri come aggiornare i campi in C#. Aggiorna i campi a livello di codice o utilizza l'aggiornamento automatico dei campi utilizzando .NET API."
type: docs
weight: 30
url: /it/net/update-fields/
---

In genere, un campo inserito in Microsoft Word contiene già un valore aggiornato. Ad esempio, se il campo è una formula o un numero di pagina, conterrà il valore calcolato corretto per la versione specifica del documento. Ma se hai un'applicazione che genera o modifica un documento con campi come unire due documenti o popolarlo con dati, allora idealmente tutti i campi devono essere aggiornati affinché il documento sia utile.

## Come aggiornare i campi

Quando un documento viene caricato, Aspose.Words imita il comportamento di Microsoft Word con l'opzione di aggiornare automaticamente i campi disattivata. Il comportamento può essere così riassunto:

- quando apri/salvi un documento i campi rimangono intatti
- puoi aggiornare esplicitamente tutti i campi in un documento, ad esempio, ricostruire `TOC`, quando necessario
- quando si stampa/esegui il rendering in PDF o XPS i campi relativi alla numerazione delle pagine nelle intestazioni/piè di pagina vengono aggiornati
- quando esegui mail merge tutti i campi vengono aggiornati automaticamente

### Aggiorna i campi a livello di codice

Per aggiornare in modo esplicito i campi nell'intero documento, chiama semplicemente il metodo [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/). Per aggiornare i campi contenuti in una parte di un documento, ottenere un oggetto [Range](https://reference.aspose.com/words/net/aspose.words/range/) e chiamare il metodo [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/). In Aspose.Words, puoi ottenere un **Range** per qualsiasi nodo nell'albero del documento, come [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), ecc. utilizzando la proprietà [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/). È possibile aggiornare il risultato di un singolo campo chiamando il metodo [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/).

### Aggiornamento automatico dei campi relativi alla pagina durante il rendering

Quando esegui la conversione di un documento in un formato a pagina fissa, ad esempio in PDF o XPS, Aspose.Words aggiornerà automaticamente i campi relativi al layout di pagina `PAGE`, `PAGEREF` trovati nelle intestazioni/piè di pagina del documento. Questo comportamento imita il comportamento di Microsoft Word durante la stampa di un documento.

Se desideri aggiornare tutti gli altri campi nel documento, devi chiamare [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) prima di eseguire il rendering del documento.

Il seguente esempio di codice mostra come aggiornare tutti i campi prima di eseguire il rendering di un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Aggiornamento automatico dei campi durante Mail Merge

Quando esegui un mail merge, tutti i campi del documento verranno aggiornati automaticamente. Questo perché il mail merge è un caso di aggiornamento sul campo. Il programma rileva un campo mail merge e deve aggiornarne il risultato, il che comporta il prelievo del valore dall'origine dati e l'inserimento nel campo. La logica è ovviamente più complicata, ad esempio, quando viene raggiunta la fine della regione del documento/mail merge ma ci sono ancora altri dati da unire, allora la regione deve essere duplicata e il nuovo set di campi aggiornato.

## Aggiorna i campi con attributo sporco

w:dirty è un attributo a livello di campo che aggiornerà solo il campo specificato all'apertura del documento. Indica a MS Word di aggiornare questo campo solo la prossima volta che il documento viene aperto. È possibile utilizzare la proprietà [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) per specificare se aggiornare i campi con l'attributo dirty. Quando il valore di **UpdateDirtyFields** è impostato su *true*, tutti i campi con valore *true* per la proprietà [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) o [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) vengono aggiornati al caricamento del documento.

Il seguente esempio di codice mostra come aggiornare i campi con l'attributo dirty:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Aggiorna la proprietà LastSavedTime prima di salvare

È possibile utilizzare la proprietà [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) per aggiornare la proprietà del documento incorporata corrispondente [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) durante il salvataggio del documento.

L'esempio di codice seguente mostra come aggiornare questa proprietà:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
