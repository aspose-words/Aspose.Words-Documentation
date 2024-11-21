---
title: Aggiornare i campi in C++
second_title: Aspose.Words per C++
articleTitle: Aggiorna campi
linktitle: Aggiorna campi
description: "Scopri come aggiornare i campi in C++. Aggiornare i campi a livello di codice o utilizzare l'aggiornamento automatico dei campi utilizzando l'API C++."
type: docs
weight: 30
url: /it/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

In genere, un campo inserito in Microsoft Word contiene già un valore aggiornato. Ad esempio, se il campo è una formula o un numero di pagina, conterrà il valore calcolato corretto per la versione specificata del documento. Ma se si dispone di un'applicazione che genera o modifica un documento con campi come l'unione di due documenti o la compilazione di dati, idealmente tutti i campi devono essere aggiornati affinché il documento sia utile.

## Come aggiornare i campi

Quando un documento viene caricato, Aspose.Words imita il comportamento di Microsoft Word con l'opzione per aggiornare automaticamente i campi è disattivata. Il comportamento può essere riassunto come segue:

- quando si apre / salva un documento i campi rimangono intatti
- è possibile aggiornare esplicitamente tutti i campi in un documento, ad esempio, ricostruire `TOC`, quando è necessario
- quando si esegue il rendering su PDF o XPS, i campi relativi alla numerazione delle pagine nelle intestazioni/piè di pagina vengono aggiornati
- quando si esegue mail merge tutti i campi vengono aggiornati automaticamente

### Aggiorna i campi a livello di codice

Per aggiornare esplicitamente i campi nell'intero documento, è sufficiente chiamare il metodo [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). Per aggiornare i campi contenuti in una parte di un documento, ottenere un oggetto [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) e chiamare il metodo [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). In Aspose.Words, è possibile ottenere un **Range** per qualsiasi nodo nell'albero del documento, ad esempio[Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), ecc. utilizzo della proprietà [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).È possibile aggiornare il risultato di un singolo campo chiamando il metodo [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### Aggiornamento automatico dei campi relativi alla pagina durante il rendering

Quando si esegue la conversione di un documento in un formato a pagina fissa, ad esempio in PDF o XPS, Aspose.Words aggiornerà automaticamente i campi relativi al layout di pagina `PAGE`, `PAGEREF` trovati nelle intestazioni/piè di pagina del documento. Questo comportamento imita il comportamento di Microsoft Word durante la stampa di un documento.

Se si desidera aggiornare tutti gli altri campi del documento, è necessario chiamare [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) prima di eseguire il rendering del documento.

L'esempio di codice seguente mostra come aggiornare tutti i campi prima di eseguire il rendering di un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Aggiornamento automatico del campo durante Mail Merge

Quando si esegue un mail merge, tutti i campi del documento verranno aggiornati automaticamente. Questo perché mail merge è un caso di aggiornamento del campo. Il programma incontra un campo mail merge e deve aggiornare il suo risultato, il che comporta l'acquisizione del valore dall'origine dati e l'inserimento nel campo. La logica è ovviamente più complicata, ad esempio, quando viene raggiunta la fine della regione document/mail merge ma ci sono ancora altri dati da unire, quindi la regione deve essere duplicata e il nuovo set di campi aggiornato.

## Aggiorna LastSavedTime Proprietà prima di salvare

È possibile utilizzare la proprietà [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) se aggiornare la corrispondente proprietà predefinita del documento [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) durante il salvataggio del documento.

L'esempio di codice seguente mostra come aggiornare questa proprietà:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


