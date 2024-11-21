---
title: Confronta i documenti in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Confronta documenti
linktitle: Confronta documenti
description: "Confronta due documenti in qualsiasi formato supportato e mostra le modifiche al contenuto utilizzando Python. Puoi applicare opzioni avanzate durante il confronto."
type: docs
weight: 60
url: /it/python-net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Il confronto dei documenti è un processo che identifica le modifiche tra due documenti e contiene le modifiche come revisioni. Questo processo confronta due documenti qualsiasi, comprese le versioni di un documento specifico, quindi le modifiche tra entrambi i documenti verranno visualizzate come revisioni nel primo documento.

Il metodo di confronto si ottiene confrontando le parole a livello di carattere o a livello di parola. Se una parola contiene una modifica di almeno un carattere, nel risultato la differenza verrà visualizzata come una modifica dell'intera parola e non di un carattere. Questo processo di confronto è un compito abituale nei settori legale e finanziario.

Invece di cercare manualmente le differenze tra documenti o tra diverse versioni degli stessi, puoi utilizzare Aspose.Words per confrontare documenti e ottenere modifiche al contenuto nella formattazione, intestazione/piè di pagina, tabelle e altro.

Questo articolo spiega come confrontare i documenti e come specificare le proprietà di confronto avanzate.

{{% alert color="primary" %}}

**Prova on-line**

Puoi confrontare due documenti online utilizzando lo strumento [Confronto di documenti online](https://products.aspose.app/words/comparison).

Tieni presente che il metodo di confronto, descritto di seguito, viene utilizzato in questo strumento per garantire l'ottenimento di risultati uguali. Quindi otterrai gli stessi risultati anche utilizzando lo strumento di confronto online o utilizzando il metodo di confronto in Aspose.Words.

{{% /alert %}}

## Limitazioni e formati di file supportati {#limitations-and-supported-file-formats}

Il confronto dei documenti è una funzionalità molto complessa. Esistono varie parti della combinazione di contenuti che devono essere analizzate per riconoscere tutte le differenze. Il motivo di questa complessità è dovuto al fatto che Aspose.Words mira a ottenere gli stessi risultati di confronto dell'algoritmo di confronto Microsoft Word.

La limitazione generale per due documenti da confrontare è che non devono avere revisioni prima di chiamare il metodo di confronto poiché questa limitazione esiste in Microsoft Word.

{{% alert color="primary" %}}

Tieni presente che puoi confrontare due documenti qualsiasi all'interno del [Formati di documenti supportati](/words/it/python-net/supported-document-formats/). Fondamentalmente, puoi confrontare gli oggetti del documento e persino creare quegli oggetti da zero senza avere alcun formato specifico.

{{% /alert %}}

## Confronta due documenti {#compare-two-documents}

Quando si confrontano i documenti, le differenze tra il secondo e il primo vengono visualizzate come revisioni del primo. Quando modifichi un documento, ogni modifica avrà la propria revisione dopo aver eseguito il metodo di confronto.

Aspose.Words ti consente di identificare le differenze tra i documenti utilizzando il metodo [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/): è simile alla funzione di confronto dei documenti Microsoft Word. Ti consente di controllare documenti o versioni di documenti per trovare differenze e modifiche, comprese modifiche alla formattazione come modifiche ai caratteri, modifiche alla spaziatura, aggiunta di parole e paragrafi.

Come risultato del confronto, i documenti possono essere determinati come uguali o non uguali. Il termine documenti "uguali" significa che il metodo di confronto non è in grado di rappresentare le modifiche come revisioni. Ciò significa che sia il testo del documento che la formattazione del testo sono gli stessi. Ma possono esserci altre differenze tra i documenti. Ad esempio, Microsoft Word supporta solo le revisioni del formato per gli stili e non è possibile rappresentare l'inserimento/eliminazione degli stili. Pertanto i documenti possono avere un diverso set di stili e il metodo [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) non produce ancora revisioni.

Il seguente esempio di codice mostra come verificare se due documenti sono uguali o meno:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

Il seguente esempio di codice mostra come applicare semplicemente il metodo `Compare` a due documenti:

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## Specificare le proprietà di confronto avanzate {#specify-advanced-comparing-properties}

Esistono molte proprietà diverse della classe [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) che puoi applicare quando desideri confrontare documenti.

Ad esempio, Aspose.Words consente di ignorare le modifiche apportate durante un'operazione di confronto per determinati tipi di oggetti all'interno del documento originale. Puoi selezionare la proprietà appropriata per il tipo di oggetto, ad esempio [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/) e altre, impostandole su `True`.

Inoltre Aspose.Words mette a disposizione la proprietà [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) con la quale è possibile specificare se tenere traccia delle modifiche per carattere o per parola.

Un'altra proprietà comune è la scelta del documento in cui mostrare i cambiamenti di confronto. Ad esempio, nella finestra di dialogo "Confronta documenti" in Microsoft Word è presente l'opzione "Mostra modifiche in" che influisce anche sui risultati del confronto. Aspose.Words fornisce la proprietà [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) che serve a questo scopo.

L'esempio di codice seguente mostra come impostare le proprietà di confronto avanzate:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
