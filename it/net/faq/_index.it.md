---
title: FAQ
second_title: Aspose.Words per .NET
articleTitle: Domande frequenti – Aspose.Words per .NET
linktitle: Domande frequenti – Aspose.Words per .NET
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words per .NET risponde alle domande più frequenti. Impara questa pagina per risolvere rapidamente il tuo problema su domande generali o argomenti specifici."
weight: 75
url: /it/net/faq/
timestamp: 2024-11-18-12-56-02
---

Questa pagina contiene le risposte alle domande più frequenti. Ti invitiamo a leggere la pagina corrente: forse questo ti consentirà di risolvere rapidamente il tuo problema.

Se non hai trovato la risposta alla tua domanda, puoi chiedere sul forum di supporto. Per informazioni su come segnalare correttamente la tua domanda o problema, consulta la pagina [Supporto tecnico](/words/it/net/technical-support/).

{{% alert color="primary" %}}

Le domande frequenti sono raggruppate per argomento per comodità.

{{% /alert %}}

## Generale

**D: Cos'è Aspose.Words?**

Aspose.Words for .NET è una libreria di classi che consente alle tue applicazioni di eseguire un'ampia varietà di attività di elaborazione dei documenti. Con Aspose.Words per .NET puoi generare, modificare, convertire, eseguire il rendering e stampare documenti senza applicazioni di terze parti.

I dettagli possono essere trovati nella nostra documentazione.

------

**D: Cosa significa "Aspose.Words non richiede applicazioni di terze parti"?**

Aspose.Words for .NET non necessita dell'installazione di applicazioni di terze parti o pacchetti software aggiuntivi per funzionare. Basta scaricare e installare Aspose.Words come descritto nell'articolo [Installazione](/words/it/net/installation/) e iniziare.

------

**D: Quali piattaforme supporta Aspose.Words?**

Aspose.Words per .NET copre la maggior parte degli ambienti di sviluppo e delle piattaforme di distribuzione più diffusi. Il suo API può essere utilizzato per sviluppare applicazioni per un'ampia gamma di sistemi operativi come Windows, Linux e Mac OS e varie piattaforme.

Per i dettagli consultare la pagina [Panoramica del Prodotto](/words/it/net/product-overview/) e la sezione [Piattaforme e Interoperabilità](/words/net/platforms-and-interoperability/).

------

**D: Quali formati di documenti supporta Aspose.Words?**

Aspose.Words per .NET supporta la maggior parte dei formati di documenti più diffusi come DOC, DOCX, HTML, Markdown, PDF, XML e altri.

Puoi vedere l'elenco completo dei formati supportati nella pagina [Formati di documenti supportati](/words/it/net/supported-document-formats/).

------

**D: Come posso provare Aspose.Words gratuitamente?**

Puoi farlo in due modi: utilizzando la versione di prova o una licenza temporanea di 30 giorni. La versione di prova è uguale a quella acquistata, fornisce tutte le funzionalità del prodotto ma aggiunge una filigrana valutativa nella parte superiore del documento durante il caricamento e il salvataggio e limita la dimensione massima del documento a poche centinaia di paragrafi. Una licenza temporanea ti consente di testare Aspose.Words senza restrizioni di prova per 30 giorni.

Consulta la pagina [Licenza e abbonamento](/words/it/net/licensing/) per ulteriori informazioni.

{{% alert color="primary" %}}

