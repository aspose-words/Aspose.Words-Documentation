---
title: FAQ
second_title: Aspose.Words per Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words per Java risponde alle domande più frequenti. Imparare questa pagina per risolvere rapidamente il problema su domande generali o argomenti specifici."
weight: 75
url: /it/java/faq/
timestamp: 2024-01-31-14-23-37
---

Questa pagina contiene risposte alle domande più frequenti. Si prega di imparare la pagina corrente – forse questo vi permetterà di risolvere rapidamente il vostro problema.

Se non hai trovato la risposta alla tua domanda, puoi chiedere sul forum di supporto. Per informazioni su come segnalare correttamente la vostra domanda o problema, vedere il [Supporto tecnico](/words/it/java/technical-support/) pagina.

{{% alert color="primary" %}}

Domande frequenti sono raggruppate per argomento per la vostra convenienza.

{{% /alert %}}

## Generale

**Q: Che cosa è Aspose.Words?**

Aspose.Words per Java è una libreria di classe che consente alle applicazioni di eseguire una vasta gamma di attività di elaborazione dei documenti. Con Aspose.Words per Java, è possibile generare, modificare, convertire, rendere e stampare documenti senza applicazioni di terze parti.

I dettagli possono essere trovati nella nostra documentazione.

------

**Q: Cosa significa "Aspose.Words non richiede applicazioni di terze parti"?**

Aspose.Words per Java non ha bisogno di installare applicazioni di terze parti o pacchetti software aggiuntivi per lavorare. Basta scaricare e installare Aspose.Words come descritto nel [Installazione](/words/it/java/installation/) articolo e iniziare.

------

**Q: Quali piattaforme fa Aspose.Words supporto?**

Aspose.Words per Java copre la maggior parte degli ambienti di sviluppo popolari e piattaforme di distribuzione. La API può essere utilizzato per sviluppare applicazioni per una vasta gamma di sistemi operativi come Windows, Linux, e Mac OS, e varie piattaforme.

Per dettagli, vedere il [Panoramica del prodotto](/words/it/java/product-overview/) pagina e [Piattaforme InteropEsecuzione](/words/java/platforms-and-interoperability/) sezione.

------

**Q: Quali formati di documento fa Aspose.Words supporto?**

Aspose.Words per Java supporta la maggior parte dei formati di documento popolari come DOC, DOCX, HTML, Markdown, PDF, XML e altri.

È possibile visualizzare l'elenco completo dei formati supportati [Formati di documento supportati](/words/it/java/supported-document-formats/) pagina.

------

**Q: Come posso provare Aspose.Words libero?**

È possibile farlo in due modi – utilizzando la versione di prova o una licenza temporanea di 30 giorni. La versione Trial è la stessa di quella acquistata, fornisce funzionalità complete del prodotto ma aggiunge una filigrana valutativa in cima al documento quando si carica e salva e limita la dimensione massima del documento a poche centinaia di paragrafi. Una licenza temporanea consente di testare Aspose.Words senza restrizioni di prova per 30 giorni.

Vedi il [Licensing e Abbonamento](/words/it/java/licensing/) pagina per maggiori informazioni.

{{% alert color="primary" %}}

