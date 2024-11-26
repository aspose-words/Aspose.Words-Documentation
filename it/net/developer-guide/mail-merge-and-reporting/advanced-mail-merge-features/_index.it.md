---
title: Funzioni avanzate di Mail Merge in C#
second_title: Aspose.Words per .NET
articleTitle: Funzioni avanzate Mail Merge
linktitle: Funzioni avanzate Mail Merge
type: docs
description: "Aspose.Words per .NET fornisce alcune funzionalità avanzate di Mail Merge che consentono di eseguire ulteriori personalizzazioni di Mail Merge utilizzando C#. Ad esempio, ottenere informazioni sulla struttura del modello, impostare regole, ripulire dopo un'operazione Mail Merge e altri."
keywords: "use advanced Mail Merge features c#"
weight: 50
url: /it/net/advanced-mail-merge-features/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words fornisce alcune proprietà e metodi aggiuntivi per Mail Merge che consentono di eseguire ulteriori personalizzazioni del processo Mail Merge in simple Mail Merge o Mail Merge con regioni.

Le funzionalità avanzate di Mail Merge includono, ma non sono limitate a, l'ottenimento di informazioni sulla struttura del modello prima di eseguire un'operazione Mail Merge, l'impostazione di regole per un'operazione Mail Merge e la pulizia durante un'operazione Mail Merge. Questo articolo tratterà solo alcune proprietà ed esempi per mostrare come utilizzare le funzionalità avanzate.

## Imposta regole per le operazioni Mail Merge

L'aggiunta di regole al modello consente di rendere il processo del flusso di lavoro più efficace e flessibile. Utilizzando le regole Mail Merge, è possibile impostare contenuti che possono essere modificati rapidamente ed evitare la necessità di generare più documenti.

Aspose.Words consente di personalizzare il Mail Merge in base alle regole eseguite quando si esegue l'operazione Mail Merge e si controllano le informazioni di unione. Ad esempio, quando crei un'e-mail o una lettera da inviare a tutti i tuoi clienti. È possibile impostare una regola in modo che la lettera possa contenere vari dati in base ai diversi valori in determinati campi dell'origine dati.

Dai un'occhiata ad alcune regole Mail Merge che puoi implementare.

### Implementare il campo Successivo per unire i record di dati nel documento corrente

È possibile implementare il campo [Next](https://reference.aspose.com/words/net/aspose.words.fields/fieldnext/) per unire il record di dati successivo nel documento unito risultante corrente, invece di avviare un nuovo documento unito. Viene utilizzato per visualizzare più record in un documento.

### Implementare i campi NextIf e SkipIf per confrontare due espressioni

È possibile utilizzare il campo [NextIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/) o il campo [SkipIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/) se si desidera confrontare due espressioni (espressioni[right](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/rightexpression/) e [left](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/leftexpression/)) con alcuni [operator](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words unirà il record di dati successivo nel documento di unione corrente e tutti i campi di unione nel modello successivi al campo *NextIf* verranno sostituiti dai valori del record di dati successivo anziché dal record di dati corrente. | Aspose.Words unirà il record di dati successivo in un nuovo documento di unione. |
| `SkipIf` | Aspose.Words annulla il documento di unione corrente, passa al record di dati successivo nell'origine dati e avvia un nuovo documento di unione. | Aspose.Words continuerà il documento di unione corrente. |

Il seguente esempio di codice mostra come confrontare due espressioni con **NextIf** o **SkipIf**:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "field-next.cs" >}}

## Ottenere informazioni sulla struttura del modello

Aspose.Words consente di raccogliere informazioni diverse nel modello attraverso molti metodi. Ad esempio, potrebbe essere necessario ottenere i nomi di alcuni campi di unione o la gerarchia delle regioni nel modello. Ora spiegheremo le possibili varianti per ottenere alcune informazioni specifiche dal tuo modello.

### Ottieni i nomi dei campi di unione

È possibile imbattersi in uno scenario in cui si desidera unire i dati con campi di unione creati da altri e, in questo caso, non si sarà sicuri dei nomi esatti dei campi di unione. Quindi, per raggiungere lo scopo Mail Merge, in primo luogo, è necessario leggere e visualizzare i nomi di tutti i campi di unione. Aspose.Words consente di ottenere una raccolta di nomi di campi di unione utilizzando il metodo [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/).

L'esempio di codice seguente mostra come ottenere i nomi di tutti i campi di unione nel modello:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-field-names.cs" >}}

### Ottieni informazioni sulle regioni di unione

Si può avere uno scenario in cui si desidera capire come il modello è strutturato attraverso le regioni di unione specificate. È possibile utilizzare alcuni metodi per raccogliere tutte le informazioni necessarie sulle regioni di unione o per ottenere la gerarchia delle regioni di unione nel modello, ad esempio il metodo [GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/). È possibile utilizzare le proprietà e i metodi della classe [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).L'esempio di codice seguente mostra come ottenere la gerarchia delle regioni di unione:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-hierarchy.cs" >}}

L'esempio di codice seguente mostra come ottenere specifiche regioni di unione all'interno del modello in base ai loro nomi:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-by-name.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20regions.docx).

{{% /alert %}}

### Aggiungi campi mappati

Aspose.Words consente di mappare automaticamente i nomi dei campi nell'origine dati e i nomi dei campi Mail Merge nel modello utilizzando la proprietà [MappedDataFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/mappeddatafields/). Ad esempio, se nel modello è presente un nome di campo denominato "Cognome" e nell'origine dati è presente il nome del campo "Cognome" o un'altra variante, ad esempio "Last_Name" o "LastName", il campo nell'origine dati verrà automaticamente mappato al campo mappato corrispondente. Se un modello di unione deve essere unito a molte origini dati, i campi mappati non consentono di reinserire i campi nel modello per concordare con i nomi dei campi nel database.

Nell'esempio di codice seguente viene illustrato come aggiungere un campo mappato utilizzando il metodo [Add](https://reference.aspose.com/words/net/aspose.words.mailmerging/mappeddatafieldcollection/add/) quando un campo di unione in un modello e un campo dati in un'origine dati hanno nomi diversi:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "mapped-data-fields.cs" >}}
