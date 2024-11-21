---
title: Utilizzare `DocumentBuilder` per inserire elementi del documento
second_title: Aspose.Words per C++
articleTitle: Utilizzare `DocumentBuilder` per inserire elementi del documento
linktitle: Utilizzare `DocumentBuilder` per inserire elementi del documento
type: docs
description: "Inserire elementi del documento utilizzando il generatore di documenti in C++."
weight: 80
url: /it/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

Il `DocumentBuilder` viene utilizzato per modificare i documenti. Questo articolo spiega e descrive come eseguire una serie di attività:

## Inserimento di una stringa di testo

Passa semplicemente la stringa di testo che devi inserire nel documento al metodo `DocumentBuilder.Write`. La formattazione del testo è determinata dalla proprietà `Font`. Questo oggetto contiene diversi attributi di carattere (nome del carattere, dimensione del carattere, colore e così via). Alcuni importanti attributi dei font sono rappresentati anche dalle proprietà DocumentBuilder che consentono di accedervi direttamente. Queste sono proprietà booleane `Font.Bold`, `Font.Italic` e `Font.Underline`.

Si noti che la formattazione dei caratteri impostata si applicherà a tutto il testo inserito dalla posizione corrente nel documento in poi.

L'esempio seguente Inserisce testo formattato usando DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Inserimento di un paragrafo

 `DocumentBuilder.Writeln` inserisce anche una stringa di testo nel documento, ma in aggiunta aggiunge un'interruzione di paragrafo. La formattazione corrente del carattere è specificata anche dalla proprietà `DocumentBuilder.Font` e la formattazione corrente del paragrafo è determinata dalla proprietà `DocumentBuilder.ParagraphFormat`. L'esempio seguente mostra come inserire un paragrafo nel documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Inserimento di una tabella

L'algoritmo di base per creare una tabella usando DocumentBuilder è semplice:

1. Avviare la tabella usando `DocumentBuilder.StartTable`.
1. Inserire una cella usando `DocumentBuilder.InsertCell`. Questo avvia automaticamente una nuova riga. Se necessario, utilizzare la proprietà `DocumentBuilder.CellFormat` per specificare la formattazione delle celle.
1. Inserire il contenuto della cella utilizzando i metodi `DocumentBuilder`.
1. Ripetere i passaggi 2 e 3 fino al completamento della riga.
1. Chiama `DocumentBuilder.EndRow` per terminare la riga corrente. Se necessario, utilizzare la proprietà `DocumentBuilder.RowFormat` per specificare la formattazione delle righe.
1. Ripetere i passaggi 2 - 5 fino al completamento della tabella.
1. Chiama `DocumentBuilder.EndTable` per terminare la costruzione del tavolo. I metodi di creazione della tabella DocumentBuilder appropriati sono descritti di seguito.

### Avvio di un tavolo

Chiamare `DocumentBuilder.StartTable` è il primo passo nella costruzione di una tabella. Può anche essere chiamato all'interno di una cella, nel qual caso avvia una tabella nidificata. Il metodo successivo da chiamare è `DocumentBuilder.InsertCell`.

### Inserimento di una cella

Dopo aver chiamato `DocumentBuilder->InsertCell`, viene creata una nuova cella e qualsiasi contenuto aggiunto utilizzando altri metodi della classe `DocumentBuilder` verrà aggiunto alla cella corrente. Per avviare una nuova cella nella stessa riga, chiamare di nuovo `DocumentBuilder->InsertCell`. Utilizzare la proprietà `DocumentBuilder.CellFormat` per specificare la formattazione delle celle. Restituisce un oggetto `CellFormat` che rappresenta tutta la formattazione per una cella di tabella.

### Fine di una riga

Chiama `DocumentBuilder.EndRow` per terminare la riga corrente. Se si chiama `DocumentBuilder->InsertCell` immediatamente dopo, la tabella continua su una nuova riga.

