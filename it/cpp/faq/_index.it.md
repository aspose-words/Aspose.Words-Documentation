---
title: FAQ
second_title: Aspose.Words per C++
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words per C++ risponde alle domande più frequenti. Scopri questa pagina per risolvere rapidamente il tuo problema su domande generali o argomenti specifici."
weight: 75
url: /it/cpp/faq/
---

Questa pagina contiene le risposte alle domande più frequenti. Si prega di imparare la pagina corrente-forse questo vi permetterà di risolvere il problema in fretta.

Se non hai trovato la risposta alla tua domanda, puoi chiedere sul forum di supporto. Per informazioni su come segnalare correttamente la domanda o il problema, vedere [Supporto tecnico](/words/cpp/technical-support/) pagina.

{{% alert color="primary" %}}

Domande frequenti sono raggruppati per argomento per la vostra convenienza.

{{% /alert %}}

## Generale

**D: Che cos'è Aspose.Words?**

Aspose.Words per C++ è una libreria di classi che consente alle applicazioni di eseguire un'ampia varietà di attività di elaborazione dei documenti. Con Aspose.Words per C++, è possibile generare, modificare, convertire, renderizzare e stampare documenti senza applicazioni di terze parti.

I dettagli possono essere trovati nella nostra documentazione.

------

**D: Cosa significa "Aspose.Words non richiede applicazioni di terze parti"?**

Aspose.Words per C++ non è necessario installare applicazioni di terze parti o pacchetti software aggiuntivi per funzionare. Basta scaricare e installare Aspose.Words come descritto nel ["Installazione"](/words/cpp/installation/) articolo e iniziare.

------

**D: Quali piattaforme supporta Aspose.Words?**

Aspose.Words per C++ copre la maggior parte dei più diffusi ambienti di sviluppo e piattaforme di distribuzione. La sua API può essere utilizzata per sviluppare applicazioni per una vasta gamma di sistemi operativi come Windows, Linux e Mac OS e varie piattaforme.

Per i dettagli, vedere il [Panoramica del prodotto](/words/cpp/product-overview/) pagina.

------

**D: Quali formati di documento supporta Aspose.Words?**

Aspose.Words per C++ supporta la maggior parte dei formati di documenti più diffusi come DOC, DOCX, HTML, Markdown, PDF, XML e altri.

È possibile visualizzare l'elenco completo dei formati supportati sul [Formati di documenti supportati](/words/cpp/supported-document-formats/) pagina.

------

**D: Come posso provare Aspose.Words gratis?**

Puoi farlo in due modi: utilizzando la versione di prova o una licenza temporanea di 30 giorni. La versione di prova è la stessa di quella acquistata, fornisce funzionalità complete del prodotto ma aggiunge una filigrana valutativa nella parte superiore del documento durante il caricamento e il salvataggio e limita la dimensione massima del documento a poche centinaia di paragrafi. Una licenza temporanea consente di testare Aspose.Words senza restrizioni di prova per 30 giorni.

Vedere il [Licenze e abbonamenti](/words/cpp/licensing/) pagina per maggiori informazioni.

{{% alert color="primary" %}}

