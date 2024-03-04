---
title: Stampare un documento in C#
second_title: Aspose.Words per .NET
articleTitle: Stampa di un documento a livello di codice o utilizzando le finestre di dialogo
linktitle: Stampa di un documento a livello di codice o utilizzando le finestre di dialogo
description: "Stampa un documento su un Server utilizzando XpsPrint API non gestito o tramite una stampante selezionata con Impostazioni e finestre di dialogo Anteprima di stampa in C#."
type: docs
weight: 55
url: /it/net/print-a-document-programmatically-or-using-dialogs/
---

Questo articolo descrive come stampare un documento di elaborazione testi da un'applicazione del servizio ASP.NET o Windows utilizzando Aspose.Words e `XpsPrint` API. Dimostra inoltre i metodi per stampare un documento con le finestre di dialogo Impostazioni, Anteprima di stampa e Avanzamento stampa e spiega come ridurre il tempo della prima chiamata per stampare un documento.

## Stampa di un documento su un Server tramite `XpsPrint` API

Questa sezione è destinata agli utenti che desiderano inviare un documento XPS al sistema XpsPrint API non gestito da un'applicazione .NET utilizzando Aspose.Words.

### Limitazioni alla stampa di un documento nelle applicazioni del servizio ASP.NET o Windows

Quando si sviluppa un'applicazione .NET che produce output stampato, in genere è possibile utilizzare le classi fornite nello spazio dei nomi *System.Drawing.Printing* o le classi Windows Presentation Foundation (WPF). Tuttavia, se l'applicazione è un'applicazione di servizio ASP.NET o Windows, le opzioni per la stampa sono limitate perché Microsoft scoraggia l'utilizzo di questo approccio. Le classi di stampa .NET Framework non sono supportate dall'applicazione dei servizi. Ciò include le pagine ASP, che generalmente vengono eseguite nel contesto del servizio server.

Le classi all'interno dello spazio dei nomi *System.Drawing.Printing* non sono supportate per l'uso all'interno di un servizio Windows o di un'applicazione o di un servizio ASP.NET e il tentativo di utilizzarle potrebbe produrre una riduzione delle prestazioni del servizio, eccezioni di runtime e altri problemi. Allo stesso modo non è supportato l'utilizzo di WPF per la creazione di servizi Windows. Poiché WPF è una tecnologia di presentazione, il servizio Windows richiede autorizzazioni appropriate per eseguire operazioni visive che coinvolgono l'interazione dell'utente. Se il servizio Windows non dispone di tali autorizzazioni, potrebbero verificarsi risultati imprevisti.

L'oggetto Aspose.Words [Document](https://reference.aspose.com/words/it/net/aspose.words/document/) fornisce una famiglia di metodi [Print](https://reference.aspose.com/words/it/net/aspose.words/document/methods/print/index) per stampare documenti. Questi metodi utilizzano le classi di stampa .NET definite nello spazio dei nomi *System.Drawing.Printing*. Sono molti i clienti Aspose.Words che li utilizzano con successo per la stampa nelle loro applicazioni lato server. Tuttavia, questo articolo illustra un metodo alternativo per la stampa conforme alle raccomandazioni di Microsoft.

### Metodi per stampare un documento su un Server

Il modo corretto per stampare documenti secondo Microsoft è utilizzare XpsPrint API non gestito. Questo API è disponibile su Windows 7, Windows Server 2008 R2 e su Windows Vista a condizione che sia installato l'aggiornamento della piattaforma per Windows Vista.

Poiché Aspose.Words può convertire facilmente qualsiasi documento in XPS, devi solo scrivere il codice che passa un documento XPS al API `XpsPrint`. L'unico problema è che il API `XpsPrint` non è gestito e richiede una certa conoscenza della tecnologia Platform Invoke.