Utilizzare la proprietà `DocumentBuilder.RowFormat` per specificare la formattazione delle righe. Restituisce un oggetto `RowFormat` che rappresenta tutta la formattazione per una riga di tabella.

### Fine di un tavolo

Chiama `DocumentBuilder.EndTable` per terminare la tabella corrente. Questo metodo dovrebbe essere chiamato solo una volta dopo che `DocumentBuilder->EndRow` è stato chiamato. Quando viene chiamato, `DocumentBuilder.EndTable` sposta il cursore fuori dalla cella corrente in una posizione subito dopo la tabella. Nell'esempio seguente viene illustrato come creare una tabella formattata contenente 2 righe e 2 colonne.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Inserimento di una pausa

Se si desidera avviare esplicitamente una nuova riga, paragrafo, colonna, sezione o pagina, chiamare `DocumentBuilder.InsertBreak`. Passare a questo metodo il tipo di interruzione che è necessario inserire rappresentato dall'enumerazione `BreakType`. L'esempio seguente mostra come inserire interruzioni di pagina in un documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Inserimento di un'immagine

DocumentBuilder fornisce diversi sovraccarichi del metodo `DocumentBuilder->InsertImage` che consente di inserire un'immagine in linea o mobile. Se l'immagine è un metafile EMF o WMF, verrà inserita nel documento in formato metafile. Tutte le altre immagini saranno memorizzate in formato PNG. Il metodo `DocumentBuilder->InsertImage` può utilizzare immagini provenienti da fonti diverse:

- Da un file o `URL` passando un parametro stringa `DocumentBuilder->InsertImage`.
- Da un flusso passando un parametro `Stream` `DocumentBuilder->InsertImage`.
- Da un oggetto Immagine passando un parametro Immagine `DocumentBuilder->InsertImage`.
- Da un array di byte passando un parametro array di byte `DocumentBuilder.InsertImage`.Per ciascuno dei metodi `DocumentBuilder->InsertImage`, ci sono ulteriori sovraccarichi che consentono di inserire un'immagine con le seguenti opzioni:
- In linea o fluttuante in una posizione specifica, ad esempio `DocumentBuilder->InsertImage`.
- Scala percentuale o dimensione personalizzata, ad esempio `DocumentBuilder.InsertImage`. Inoltre il metodo `DocumentBuilder->InsertImage` restituisce un oggetto `Shape` appena creato e inserito in modo da poter modificare ulteriormente le proprietà della Forma.

### Inserimento di un'immagine in linea

Passare una singola stringa che rappresenta un file che contiene l'immagine a `DocumentBuilder->InsertImage` per inserire l'immagine nel documento come grafica in linea. L'esempio seguente mostra come inserire un'immagine in linea nella posizione del cursore in un documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Inserimento di un'immagine fluttuante (assolutamente posizionata)

Questo esempio inserisce un'immagine mobile da un file o `URL` in una posizione e dimensione specificate.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Inserimento di un segnalibro

Per inserire un segnalibro nel documento, è necessario effettuare le seguenti operazioni:

1. Chiama `DocumentBuilder->StartBookmark` passandogli il nome desiderato del segnalibro.
1. Inserire il testo del segnalibro usando i metodi DocumentBuilder.
1. Chiama `DocumentBuilder.EndBookmark` passandogli lo stesso nome che hai usato con **DocumentBuilder->StartBookmark**.
1. I segnalibri possono sovrapporsi e coprire qualsiasi intervallo. Per creare un segnalibro valido è necessario chiamare sia `DocumentBuilder->StartBookmark` che `DocumentBuilder->EndBookmark` con lo stesso nome del segnalibro.

{{% alert color="primary" %}}

Segnalibri mal formati o segnalibri con nomi duplicati verranno ignorati quando il documento viene salvato.

{{% /alert %}}

L'esempio seguente mostra come inserire un segnalibro in un documento utilizzando un generatore di documenti.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Inserimento di un campo `Form`