Puoi anche provare alcune delle funzioni Aspose.Words più popolari attraverso il [Aspose.Words App online gratuite](https://products.aspose.app/words).

{{% /alert %}}

------

**D: Come posso acquistare Aspose.Words?**

Per acquistare una licenza Aspose.Words, è necessario andare al [Acquisto](https://purchase.aspose.com/buy) pagina, selezionare il prodotto "Aspose.Words " e il tipo di licenza che più vi si addice. Quindi aggiungi la licenza al carrello e segui le istruzioni del carrello.

Dopo l'acquisto, richiedere la licenza come descritto nel [Licenza acquistata](/words/cpp/licensing/#purchased-license) sezione.

I dettagli su come installare Aspose.Words possono essere letti sul [Installazione](/words/cpp/installation/) pagina.

------

**Q: Come posso ottenere il supporto?**

Utilizza il forum di supporto tecnico gratuito. Per i dettagli su come segnalare correttamente un problema e cosa deve essere fatto prima di contattare il forum, vedere il [Supporto tecnico](/words/cpp/technical-support/) pagina.

## Rendering di un documento

{{% alert color="primary" %}}

Puoi trovare informazioni più dettagliate sul rendering nel [Rendering](/words/cpp/rendering/) sezione documentazione.

{{% /alert %}}

**D: Perché il layout e i caratteri nel documento di output sono diversi dall'originale?**

Il font potrebbe non essere disponibile oppure il formato del font è supportato da Microsoft Word ma non da Aspose.Words. Aspose.Words eseguirà [sostituzione font](/words/cpp/manipulate-and-substitute-truetype-fonts/).

Per verificare se il font è mancante:

- In Aspose.Words utilizzare gli avvisi di sostituzione del font (per i dettagli, vedere la sezione "Come riconoscere che il font è stato sostituito" del [Manipolare e sostituire i caratteri TrueType ](/words/cpp/manipulate-and-substitute-truetype-fonts/) articolo).
- In Microsoft Word aprire la finestra di dialogo" Sostituzione font " (File → Opzioni → Avanzate → Sostituzione font).

------

**D: Perché il fallback del font non funziona su piattaforme non-Windows e i caratteri Unicode vengono sostituiti con il .notdef glifo?**

Spesso possiamo vedere il glifo `.notdef` invece di qualche carattere Unicode. Questo è di solito una scatola o un glifo domanda.

Questo perché le impostazioni di fallback di Microsoft Office sono selezionate per impostazione predefinita e i font di Microsoft Office non sono disponibili. Gli utenti devono installare i font di Microsoft Office o modificare le impostazioni di fallback.

------

**D: Perché il testo di script complesso, come il tailandese o l'ebraico, potrebbe essere visualizzato in modo impreciso per qualche motivo, come la posizione sbagliata per i segni diacritici o le legature imprecise?**

Alcuni caratteri di script complessi richiedono l'elaborazione delle funzionalità tipografiche avanzate per visualizzarli correttamente. La tipografia avanzata è disabilitata in Aspose.Words per impostazione predefinita. Gli utenti devono abilitare la tipografia avanzata con [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/).

------

**D: Ho bisogno di file di licenza per i font che uso?**

Si', invece. Pertanto, quando si copiano i font, tenere presente che la maggior parte dei font sono protetti da copyright. Individua in anticipo le licenze dei font e verifica che possano essere trasferite liberamente su un'altra macchina.

## Aggiungere o inserire un documento

{{% alert color="primary" %}}

È possibile trovare informazioni più dettagliate sulla programmazione con documenti nel [Programmazione con documenti](/words/cpp/programming-with-documents/) sezione documentazione.

{{% /alert %}}

**D: Perché il contenuto aggiunto a un documento non viene visualizzato nella stessa pagina?**

Il risultato append viene visualizzato in una pagina separata a causa di una differenza nelle impostazioni di [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) per le sezioni in cui i documenti vengono aggiunti insieme. Imposta le impostazioni **PageSetup** identiche per le sezioni in cui i documenti sono aggiunti insieme.

## Convertire un documento

{{% alert color="primary" %}}

È possibile trovare informazioni più dettagliate sulla conversione di un documento nel [Convertire un documento](/words/cpp/convert-a-document/) sezione documentazione.

{{% /alert %}}

**D: Come convertire DOCX in PDF?**

È anche molto facile, basta caricare un documento sul modello e salvarlo in qualsiasi formato supportato.

Il seguente esempio di codice mostra il processo di conversione di un file DOCX in PDF:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Manipolare con un documento

{{% alert color="primary" %}}

È possibile trovare informazioni più dettagliate sulla programmazione con documenti nel [Programmazione con documenti](/words/cpp/programming-with-documents/) sezione documentazione.

{{% /alert %}}

**D: Come dividere un documento pagina per pagina?**

Aspose.Words consente di suddividere un documento multipagina pagina per pagina.

L'esempio di codice seguente mostra come dividere un documento e salvare ogni pagina come documento separato:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**D: Come aprire un file crittografato**

Puoi provare ad aprire un documento crittografato senza una password, il che dovrebbe portare a un'eccezione.

Il seguente esempio di codice mostra come aprire un documento crittografato con una password:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
