---
title: FAQ
second_title: Aspose.Words per Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words per Java risponde alle domande più frequenti. Scopri questa pagina per risolvere rapidamente il tuo problema su domande generali o argomenti specifici."
weight: 75
url: /it/java/faq/
timestamp: 2024-01-31-14-23-37
---

Questa pagina contiene le risposte alle domande più frequenti. Si prega di imparare la pagina corrente-forse questo vi permetterà di risolvere il problema in fretta.

Se non hai trovato la risposta alla tua domanda, puoi chiedere sul forum di supporto. Per informazioni su come segnalare correttamente la domanda o il problema, vedere [Supporto tecnico](/words/java/technical-support/) pagina.

{{% alert color="primary" %}}

Domande frequenti sono raggruppati per argomento per la vostra convenienza.

{{% /alert %}}

## Generale

**D: Che cos'è Aspose.Words?**

Aspose.Words per Java è una libreria di classi che consente alle applicazioni di eseguire un'ampia varietà di attività di elaborazione dei documenti. Con Aspose.Words per Java, è possibile generare, modificare, convertire, eseguire il rendering e stampare documenti senza applicazioni di terze parti.

I dettagli possono essere trovati nella nostra documentazione.

------

**D: Cosa significa "Aspose.Words non richiede applicazioni di terze parti"?**

Aspose.Words per Java non ha bisogno di installare applicazioni di terze parti o pacchetti software aggiuntivi per funzionare. Basta scaricare e installare Aspose.Words come descritto nel [Installazione](/words/java/installation/) articolo e iniziare.

------

**D: Quali piattaforme supporta Aspose.Words?**

Aspose.Words per Java copre la maggior parte degli ambienti di sviluppo e delle piattaforme di distribuzione più diffusi. Its API può essere utilizzato per sviluppare applicazioni per una vasta gamma di sistemi operativi come Windows, Linux e Mac OS e varie piattaforme.

Per i dettagli, vedere il [Panoramica del prodotto](/words/java/product-overview/) pagina e il [Piattaforme ed erabilità Interop](/words/java/platforms-and-interoperability/) sezione.

------

**D: Quali formati di documento supporta Aspose.Words?**

Aspose.Words per Java supporta la maggior parte dei formati di documenti più diffusi come DOC, DOCX, HTML, Markdown, PDF, XML, e altri.

È possibile visualizzare l'elenco completo dei formati supportati sul [Formati di documenti supportati](/words/java/supported-document-formats/) pagina.

------

**D: Come posso provare Aspose.Words gratis?**

Puoi farlo in due modi: utilizzando la versione di prova o una licenza temporanea di 30 giorni. La versione di prova è la stessa di quella acquistata, fornisce funzionalità complete del prodotto ma aggiunge una filigrana valutativa nella parte superiore del documento durante il caricamento e il salvataggio e limita la dimensione massima del documento a poche centinaia di paragrafi. Una licenza temporanea consente di testare Aspose.Words senza restrizioni di prova per 30 giorni.

Vedere il [Licenze e abbonamenti](/words/java/licensing/) pagina per maggiori informazioni.

{{% alert color="primary" %}}

