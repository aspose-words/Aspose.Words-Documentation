---
title: Converti PDF in altri formati di documenti in C#
second_title: Aspose.Words per .NET
articleTitle: Converti PDF in altri formati di documenti
linktitle: Converti PDF in altri formati di documenti
type: docs
description: "Converti PDF in formati Word come DOCX, DOC, formati immagine come JPG o PNG o qualsiasi altro formato supportato da Aspose.Words utilizzando C#."
keywords: convert pdf to other formats c#
weight: 45
url: /it/net/convert-pdf-to-other-document-formats/
---

Aspose.Words può caricare anche un formato complesso come PDF. Ciò apre nuove opportunità: è possibile convertire PDF in Word o altri formati che portano gli utenti molto più avanti nella risoluzione di molti problemi applicativi.

## Prerequisiti

* Aggiunto riferimento al pacchetto Aspose.Words ***O*** a Aspose.Words.Pdf2Word.dll.
* Almeno .NET Framework 4.6.1 o .NET Standard 2.0. Anche target come .NET Core 2.x o 3.0, .NET 5 e Xamarin sono supportati tramite compatibilità con .NET Standard.

## Converti PDF in vari formati {#convert-pdf-to-other-formats}

La conversione più popolare da PDF è la conversione in formati Microsoft Word come DOCX, DOC, nonché in formati immagine come JPG o PNG. Detto questo, la conversione di un documento da un formato a un altro funziona in modo familiare.

Il seguente esempio di codice mostra come convertire un documento da PDF a DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Specificare le opzioni di caricamento durante l'importazione di PDF {#specify-load-options-when-importing-pdf}

Aspose.Words fornisce la classe [PdfLoadOptions](https://reference.aspose.com/words/it/net/aspose.words.loading/pdfloadoptions/), che consente un controllo più preciso sul modo in cui vengono caricati i documenti PDF.

La maggior parte delle proprietà eredita o esegue l'overload di proprietà già esistenti nella classe `LoadOptions`. Oltre a queste, per il formato PDF vengono specificate numerose proprietà. Ad esempio, puoi utilizzare le proprietà [PageCount](https://reference.aspose.com/words/it/net/aspose.words.loading/pdfloadoptions/pagecount/) e [PageIndex](https://reference.aspose.com/words/it/net/aspose.words.loading/pdfloadoptions/pageindex/) per definire l'intervallo di pagine da caricare da un documento PDF e le proprietà [SkipPdfImages](https://reference.aspose.com/words/it/net/aspose.words.loading/pdfloadoptions/skippdfimages/) per controllare se le immagini devono essere saltate durante il caricamento del PDF. Un altro parametro supportato è [Password](https://reference.aspose.com/words/it/net/aspose.words.loading/loadoptions/password/), che deve essere fornito per [documenti protetti da password](/words/net/protect-documents-and-parts-of-documents/).

## Contenuto PDF supportato {#supported-pdf-content}

Il plug-in PDF2Word attualmente supporta i seguenti tipi di dati:

* Paragrafi di testo
* Immagini
* Tabelle
* Elenchi
* Intestazioni e piè di pagina
*Note a piè di pagina
*Numeri di pagina
* Testo da destra a sinistra (con alcune limitazioni)
* PDF ricercabili (le immagini frontali verranno rimosse a favore del testo di sfondo)

## Funzionalità future {#planned-features}

Alcune funzionalità sono ancora in fase di sviluppo iniziale o incluse nella roadmap di sviluppo:

* Sommario
* OCR per PDF ricercabili e non ricercabili
* Rapporto sullo stato di avanzamento
* Testo su più colonne
* Formule matematiche
* Più campi automatici (oltre a `PAGE` e NUMPAGES)

## Eccezioni caricamento PDF

Durante la conversione di un documento PDF, potrebbe verificarsi una delle seguenti eccezioni:

|  Eccezione |  Descrizione |
|  --------------------------------  |  ------------------------------------------------------------  |
|  `FileLoadException`               |  Per qualche motivo non è possibile elaborare un file PDF.<br /> {{% alert color="primary" %}}Puoi segnalare il problema al team di sviluppo per un'indagine dettagliata utilizzando [Supporto tecnico](/words/it/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  Un file PDF è protetto da Adobe DRM e non può essere decodificato da Pdf2Word |
|  `PasswordProtectedFileException`  |  Per un PDF protetto da password è necessario fornire la password corretta |

## Guarda anche

* [Riferimento Nuget a Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