Si può anche provare alcuni dei più popolari Aspose.Words caratteristiche attraverso il [Aspose.Words online gratis Apps](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Come posso acquistare Aspose.Words?**

Per comprare un Aspose.Words patente, devi andare al [Acquisto](https://purchase.aspose.com/buy) pagina, selezionare il "Aspose.Words" prodotto e il tipo di licenza che si adatta. Quindi aggiungere la licenza al carrello e seguire le istruzioni del carrello.

Dopo l'acquisto, richiedere la licenza come descritto nella [Licenza acquistata](/words/java/licensing/#purchased-license) sezione.

Dettagli su come installare Aspose.Words può essere letto sul [Installazione](/words/it/java/installation/) pagina.

------

**Q: Come posso ottenere il supporto?**

Utilizzare il forum di supporto tecnico gratuito. Per dettagli su come segnalare correttamente un problema e cosa deve essere fatto prima di contattare il forum, vedere il [Supporto tecnico](/words/it/java/technical-support/) pagina.

## Rendering di un documento

{{% alert color="primary" %}}

È possibile trovare informazioni più dettagliate sul rendering nel [Rendering](/words/it/java/rendering/) sezione documentazione.

{{% /alert %}}

**Q: Perché il layout e i font nel documento di output sono diversi dall'originale?**

Il carattere potrebbe non essere disponibile, o il formato del carattere è supportato da Microsoft Word ma non supportato da Aspose.Words. Aspose.Words eseguirà [Manipolare e sostituto TrueType Fonts](/words/it/java/manipulate-and-substitute-truetype-fonts/).

Per verificare se il carattere manca:

- In Aspose.Words utilizzare gli avvisi di sostituzione del carattere (per i dettagli, vedere la sezione "Come riconoscere che il carattere è stato sostituito" della [Manipolare e sostituto TrueType Fonts](/words/it/java/manipulate-and-substitute-truetype-fonts/) articolo).
- In Microsoft Word aprire la finestra di dialogo "Font Substitution" (File → Opzioni → Advanced → Font Substitution).

------

**Q: Perché il font fallback non funziona su non-Windows piattaforme e caratteri Unicode sono sostituiti con .notdef glyph?**

Si vede spesso `.notdef` glyph invece di un personaggio Unicode. Questa è solitamente una scatola o una domanda glyph.

Questo perché Microsoft Le impostazioni di fallback dell'ufficio vengono selezionate per impostazione predefinita e Microsoft I font dell'ufficio non sono disponibili. Gli utenti devono installare Microsoft font Office o modificare le impostazioni di fallback.

------

**Q: Perché il testo di script complesso, come il tailandese o l'ebraico, può essere visualizzato inesattamente per qualche motivo, come la posizione sbagliata per diacritici o legature imprecise?**

Alcuni font di script complessi richiedono che le funzioni di tipografia avanzata vengano elaborate per visualizzarle correttamente. La tipografia avanzata è disabilitata in Aspose.Words per impostazione predefinita. Gli utenti devono abilitare la tipografia avanzata con [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**Q: Ho bisogno di file di licenza per i font che uso?**

Si', invece. Pertanto, quando si copiano i font, tenere presente che la maggior parte dei font sono protetti da copyright. Individuare le licenze di carattere in anticipo e verificare che possano essere liberamente trasferite in un'altra macchina.

## Nido Mail Merge

{{% alert color="primary" %}}

Potete trovare informazioni più dettagliate su Mail Merge nel [Mail Merge e Relazione](/words/java/mail-merge-and-reporting/) sezione documentazione.

{{% /alert %}}

**Q: Perché non ci sono campi fusi nell'output generato?**

Il nome originale del campo di fusione rimane lo stesso senza essere sostituito dai dati richiesti dalla fonte di dati, quindi:

- Controllare i dati viene caricato correttamente nelle tabelle: impostare il [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) correttamente con tutte le chiavi e le relazioni primarie richieste.
- Controlla che i campi di fusione siano nominati correttamente. Utilizzare [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) metodo per ottenere tutti i nomi dei campi di fusione e assicurarsi che il nome dei campi di fusione nel modello corrisponda a quello nella vostra fonte di dati.

------

**Q: Perché l'output della fusione nidificata non visualizza i dati dalla tabella dei bambini per la prima entrata nella tabella dei genitori, ma visualizza tutti gli elementi per l'ultima voce nella tabella dei genitori, anche quelli che non sono effettivamente collegati ad esso?**

Questo perché le regioni di fusione nel modello non sono correttamente formate, che possono fare tutti nidificati Mail Merge regioni per smettere di mostrare nulla. The [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) tag di apertura e [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) il tag di chiusura deve corrispondere ed essere nella stessa riga o cella. Per esempio, se si inizia a nidificare regioni di fusione in una cella di un tavolo, è necessario porre fine alla regione di fusione nella stessa riga della prima cella.

------

**Q: Perché ogni voce dalla tabella dei genitori visualizza ogni elemento nella tabella dei bambini, anche quelli che non sono effettivamente collegati ad esso?**

Questo perché il rapporto tra il genitore e i tavoli dei bambini non è impostato o non è corretto. È necessario:

- Assicurare l'integrità dei dati all'interno della **DataSet** e utilizzare **DataRelation** oggetto di rappresentare il rapporto genitore-figlio tra le relative tabelle di dati.
- Controllare la sezione "Come impostare i rapporti di dati in Nested Mail Merge con Regioni" nell’articolo [Nido Mail Merge con le regioni](/words/java/nested-mail-merge-with-regions/).

------

**Q: Perché è un’eccezione: "System. ArgumentException: Questo vincolo non può essere abilitato poiché non tutti i valori hanno i valori corrispondenti dei genitori" durante l’esecuzione nidificato mail merge?**

Questo accade perché non tutti i record dei genitori hanno un record di bambino in modo che la fonte di dati non corrisponda ai seguenti criteri: *ogni riga nella tabella dei genitori dovrebbe avere una relazione one-to-one con le righe della tabella dei bambini in base alle chiavi primarie e straniere*.

Disattivare i vincoli chiave stranieri quando si crea un **DataRelation**.

## Aggiungi o inserisci un documento

{{% alert color="primary" %}}

È possibile trovare informazioni più dettagliate sulla programmazione con i documenti nel [Programmazione con documenti](/words/it/java/programming-with-documents/) sezione documentazione.

{{% /alert %}}

**Q: Perché il contenuto allegato a un documento appare nella stessa pagina?**

Il risultato dell'append appare in una pagina separata a causa di una differenza [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) impostazioni per le sezioni in cui i documenti sono allegati insieme. Rendere identico **PageSetup** impostazioni per le sezioni in cui i documenti sono allegati insieme.

## Convertire un documento

{{% alert color="primary" %}}

È possibile trovare informazioni più dettagliate sulla conversione di un documento nel [Convertire un documento](/words/it/java/convert-a-document/) sezione documentazione.

{{% /alert %}}

**Q: Come convertire DOCX in PDF?**

E 'molto facile pure, basta caricare un documento al modello e salvarlo a qualsiasi formato supportato.

Il seguente esempio di codice mostra il processo di conversione di un file DOCX in PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipolare con un Documento

{{% alert color="primary" %}}

È possibile trovare informazioni più dettagliate sulla programmazione con i documenti nel [Programmazione con documenti](/words/it/java/programming-with-documents/) sezione documentazione.

{{% /alert %}}

**Q: Come dividere una pagina di documento per pagina?**

Aspose.Words consente di dividere una pagina di documento di più pagine per pagina.

Il seguente esempio di codice mostra come dividere un documento e salvare ogni pagina come documento separato:

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

**Q: Come aprire un criptato** **documento?**

È possibile cercare di aprire un documento crittografato senza una password, che dovrebbe portare ad un'eccezione.

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

**Q: Come stampare un documento?**

Per una risposta dettagliata, imparare l'articolo [Stampare un documento Programmaticamente o utilizzando la finestra di dialogo](/words/it/java/print-a-document-programmatically-or-using-dialogs/).