Puoi anche provare alcune delle funzionalità Aspose.Words più popolari tramite [Applicazioni online gratuite Aspose.Words](https://products.aspose.app/words).

{{% /alert %}}

------

**D: Come posso acquistare Aspose.Words?**

Per acquistare una licenza Aspose.Words è necessario andare sulla pagina [Acquistare](https://purchase.aspose.com/buy), selezionare il prodotto "Aspose.Words" e il tipo di licenza più adatta a te. Quindi aggiungi la licenza al carrello e segui le istruzioni del carrello.

Dopo l'acquisto, richiedere la licenza come descritto nella sezione [Licenza acquistata](/words/net/licensing/#purchased-license).

I dettagli su come installare Aspose.Words possono essere letti nella pagina [Installazione](/words/it/net/installation/).

------

**D: Come posso ottenere supporto?**

Utilizza il forum di supporto tecnico gratuito. Per dettagli su come segnalare correttamente un problema e cosa è necessario fare prima di contattare il forum, vedere la pagina [Supporto tecnico](/words/it/net/technical-support/).

## Rendering di un documento

{{% alert color="primary" %}}

Puoi trovare informazioni più dettagliate sul rendering nella sezione della documentazione [Rendering](/words/it/net/rendering/).

{{% /alert %}}

**D: Perché il layout e i caratteri nel documento di output sono diversi dall'originale?**

Il carattere potrebbe non essere disponibile oppure il formato del carattere è supportato da Microsoft Word ma non da Aspose.Words. Aspose.Words eseguirà [Manipolare e sostituire i caratteri TrueType](/words/it/net/manipulating-and-substitution-truetype-fonts/).

Per verificare se manca il carattere:

* In Aspose.Words utilizzare gli avvisi di sostituzione del carattere (per i dettagli, vedere la sezione "Come riconoscere che il carattere è stato sostituito" dell'articolo [Manipolare e sostituire i caratteri TrueType](/words/it/net/manipulating-and-substitution-truetype-fonts/)).
* In Microsoft Word aprire la finestra di dialogo "Sostituzione carattere" (File → Opzioni → Avanzate → Sostituzione carattere).

------

**D: Dove devo archiviare i caratteri per le applicazioni ASP.NET?**

In `APS.NET` non è possibile accedere alla cartella dei caratteri di sistema con attendibilità media. Gli utenti devono memorizzare i caratteri nella propria cartella.

------

**D: Perché il fallback dei caratteri non funziona su piattaforme non Windows e i caratteri Unicode vengono sostituiti con .notdef glyph?**

Spesso possiamo vedere il glyph `.notdef` invece di alcuni caratteri Unicode. Di solito è una casella o una domanda glyph.

Questo perché le impostazioni di fallback di Microsoft Office sono selezionate per impostazione predefinita e i caratteri Microsoft Office non sono disponibili. Gli utenti devono installare i caratteri Microsoft Office o modificare le impostazioni di fallback.

------

**D: Perché un testo con caratteri complessi, come il tailandese o l'ebraico, potrebbe essere visualizzato in modo impreciso per qualche motivo, ad esempio nella posizione errata dei segni diacritici o nelle legature imprecise?**

Alcuni caratteri di script complessi richiedono l'elaborazione delle funzionalità di tipografia avanzata per visualizzarli correttamente. La tipografia avanzata è disabilitata in Aspose.Words per impostazione predefinita. Gli utenti devono abilitare la tipografia avanzata con [TextShaperFactory](https://reference.aspose.com/words/it/net/aspose.words.layout/layoutoptions/textshaperfactory/).

------

**D: Ho bisogno di file di licenza per i font che utilizzo?**

Si. Pertanto, quando copi i caratteri, tieni presente che la maggior parte dei caratteri è protetta da copyright. Individuare in anticipo le licenze dei caratteri e verificare che possano essere trasferite liberamente su un altro computer.

## Mail Merge nidificato

{{% alert color="primary" %}}

Puoi trovare informazioni più dettagliate su mail merge nella sezione documentazione [Mail Merge e reporting](/words/net/mail-merge-and-reporting/).

{{% /alert %}}

**D: Perché non sono presenti campi uniti nell'output generato?**

Il nome originale del campo unione rimane lo stesso senza essere sostituito dai dati richiesti dall'origine dati, quindi:

* Controlla che i dati vengano caricati correttamente nelle tabelle: imposta correttamente il [TableName](https://reference.aspose.com/words/it/net/aspose.words.mailmerging/imailmergedatasource/tablename/) con tutte le chiavi primarie e le relazioni richieste.
* Controlla che i campi di unione abbiano un nome corretto. Utilizza il metodo [GetFieldNames](https://reference.aspose.com/words/it/net/aspose.words.mailmerging/mailmerge/getfieldnames/) per ottenere tutti i nomi dei campi unione e assicurati che il nome dei campi unione nel modello corrisponda a quello nell'origine dati.

------

**D: Perché l'output dell'unione nidificata non visualizza i dati della tabella figlio per la prima voce nella tabella padre ma mostra tutti gli elementi per l'ultima voce nella tabella padre, anche quelli che non sono effettivamente collegati ad essa?**

Questo perché le regioni di unione nel modello non sono formate correttamente, il che può far sì che tutte le regioni mail merge nidificate interrompano la visualizzazione di qualsiasi cosa. Il tag di apertura [StartTable](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/starttable/) e il tag di chiusura [EndTable](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/endtable/) devono corrispondere ed essere nella stessa riga o cella. Ad esempio, se inizi a nidificare le aree di unione in una cella di una tabella, devi terminare l'area di unione nella stessa riga della prima cella.

------

**D: Perché ogni voce della tabella padre visualizza tutti gli elementi della tabella figlio, anche quelli che non sono effettivamente collegati ad essa?**

Ciò è dovuto al fatto che la relazione tra le tabelle padre e figlio non è impostata o è impostata in modo errato. È necessario:

* Garantisci l'integrità dei dati all'interno del tuo **DataSet** e utilizza l'oggetto **DataRelation** per rappresentare la relazione genitore-figlio tra tabelle di dati correlate.
* Consulta la sezione "Come impostare le relazioni tra i dati nei Mail Merge nidificati con le regioni" nell'articolo [Mail Merge nidificato con regioni](/words/net/nested-mail-merge-with-regions/).

------

**D: Perché è presente un'eccezione: "System.ArgumentException: questo vincolo non può essere abilitato poiché non tutti i valori hanno valori principali corrispondenti" durante l'esecuzione di mail merge nidificati?**

Ciò accade perché non tutti i record padre hanno un record figlio, quindi l'origine dati non corrisponde ai seguenti criteri: *ogni riga nella tabella padre dovrebbe avere una relazione uno a uno con le righe della tabella figlio in base al record primario e chiavi esterne*.

Disabilita i vincoli di chiave esterna quando crei un **DataRelation**.

## Aggiungi o inserisci un documento

{{% alert color="primary" %}}

Informazioni più dettagliate sulla programmazione con documenti si trovano nella sezione documentazione [Programmazione con documenti](/words/it/net/programming-with-documents/).

{{% /alert %}}

**D: Perché il contenuto aggiunto a un documento non viene visualizzato nella stessa pagina?**

Il risultato dell'aggiunta viene visualizzato su una pagina separata a causa di una differenza nelle impostazioni [PageSetup](https://reference.aspose.com/words/it/net/aspose.words/pagesetup/) per le sezioni in cui i documenti vengono aggiunti insieme. Effettua impostazioni **PageSetup** identiche per le sezioni in cui i documenti vengono aggiunti insieme.

## Converti un documento

{{% alert color="primary" %}}

Puoi trovare informazioni più dettagliate sulla conversione di un documento nella sezione documentazione [Converti un documento](/words/it/net/convert-a-document/).

{{% /alert %}}

**D: Come convertire PDF in Word?**

È molto semplice, basta caricare un documento sul modello e salvarlo in qualsiasi formato supportato.

Il seguente esempio di codice mostra il processo di conversione di un file PDF in DOC:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**D: Come convertire DOCX in PDF?**

Anche il funzionamento è molto semplice: basta caricare un documento sul modello e salvarlo in qualsiasi formato supportato.

Il seguente esempio di codice mostra il processo di conversione di un file DOCX in PDF:

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipolare con un documento

{{% alert color="primary" %}}

Informazioni più dettagliate sulla programmazione con documenti si trovano nella sezione documentazione [Programmazione con documenti](/words/it/net/programming-with-documents/).

{{% /alert %}}

**D: Come dividere un documento pagina per pagina?**

Aspose.Words consente di dividere un documento di più pagine pagina per pagina.

L'esempio di codice seguente mostra come dividere un documento e salvare ogni pagina come documento separato:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**D: Come aprire un file crittografato** **documento?**

Puoi provare ad aprire un documento crittografato senza password, il che dovrebbe portare a un'eccezione.

Il seguente esempio di codice mostra come aprire un documento crittografato con una password:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**D: Come stampare un documento?**

Solo due righe di codice.

L'esempio di codice seguente mostra come stampare un documento in due modi:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**D: Come modificare un documento PDF?**

Basta caricare il PDF nel modello di documento Aspose.Words e apportare le modifiche.

Il seguente esempio di codice mostra come modificare un documento:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**D: Come utilizzare Aspose.Words in Docker?**

Per una risposta dettagliata, leggi l'articolo [Come eseguire Aspose.Words in Docker](/words/it/net/how-to-run-aspose-words-in-docker/).