Per stampare un documento, Aspose.Words mette a disposizione una classe **XpsPrintHelper** contenente un semplice metodo Print, dove basta specificare i seguenti parametri (vedi maggiori dettagli nell'articolo [Stampa documento tramite XPS API](/words/net/missing-features-in-openxml/)):

- Documento che desideri stampare.
- Nome della stampante.
- Nome del lavoro (facoltativo).
- Valore booleano, che specifica se il programma deve attendere fino al completamento del lavoro di stampa. Pertanto, il sistema verificherà se il documento è stato stampato correttamente oppure restituirà il lavoro di stampa immediatamente dopo averlo inviato. Nell'ultimo caso, è impossibile identificare se il lavoro di stampa è andato a buon fine.

In caso di problemi nell'invio o nella stampa del documento, il metodo genererà un'eccezione.

L'esempio di codice seguente mostra come stampare un documento utilizzando la classe **XpsPrintHelper**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Quando si esegue il progetto, viene stampato un documento di esempio sulla stampante specificata e si apre una finestra della console per visualizzare i risultati di stampa. Quando il lavoro di stampa viene completato o si verifica un errore, il sistema visualizzerà un messaggio di successo o un testo dell'eccezione generata.

È inoltre possibile definire alcune impostazioni di stampa utilizzando la classe [PageSetup](https://reference.aspose.com/words/it/net/aspose.words/pagesetup/). Ad esempio, in Microsoft Word, i vassoi della stampante sono definiti per ciascuna sezione e sono specifici della stampante. Pertanto, è possibile modificare a livello di codice questi valori per ogni sezione tramite le proprietà [FirstPageTray](https://reference.aspose.com/words/it/net/aspose.words/pagesetup/firstpagetray/) e [OtherPagesTray](https://reference.aspose.com/words/it/net/aspose.words/pagesetup/otherpagestray/).

{{% alert color="primary" %}}

In alcuni casi, potrebbe essere necessario utilizzare questo esempio senza Aspose.Words. Ad esempio, quando hai già un documento XPS e desideri semplicemente stamparlo da un'applicazione del servizio ASP.NET o Windows. Quindi, puoi semplicemente eliminare il metodo `Print`.

{{% /alert %}}

Esistono due sovraccarichi del metodo **XpsPrintHelper**.**Print**. Il primo sovraccarico accetta un oggetto [Document](https://reference.aspose.com/words/it/net/aspose.words/document/) e lo salva in un `MemoryStream` nel formato XPS. Il secondo sovraccarico accetta un oggetto `Stream`. Lo stream deve contenere un documento nel formato XPS.

È possibile scaricare gli esempi di sovraccarico del metodo da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Stampa di un documento con finestre di dialogo Impostazioni e Anteprima di stampa

Quando si lavora con i documenti, spesso è necessario stamparli su una stampante selezionata. È utile utilizzare una finestra di dialogo di anteprima di stampa per controllare visivamente come apparirà il documento stampato e scegliere le opzioni di stampa pertinenti.

Il Aspose.Words non ha finestre di dialogo o moduli incorporati ma implementa la classe [AsposeWordsPrintDocument](https://reference.aspose.com/words/it/net/aspose.words.rendering/asposewordsprintdocument/), basata sulla classe .NET **PrintDocument**. Un'istanza di questa classe può essere passata al modulo **PrintPreviewDialog** per visualizzare in anteprima e stampare il documento. Inoltre, la classe [Finestra di dialogo Anteprima di stampa](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) definisce l'output da trasmettere a una stampante.

L'esempio seguente mostra come utilizzare queste classi per stampare un documento da Aspose.Words tramite le finestre di dialogo Anteprima di stampa e Impostazioni:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

La proprietà **AllowSomePages** consente di selezionare un intervallo di pagine da stampare se il valore di questa proprietà è True. Per impostazione predefinita, tutte le pagine nell'intervallo sono selezionate per la stampa.

{{% /alert %}}

Per ottimizzare l'aspetto delle impostazioni della finestra di dialogo Anteprima di stampa, specificare le proprietà della classe **PrintPreviewDialog**.

## Stampa di più pagine su un foglio

È sempre vantaggioso avere maggiore flessibilità quando si stampano i documenti. Utilizzando .NET e Aspose.Words puoi facilmente ottimizzare l'operazione di stampa per implementare la tua logica personalizzata definendo il modo in cui il documento apparirà sulla pagina stampata.

Come nella sezione precedente, Aspose.Words implementa la classe **MultipagePrintDocument**, che è basata sulla classe .NET **PrintDocument**. Ciò significa che l'infrastruttura di stampa .NET esistente può essere utilizzata in modo tale che le finestre di dialogo di stampa e anteprima di stampa consentano la visualizzazione del documento prima della stampa. La classe **MultipagePrintDocument** offre la possibilità di stampare più pagine su un foglio di carta.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Il risultato di questo esempio di codice è mostrato di seguito:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Nascondere la finestra di dialogo di avanzamento della stampa durante la stampa di un documento

La finestra di dialogo di avanzamento della stampa non viene visualizzata quando si stampa un documento tramite il metodo [Print](https://reference.aspose.com/words/it/net/aspose.words/document/print/). Tuttavia, questa finestra di dialogo viene visualizzata durante la stampa con un altro metodo [Print](https://reference.aspose.com/words/it/net/aspose.words.rendering/asposewordsprintdocument/). In questo caso, per evitare che venga visualizzata la finestra di dialogo Stampa, è necessario specificare impostazioni valide della stampante e un controller di stampa standard con questo metodo, come mostrato nell'esempio seguente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Come ridurre i tempi della prima chiamata per stampare un documento

Aspose.Words legge e memorizza nella cache alcuni campi di **PrinterSettings** per ridurre i tempi di stampa. È possibile ottenere ciò chiamando il metodo [CachePrinterSettings](https://reference.aspose.com/words/it/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/). Questo metodo viene chiamato prima dell'avvio della stampa se non è stato eseguito precedentemente. Si noti che il tempo totale di stampa con e senza chiamata a questo metodo è quasi lo stesso. Lo scopo dell'utilizzo di questo metodo è ridurre il tempo della prima chiamata del metodo [Print](https://reference.aspose.com/words/it/net/aspose.words/document/print/). L'esempio di codice seguente mostra come utilizzare questo metodo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Guarda anche

- [Aggiornamento della piattaforma per Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
