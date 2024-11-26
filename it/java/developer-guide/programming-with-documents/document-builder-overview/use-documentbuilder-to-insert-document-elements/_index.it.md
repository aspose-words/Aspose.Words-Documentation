---
title: Utilizzare DocumentBuilder per inserire elementi del documento
second_title: Aspose.Words per Java
articleTitle: Utilizzare DocumentBuilder per inserire elementi del documento
linktitle: Utilizzare DocumentBuilder per inserire elementi del documento
type: docs
description: "Inserire elementi del documento utilizzando il generatore di documenti in Java."
weight: 10
url: /it/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

Il [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) viene utilizzato per modificare i documenti. Questo articolo spiega e descrive come eseguire una serie di attività.

## Inserimento di una stringa di testo

Passa semplicemente la stringa di testo che devi inserire nel documento al metodo [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)). La formattazione del testo è determinata dalla proprietà `Font`. Questo oggetto contiene diversi attributi di carattere (nome del carattere, dimensione del carattere, colore e così via). Alcuni importanti attributi dei font sono rappresentati anche dalle proprietà [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) che consentono di accedervi direttamente. Queste sono proprietà booleane [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) e [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Si noti che la formattazione dei caratteri impostata si applicherà a tutto il testo inserito dalla posizione corrente nel documento in poi.

{{% /alert %}}

Il seguente esempio di codice Inserisce testo formattato utilizzando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Inserimento di un paragrafo

DocumentBuilder.writeln inserisce anche una stringa di testo nel documento, ma in aggiunta aggiunge un'interruzione di paragrafo. La formattazione del carattere corrente è specificata anche dal DocumentBuilder.La proprietà getFont e la formattazione del paragrafo corrente sono determinate da DocumentBuilder.getParagraphFormat proprietà.

Il seguente esempio di codice mostra come inserire un paragrafo nel documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Inserimento di una tabella

L'algoritmo di base per creare una tabella usando `DocumentBuilder` è semplice:

1. Avviare la tabella usando [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Inserire una cella usando [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Questo avvia automaticamente una nuova riga. Se necessario, utilizzare la proprietà [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) per specificare la formattazione delle celle.
1. Inserire il contenuto della cella utilizzando i metodi `DocumentBuilder`.
1. Ripetere i passaggi 2 e 3 fino al completamento della riga.
1. Chiama [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) per terminare la riga corrente. Se necessario, utilizzare la proprietà [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) per specificare la formattazione delle righe.
1. Ripetere i passaggi da 2 a 5 fino al completamento della tabella.
1. Chiama [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) per terminare la costruzione del tavolo. I metodi di creazione della tabella DocumentBuilder appropriati sono descritti di seguito.

### Avvio di un tavolo

Chiamata DocumentBuilder.startTable è il primo passo nella costruzione di una tabella. Può anche essere chiamato all'interno di una cella, in questo caso, avvia una tabella nidificata. Il metodo successivo da chiamare è DocumentBuilder.insertCell.

### Inserimento di una cella

Dopo aver chiamato DocumentBuilder.insertCell, viene creata una nuova cella e qualsiasi contenuto aggiunto utilizzando altri metodi della classe `DocumentBuilder` verrà aggiunto alla cella corrente. Per avviare una nuova cella nella stessa riga, chiamare DocumentBuilder.insertCell di nuovo. Usa il DocumentBuilder.getCellFormat proprietà per specificare la formattazione delle celle. Restituisce un oggetto [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) che rappresenta tutta la formattazione per una cella di tabella.

### Fine di una riga

Chiama DocumentBuilder.endRow per terminare la riga corrente. Se si chiama DocumentBuilder.insertCell subito dopo, la tabella continua su una nuova riga. Utilizzare la proprietà `DocumentBuilder.RowFormat` per specificare la formattazione delle righe. Restituisce un oggetto [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) che rappresenta tutta la formattazione per una riga di tabella.

### Fine di un tavolo

Chiama DocumentBuilder.endTable per completare la tabella corrente. Questo metodo dovrebbe essere chiamato solo una volta dopo DocumentBuilder.endRow è stato chiamato. Quando viene chiamato, DocumentBuilder.endTable sposta il cursore fuori dalla cella corrente in una posizione subito dopo la tabella. Nell'esempio seguente viene illustrato come creare una tabella formattata contenente 2 righe e 2 colonne.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Inserimento di una pausa

Se si desidera avviare esplicitamente una nuova riga, paragrafo, colonna, sezione o pagina, chiamare DocumentBuilder.insertBreak. Passare a questo metodo il tipo di interruzione che è necessario inserire rappresentato dall'enumerazione `BreakType`.
L'esempio di codice seguente mostra come inserire interruzioni di pagina in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Inserimento di un'immagine

DocumentBuilder fornisce diversi sovraccarichi del metodo [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) che consente di inserire un'immagine in linea o mobile. Se l'immagine è un metafile EMF o WMF, verrà inserita nel documento in formato metafile. Tutte le altre immagini saranno memorizzate nel formato PNG. Il DocumentBuilder.Il metodo insertImage può utilizzare immagini provenienti da fonti diverse:

- Da un file o `URL` passando un parametro stringa
- Da un flusso passando un parametro `Stream`
- Da un oggetto Immagine passando un parametro Immagine
- Da una matrice di byte passando un parametro di matrice di byte
- E altri

Per ciascuno dei DocumentBuilder.insertImage metodi, ci sono ulteriori sovraccarichi che consentono di inserire un'immagine con le seguenti opzioni:

- In linea o flottante in una posizione specifica
- Scala percentuale o dimensione personalizzata

Inoltre, il DocumentBuilder.Il metodo insertImage restituisce un oggetto [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) appena creato e inserito in modo da poter modificare ulteriormente le proprietà della Forma.

### Inserimento di un'immagine in linea

Passare una singola stringa che rappresenta un file che contiene l'immagine a DocumentBuilder.insertImage per inserire l'immagine nel documento come grafica in linea. L'esempio di codice seguente mostra come inserire un'immagine in linea nella posizione del cursore in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Inserimento di un'immagine fluttuante (assolutamente posizionata)

Questo esempio inserisce un'immagine mobile da un file o `URL` in una posizione e dimensione specificate.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Inserimento di un segnalibro

Per inserire un segnalibro nel documento, è necessario effettuare le seguenti operazioni:

1. Chiama [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) passandogli il nome desiderato del segnalibro.
1. Inserire il testo del segnalibro usando i metodi `DocumentBuilder`.
1. Chiama [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) passandogli lo stesso nome che hai usato con DocumentBuilder.startBookmark.

I segnalibri possono sovrapporsi e coprire qualsiasi intervallo. Per creare un segnalibro valido è necessario chiamare entrambi DocumentBuilder.startBookmark e DocumentBuilder.endBookmark con lo stesso nome del segnalibro.

Segnalibri mal formati o segnalibri con nomi duplicati verranno ignorati quando il documento viene salvato.

L'esempio di codice seguente mostra come inserire un segnalibro in un documento utilizzando un generatore di documenti.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Inserimento di un campo

I campi nei documenti Microsoft Word sono costituiti da un codice di campo e da un risultato di campo. Il codice del campo è come una formula e il risultato del campo è il valore prodotto dalla formula. Il codice di campo può anche contenere interruttori di campo che sono istruzioni aggiuntive per eseguire un'azione specifica. È possibile passare dalla visualizzazione dei codici di campo ai risultati nel documento in Microsoft Word utilizzando la scorciatoia da tastiera Alt+F9. I codici di campo vengono visualizzati tra parentesi graffe (`{ }`).Utilizzare [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) per creare campi nel documento. È necessario specificare un tipo di campo, un codice di campo e un valore di campo. Se non si è sicuri della particolare sintassi del codice di campo, creare prima il campo in Microsoft Word e passare a vedere il relativo codice di campo.
Nell'esempio di codice seguente viene inserito un campo di unione in un documento utilizzando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Inserimento di un campo `Form`

I campi modulo sono un caso particolare di campi Word che consente "interazione" con l'utente. I campi modulo in Microsoft Word includono textbox, Combobox e checkbox.DocumentBuilder fornisce metodi speciali per inserire ogni tipo di campo modulo nel documento: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int), [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) e [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Si noti che se si specifica un nome per il campo modulo, viene creato automaticamente un segnalibro con lo stesso nome.

### Inserimento di un input di testo

DocumentBuilder.insertTextInput per inserire una casella di testo nel documento. L'esempio di codice seguente mostra come inserire un campo modulo di input di testo in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Inserimento di un `CheckBox`

Chiama DocumentBuilder.insertCheckBox per inserire un checkbox nel documento. L'esempio di codice seguente mostra come inserire un campo modulo checkbox in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Inserimento di una casella combinata

Chiama DocumentBuilder.insertComboBox per inserire una casella combinata nel documento. L'esempio di codice seguente mostra come inserire un campo modulo casella combinata in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Inserimento di locale a livello di campo

I clienti possono specificare Locale a livello di campo ora e possono ottenere un migliore controllo. Gli ID locali possono essere associati a ciascun campo all'interno di DocumentBuilder. Gli esempi seguenti illustrano come utilizzare questa opzione.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Inserimento di HTML

È possibile inserire facilmente una stringa HTML che contiene un frammento HTML o un intero documento HTML nel documento di Word. Basta passare questa stringa a DocumentBuilder.insertHtml metodo. Una delle implementazioni utili del metodo è la memorizzazione di una stringa HTML in un database e l'inserimento nel documento durante Mail Merge per ottenere il contenuto formattato aggiunto invece di costruirlo utilizzando vari metodi del generatore di documenti. L'esempio di codice seguente mostra gli inserti HTML in un documento utilizzando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Inserimento di un collegamento ipertestuale

Usa DocumentBuilder.insertHyperlink per inserire un collegamento ipertestuale nel documento. Questo metodo accetta tre parametri: il testo del collegamento da visualizzare nel documento, la destinazione del collegamento (URL o un nome di un segnalibro all'interno del documento) e un parametro booleano che dovrebbe essere vero se il `URL` è un nome di un segnalibro all'interno del documento.DocumentBuilder.insertHyperlink chiama internamente DocumentBuilder.insertField. Il metodo aggiunge sempre apostrofi all'inizio e alla fine del URL. Si noti che è necessario specificare la formattazione del carattere per il testo visualizzato collegamento ipertestuale in modo esplicito utilizzando la proprietà `Font`. L'esempio di codice seguente inserisce un collegamento ipertestuale in un documento utilizzando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Inserimento di un sommario

È possibile inserire un campo `TOC` (sommario) nel documento nella posizione corrente chiamando il metodo [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String). Il DocumentBuilder.Il metodo insertTableOfContents inserirà solo un campo `TOC` nel documento. Per costruire il sommario e visualizzarlo in base ai numeri di pagina, il metodo both **Document.UpdateFields**deve essere chiamato dopo l'inserimento del campo. Nell'esempio di codice seguente viene illustrato come inserire un campo Sommario in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Inserimento dell'oggetto Ole

Se si desidera Ole Oggetto chiamata [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Impostare il nome del file e l'estensione quando si inserisce l'oggetto Ole

Il pacchetto OLE è un modo legacy e "non documentato" per archiviare oggetti incorporati se il gestore OLE è sconosciuto. Le prime versioni di Windows come Windows 3.1, 95 e 98 avevano un'applicazione Packager.exe che poteva essere utilizzata per incorporare qualsiasi tipo di dati nel documento. Ora, questa applicazione è esclusa da Windows ma MS Word e altre applicazioni lo usano ancora per incorporare i dati se il gestore OLE è mancante o sconosciuto. La classe OlePackage consente di accedere alle proprietà OLE Package.L'esempio di codice seguente mostra come impostare il nome del file, l'estensione e il nome visualizzato per OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Ottieni l'accesso ai dati grezzi dell'oggetto OLE

Nell'esempio di codice seguente viene illustrato come ottenere dati grezzi oggetto OLE utilizzando il metodo `OleFormat.GetRawData` ().

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Inserire la regola orizzontale nel documento

L'esempio di codice seguente mostra come inserire la forma della regola orizzontale in un documento utilizzando il metodo `DocumentBuilder.InsertHorizontalRule`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Lavorare con le forme

### Inserimento di forme inline e Free-floating

È possibile inserire una forma in linea con un tipo e una dimensione specificati e una forma fluttuante con la posizione specificata, la dimensione e il tipo di testo a capo in un documento utilizzando il metodo `DocumentBuilder.InsertShape`. Il metodo `DocumentBuilder.InsertShape` consente di inserire la forma DML nel modello del documento. Il documento deve essere salvato nel formato, che supporta le forme DML, altrimenti tali nodi verranno convertiti in forma VML, durante il salvataggio del documento. L'esempio di codice seguente mostra come inserire questi tipi di forme nel documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Crea un rettangolo d'angolo Snip

È possibile creare un rettangolo angolo snip utilizzando Aspose.Words. I tipi di forma sono SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, e DiagonalCornersRounded. La forma DML viene creata usando il metodo `DocumentBuilder.InsertShape` con questi tipi di forma. Questi tipi non possono essere utilizzati per creare forme VML. Tentare di creare una forma utilizzando il costruttore pubblico della classe " Shape "genera l'eccezione" NotSupportedException". L'esempio di codice seguente mostra come inserire questi tipi di forme nel documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Importa forme con Math XML come Forme in DOM

È possibile utilizzare la proprietà `LoadOptions.ConvertShapeToOfficeMath` per convertire le forme con EquationXML in oggetti di Office Math. Il valore predefinito di questa proprietà corrisponde a MS Comportamento Word, ovvero le forme con equazione XML non vengono convertite in oggetti math di Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