Puoi anche provare alcune delle funzioni Aspose.Words più popolari attraverso il [Aspose.Words App online gratuite](https://products.aspose.app/words).

{{% /alert %}}

------

**D: Come posso acquistare Aspose.Words?**

Per acquistare una licenza Aspose.Words, è necessario andare al [Acquisto](https://purchase.aspose.com/buy) pagina, selezionare il prodotto "Aspose.Words " e il tipo di licenza che più vi si addice. Quindi aggiungi la licenza al carrello e segui le istruzioni del carrello.

Dopo l'acquisto, richiedere la licenza come descritto nel [Licenza acquistata](/words/java/licensing/#purchased-license) sezione.

I dettagli su come installare Aspose.Words possono essere letti sul [Installazione](/words/java/installation/) pagina.

------

**Q: Come posso ottenere il supporto?**

Utilizza il forum di supporto tecnico gratuito. Per i dettagli su come segnalare correttamente un problema e cosa deve essere fatto prima di contattare il forum, vedere il [Supporto tecnico](/words/java/technical-support/) pagina.

## Rendering di un documento

{{% alert color="primary" %}}

Puoi trovare informazioni più dettagliate sul rendering nel [Rendering](/words/java/rendering/) sezione documentazione.

{{% /alert %}}

**D: Perché il layout e i caratteri nel documento di output sono diversi dall'originale?**

Il font potrebbe non essere disponibile oppure il formato del font è supportato da Microsoft Word ma non da Aspose.Words. Aspose.Words eseguirà [sostituzione font](/words/java/manipulate-and-substitute-truetype-fonts/).

Per verificare se il font è mancante:

- In Aspose.Words utilizzare gli avvisi di sostituzione del font (per i dettagli, vedere la sezione "Come riconoscere che il font è stato sostituito" del [Manipolare e sostituire i caratteri TrueType](/words/java/manipulate-and-substitute-truetype-fonts/) articolo).
- In Microsoft Word aprire la finestra di dialogo" Sostituzione font " (File → Opzioni → Avanzate → Sostituzione font).

------

**D: Perché il fallback del font non funziona su piattaforme non-Windows e i caratteri Unicode vengono sostituiti con il .notdef glifo?**

Spesso possiamo vedere il glifo `.notdef` invece di qualche carattere Unicode. Questo è di solito una scatola o un glifo domanda.

Questo perché le impostazioni di fallback di Office Microsoft sono selezionate per impostazione predefinita e i font di Office Microsoft non sono disponibili. Gli utenti devono installare i font di Office Microsoft o modificare le impostazioni di fallback.

------

**D: Perché il testo di script complesso, come il tailandese o l'ebraico, potrebbe essere visualizzato in modo impreciso per qualche motivo, come la posizione sbagliata per i segni diacritici o le legature imprecise?**

Alcuni caratteri di script complessi richiedono l'elaborazione delle funzionalità tipografiche avanzate per visualizzarli correttamente. La tipografia avanzata è disabilitata in Aspose.Words per impostazione predefinita. Gli utenti devono abilitare la tipografia avanzata con [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**D: Ho bisogno di file di licenza per i font che uso?**

Si', invece. Pertanto, quando si copiano i font, tenere presente che la maggior parte dei font sono protetti da copyright. Individua in anticipo le licenze dei font e verifica che possano essere trasferite liberamente su un'altra macchina.

## Annidato Mail Merge

{{% alert color="primary" %}}

Puoi trovare informazioni più dettagliate su Mail Merge nel [Mail Merge e relazioni](/words/java/mail-merge-and-reporting/) sezione documentazione.

{{% /alert %}}

**D: Perché non ci sono campi uniti nell'output generato?**

Il nome originale del campo Unione rimane lo stesso senza essere sostituito dai dati richiesti dall'origine dati, quindi:

- Controllare che i dati vengano caricati correttamente nelle tabelle: impostare [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) correttamente con tutte le chiavi primarie e le relazioni richieste.
- Verificare che i campi di unione siano denominati correttamente. Utilizzare il metodo [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) per ottenere tutti i nomi dei campi di unione e assicurarsi che il nome dei campi di unione nel modello corrisponda a quello dell'origine dati.

------

**D: Perché l'output dell'unione nidificata non visualizza i dati dalla tabella figlio per la prima voce nella tabella padre ma visualizza tutti gli elementi per l'ultima voce nella tabella padre, anche quelli che non sono effettivamente collegati ad essa?**

Questo perché le regioni di unione nel modello non sono formate correttamente, il che può rendere tutte le regioni annidate Mail Merge per interrompere la visualizzazione di qualsiasi cosa. Il tag di apertura [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) e il tag di chiusura [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) devono corrispondere e trovarsi nella stessa riga o cella. Ad esempio, se si avvia l'annidamento delle regioni di unione in una cella di una tabella, è necessario terminare l'area di unione nella stessa riga della prima cella.

------

**D: Perché ogni voce della tabella padre mostra ogni elemento della tabella figlio, anche quelli che non sono effettivamente collegati ad esso?**

Ciò è dovuto al fatto che la relazione tra le tabelle padre e figlio non è stata impostata o non è stata impostata correttamente. È necessario:

- Verificare l'integrità dei dati all'interno di **DataSet** e utilizzare l'oggetto **DataRelation** per rappresentare la relazione padre-figlio tra tabelle di dati correlate.
- Controlla la sezione "Come impostare le relazioni di dati in nidificato Mail Merge con le regioni" nell'articolo [Annidato Mail Merge con regioni](/words/java/nested-mail-merge-with-regions/).

------

**D: Perché è un'eccezione: "Sistema.ArgumentException: Questo vincolo non può essere abilitato poiché non tutti i valori hanno valori padre corrispondenti" durante l'esecuzione di nidificato mail merge?**

Ciò accade perché non tutti i record padre hanno un record figlio, quindi l'origine dati non corrisponde ai seguenti criteri: *every row in the parent table should have a one-to-one relationship with the rows of the child table based on the primary and foreign keys*.

Disabilita i vincoli delle chiavi esterne quando crei un **DataRelation**.

## Aggiungere o inserire un documento

{{% alert color="primary" %}}

È possibile trovare informazioni più dettagliate sulla programmazione con documenti nel [Programmazione con documenti](/words/java/programming-with-documents/) sezione documentazione.

{{% /alert %}}

**D: Perché il contenuto aggiunto a un documento non viene visualizzato nella stessa pagina?**

Il risultato append viene visualizzato in una pagina separata a causa di una differenza nelle impostazioni [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) per le sezioni in cui i documenti vengono aggiunti insieme. Imposta le impostazioni **PageSetup** identiche per le sezioni in cui i documenti sono aggiunti insieme.

## Convertire un documento

{{% alert color="primary" %}}

È possibile trovare informazioni più dettagliate sulla conversione di un documento nel [Convertire un documento](/words/java/convert-a-document/) sezione documentazione.

{{% /alert %}}

**D: Come convertire DOCX in PDF?**

È anche molto facile, basta caricare un documento sul modello e salvarlo in qualsiasi formato supportato.

Il seguente esempio di codice mostra il processo di conversione di un file DOCX in PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipolare con un documento

{{% alert color="primary" %}}

È possibile trovare informazioni più dettagliate sulla programmazione con documenti nel [Programmazione con documenti](/words/java/programming-with-documents/) sezione documentazione.

{{% /alert %}}

**D: Come dividere un documento pagina per pagina?**

Aspose.Words consente di suddividere un documento multipagina pagina per pagina.

L'esempio di codice seguente mostra come dividere un documento e salvare ogni pagina come documento separato:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**D: Come aprire un file crittografato**

Puoi provare ad aprire un documento crittografato senza una password, il che dovrebbe portare a un'eccezione.

Il seguente esempio di codice mostra come aprire un documento crittografato con una password:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**D: Come stampare un documento?**

Per una risposta dettagliata, impara l'articolo [Stampa di un documento a livello di codice o tramite finestre di dialogo](/words/java/print-a-document-programmatically-or-using-dialogs/).
