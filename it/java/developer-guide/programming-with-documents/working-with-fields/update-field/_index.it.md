---
title: Aggiornare i campi in Java
second_title: Aspose.Words per Java
articleTitle: Campi di aggiornamento
linktitle: Campi di aggiornamento
description: "Scopri come aggiornare i campi in Java. Aggiornare i campi programmaticamente o utilizzare l'aggiornamento automatico del campo utilizzando Java API"
type: docs
weight: 30
url: /it/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Tipicamente, un campo inserito in Microsoft Word già contiene un valore aggiornato. Ad esempio, se il campo è una formula o un numero di pagina, conterrà il valore calcolato corretto per la versione data del documento. Ma se si dispone di un'applicazione che genera o modifica un documento con campi come la fusione di due documenti o la populazione con i dati, allora idealmente tutti i campi devono essere aggiornati per il documento da essere utili.

## Come Aggiornare i Campi

Quando un documento viene caricato, Aspose.Words imita il comportamento del Microsoft Word con l'opzione di aggiornare automaticamente i campi è spento. Il comportamento può essere riassunto come segue:

- quando si apre/salva un documento i campi rimangono intatti
- è possibile aggiornare esplicitamente tutti i campi in un documento, ad esempio, ricostruire `TOC` quando hai bisogno di
- quando si stampa/render in PDF o XPS i campi relativi alla pagina-numero in intestazioni / piè di pagina sono aggiornati
- quando si esegue Mail Merge tutti i campi vengono aggiornati automaticamente

### Aggiornare i campi programmaticamente

Per aggiornare esplicitamente i campi nell'intero documento, basta chiamare il [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) metodo. Per aggiornare i campi contenuti in una parte di un documento, ottenere un [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) oggetto e chiamare [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) metodo. In Aspose.Words, si può ottenere **Range** per qualsiasi nodo nell'albero del documento, come [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), ecc. utilizzando [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) proprieta'. È possibile aggiornare il risultato di un singolo campo chiamando il [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) metodo.

### Aggiornamento automatico dei campi di pagina-relati durante il rendering

Quando si esegue la conversione di un documento in un formato di pagina fissa, ad esempio in PDF o XPS, allora Aspose.Words aggiornerà automaticamente i campi relativi al layout della pagina `PAGE`, `PAGEREF` trovato in intestazioni/piedi del documento. Questo comportamento imita il comportamento di Microsoft Word quando si stampa un documento.

Se si desidera aggiornare tutti gli altri campi del documento, è necessario chiamare [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) prima di rendere il documento.

L'esempio seguente mostra come aggiornare tutti i campi prima di rendere un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Aggiornamento automatico del campo durante Mail Merge

Quando si esegue un mail merge> tutti i campi del documento verranno automaticamente aggiornati. Questo è perché Mail Merge è un caso di aggiornamento del campo. Il programma incontra un Mail Merge campo e ha bisogno di aggiornare il suo risultato, che comporta afferrare il valore dalla fonte di dati e inserendolo nel campo. La logica è, naturalmente, più complicata, per esempio, quando la fine del documento/mail merge la regione è raggiunta ma ci sono ancora ulteriori dati da fondere, quindi la regione deve essere duplicata e il nuovo insieme di campi aggiornati.

## Campi di aggiornamento con Dirty Attribute

Il w:dirty è un attributo a livello di campo che aggiornerà solo il campo specificato quando il documento è aperto. Dice a MS Word di aggiornare solo questo campo la prossima volta che il documento è aperto. È possibile utilizzare la proprietà LoadOptions.setUpdateDirtyFields() per specificare se aggiornare i campi con l'attributo sporco. Quando il valore di LoadOptions.setUpdateDirtyFields() è impostato su *true*> tutti i campi *true* valore per `Field.IsDirty` o `FieldChar.IsDirty` la proprietà viene aggiornata sul carico del documento

Il seguente esempio di codice mostra come aggiornare i campi con l'attributo sporco:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Aggiornamento LastSavedTime Proprietà prima di salvare

È possibile utilizzare [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) proprietà se aggiornare la proprietà del documento incorporato corrispondente [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) quando si salva il documento.

Il seguente esempio di codice mostra come aggiornare questa proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
