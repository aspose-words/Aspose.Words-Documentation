---
title: Funzioni avanzate Mail Merge in C++
second_title: Aspose.Words per C++
articleTitle: Funzioni avanzate Mail Merge
linktitle: Funzioni avanzate Mail Merge
type: docs
description: "Aspose.Words per C++ fornisce alcune funzionalità avanzate di mail merge che consentono di eseguire ulteriori personalizzazioni di mail merge. Ad esempio, ottenere informazioni sulla struttura del modello, impostare regole, ripulire dopo un'operazione mail merge e altri."
keywords: "use advanced mail merge features c++"
weight: 50
url: /it/cpp/advanced-mail-merge-features/
---

Aspose.Words fornisce alcune proprietà e metodi aggiuntivi per mail merge che consentono di eseguire ulteriori personalizzazioni del processo mail merge in simple mail merge o mail merge con regioni.

Le funzionalità avanzate di mail merge includono, ma non sono limitate a, l'ottenimento di informazioni sulla struttura del modello prima di eseguire un'operazione mail merge, l'impostazione di regole per un'operazione mail merge e la pulizia durante un'operazione mail merge. Questo articolo tratterà solo alcune proprietà ed esempi per mostrare come utilizzare le funzionalità avanzate.

## Imposta regole per le operazioni Mail Merge

L'aggiunta di regole al modello consente di rendere il processo del flusso di lavoro più efficace e flessibile. Utilizzando le regole mail merge, è possibile impostare contenuti che possono essere modificati rapidamente ed evitare la necessità di generare più documenti.

Aspose.Words consente di personalizzare il mail merge in base alle regole eseguite quando si esegue l'operazione mail merge e si controllano le informazioni di unione. Ad esempio, quando crei un'e-mail o una lettera da inviare a tutti i tuoi clienti. È possibile impostare una regola in modo che la lettera possa contenere vari dati in base ai diversi valori in determinati campi dell'origine dati.

Dai un'occhiata ad alcune regole mail merge che puoi implementare.

### Implementare il campo Successivo per unire i record di dati nel documento corrente

È possibile implementare il campo [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) per unire il record di dati successivo nel documento unito risultante corrente, invece di avviare un nuovo documento unito. Viene utilizzato per visualizzare più record in un documento.

### Implementare i campi NextIf e SkipIf per confrontare due espressioni

È possibile utilizzare il campo [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) o il campo [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) se si desidera confrontare due espressioni ([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) espressioni) con alcuni [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words unirà il record di dati successivo nel documento di unione corrente e tutti i campi di unione nel modello successivi al campo *NextIf* verranno sostituiti dai valori del record di dati successivo anziché dal record di dati corrente. | Aspose.Words unirà il record di dati successivo in un nuovo documento di unione. |
| `SkipIf` | Aspose.Words annulla il documento di unione corrente, passa al record di dati successivo nell'origine dati e avvia un nuovo documento di unione. | Aspose.Words continuerà il documento di unione corrente. |

## Ottenere informazioni sulla struttura del modello

Aspose.Words consente di raccogliere informazioni diverse nel modello attraverso molti metodi. Ad esempio, potrebbe essere necessario ottenere i nomi di alcuni campi di unione o la gerarchia delle regioni nel modello. Ora spiegheremo le possibili varianti per ottenere alcune informazioni specifiche dal tuo modello.

### Ottieni i nomi dei campi di unione

È possibile imbattersi in uno scenario in cui si desidera unire i dati con campi di unione creati da altri e, in questo caso, non si sarà sicuri dei nomi esatti dei campi di unione. Quindi, per raggiungere lo scopo mail merge, in primo luogo, è necessario leggere e visualizzare i nomi di tutti i campi di unione. Aspose.Words consente di ottenere una raccolta di nomi di campi di unione utilizzando il metodo [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

L'esempio di codice seguente mostra come ottenere i nomi di tutti i campi di unione nel modello:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Ottieni informazioni sulle regioni di unione

Si può avere uno scenario in cui si desidera capire come il modello è strutturato attraverso le regioni di unione specificate. È possibile utilizzare alcuni metodi per raccogliere tutte le informazioni necessarie sulle regioni di unione o per ottenere la gerarchia delle regioni di unione nel modello, ad esempio il metodo [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). È possibile utilizzare le proprietà e i metodi della classe [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).L'esempio di codice seguente mostra come ottenere la gerarchia delle regioni di unione:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Aggiungi campi mappati

Aspose.Words consente di mappare automaticamente i nomi dei campi nell'origine dati e i nomi dei campi mail merge nel modello utilizzando la proprietà [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/). Ad esempio, se si dispone di un nome di campo chiamato "Cognome" nel modello e nell'origine dati si ha il nome del campo "Cognome" o un'altra variazione come "Cognome" o "LastName", il campo nell'origine dati verrà automaticamente mappato al campo mappato corrispondente. Se un modello di unione deve essere unito a molte origini dati, i campi mappati non consentono di reinserire i campi nel modello per concordare con i nomi dei campi nel database.

Nell'esempio di codice seguente viene illustrato come aggiungere un campo mappato utilizzando il metodo [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) quando un campo di unione in un modello e un campo dati in un'origine dati hanno nomi diversi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