I campi modulo sono un caso particolare di campi Word che consente "interazione" con l'utente. I campi modulo in Microsoft Word includono casella di testo, casella combinata e casella di controllo.DocumentBuilder fornisce metodi speciali per inserire ogni tipo di campo modulo nel documento: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` e `DocumentBuilder.InsertComboBox`. Si noti che se si specifica un nome per il campo modulo, viene creato automaticamente un segnalibro con lo stesso nome.

### Inserimento di un input di testo

 `DocumentBuilder.InsertTextInput` per inserire una casella di testo nel documento. L'esempio seguente mostra come inserire un campo modulo di input di testo in un documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Inserimento di una casella di controllo

Chiamare `DocumentBuilder.InsertCheckBox` per inserire una casella di controllo nel documento. L'esempio seguente mostra come inserire un campo modulo casella di controllo in un documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Inserimento di una casella combinata

Chiamare `DocumentBuilder.InsertComboBox` per inserire una casella combinata nel documento. L'esempio seguente mostra come inserire un campo modulo casella combinata in un documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Inserimento di locale a livello di campo

I clienti possono specificare Locale a livello di campo ora e possono ottenere un migliore controllo. Gli ID locali possono essere associati a ciascun campo all'interno di DocumentBuilder. Gli esempi seguenti illustrano come utilizzare questa opzione.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Inserimento di un collegamento ipertestuale

Utilizzare `DocumentBuilder.InsertHyperlink` per inserire un collegamento ipertestuale nel documento. Questo metodo accetta tre parametri: il testo del collegamento da visualizzare nel documento, la destinazione del collegamento (URL o un nome di un segnalibro all'interno del documento) e un parametro booleano che dovrebbe essere vero se `URL` è un nome di un segnalibro all'interno del documento.DocumentBuilder.InsertHyperlink chiama internamente `DocumentBuilder.InsertField`.Il metodo aggiunge sempre apostrofi all'inizio e alla fine dell'URL. Si noti che è necessario specificare la formattazione del carattere per il testo visualizzato collegamento ipertestuale in modo esplicito utilizzando la proprietà `Font`. L'esempio seguente inserisce un collegamento ipertestuale in un documento utilizzando DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Inserimento dell'oggetto Ole

Se si desidera chiamare l'oggetto Ole `DocumentBuilder.InsertOleObject`. Passare a questo metodo il `ProgId` esplicitamente con altri parametri. L'esempio seguente mostra come inserire l'oggetto Ole in un documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Impostare il nome del file e l'estensione quando si inserisce l'oggetto Ole

Il pacchetto OLE è un modo legacy e" non documentato " per archiviare l'oggetto incorporato se il gestore OLE è sconosciuto. Le prime versioni di Windows come Windows 3.1, 95 e 98 avevano Packager.applicazione exe che può essere utilizzata per incorporare qualsiasi tipo di dato nel documento. Ora, questa applicazione è esclusa da Windows ma MS Word e altre applicazioni lo usano ancora per incorporare i dati se il gestore OLE è mancante o sconosciuto. La classe OlePackage consente di accedere alle proprietà del pacchetto OLE. L'esempio seguente mostra come impostare il nome del file, l'estensione e il nome visualizzato per il pacchetto OLE.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Inserimento HTML

È possibile inserire facilmente una stringa HTML che contiene un frammento HTML o un intero documento HTML nel documento Word. Basta passare questa stringa al metodo `DocumentBuilder->InsertHtml`. Una delle implementazioni utili del metodo è la memorizzazione di una stringa HTML in un database e l'inserimento nel documento durante mail merge per ottenere il contenuto formattato aggiunto invece di costruirlo utilizzando vari metodi del generatore di documenti. Sotto esempio mostra inserisce HTML in un documento utilizzando DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Inserire la regola orizzontale nel documento

L'esempio Below code mostra come inserire la forma della regola orizzontale in un documento utilizzando il metodo `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
