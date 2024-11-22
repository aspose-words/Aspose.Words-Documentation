---
title: Uso `DocumentBuilder` per inserire elementi di documento
second_title: Aspose.Words per Java
articleTitle: Uso `DocumentBuilder` per inserire elementi di documento
linktitle: Uso `DocumentBuilder` per inserire elementi di documento
type: docs
description: "Inserire elementi di documento utilizzando il costruttore di documenti Java."
weight: 10
url: /it/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) viene utilizzato per modificare i documenti. Questo articolo spiega e descrive come eseguire una serie di compiti.

## Inserire una stringa di testo

Basta passare la stringa di testo che è necessario inserire nel documento al [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) metodo. La formattazione del testo è determinata dalla `Font` proprieta'. Questo oggetto contiene diversi attributi di carattere (nome di testo, dimensione del carattere, colore e così via). Alcuni attributi di carattere importanti sono anche rappresentati da [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) proprietà per consentire di accedervi direttamente. Queste sono proprietà booleane [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), e [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Si noti che la formattazione del carattere impostato si applica a tutto il testo inserito dalla posizione corrente nel documento in poi.

{{% /alert %}}

Il seguente esempio di codice inserisce il testo formattato utilizzando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Inserire un paragrafo

DocumentBuilder.writeln inserisce anche una stringa di testo nel documento, ma in aggiunta aggiunge una pausa di paragrafo. La formattazione attuale del carattere è specificata anche dal DocumentBuilder. ♪ Proprietà del carattere e la formattazione del paragrafo corrente è determinata dalla proprietà DocumentBuilder.getParagraphFormat

Il seguente esempio di codice mostra come inserire un paragrafo nel documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Inserimento di una tabella

L'algoritmo di base per creare una tabella utilizzando `DocumentBuilder` è semplice:

1. Avviare la tabella utilizzando [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Inserire una cella utilizzando [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Questo inizia automaticamente una nuova riga. Se necessario, utilizzare il [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) proprietà per specificare la formattazione della cella.
1. Inserire il contenuto della cella utilizzando `DocumentBuilder` metodi.
1. Ripetere i passaggi 2 e 3 fino a quando la riga non è completa.
1. Chiamata [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) per terminare la riga corrente. Se necessario, utilizzare [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) proprietà per specificare la formattazione della riga.
1. Ripetere i passaggi 2 - 5 fino a quando la tabella non è completa.
1. Chiamata [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) per finire l'edificio del tavolo. Di seguito sono descritti i metodi di creazione della tabella DocumentBuilder.

### Avvio di un tavolo

Chiama DocumentBuilder.start Il tavolo è il primo passo nella costruzione di un tavolo. Può essere chiamato anche all'interno di una cella, in questo caso, inizia un tavolo nidiato. Il metodo successivo per chiamare è DocumentBuilder.insertCell.

### Inserimento di una cella

Dopo aver chiamato DocumentBuilder. inserto Cell, viene creata una nuova cella e qualsiasi contenuto che aggiungi utilizzando altri metodi `DocumentBuilder` la classe verrà aggiunta alla cella corrente. Per avviare una nuova cella nella stessa riga, chiamare DocumentBuilder. inserto Ancora una volta. Utilizzare il DocumentBuilder.getCell Formattare la proprietà per specificare la formattazione della cella. Restituisce un [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) oggetto che rappresenta tutta la formattazione per una cella di tabella.

### Fine di una riga

Chiama DocumentBuilder.end Fila per finire la riga corrente. Se chiami DocumentBuilder. inserto Cell subito dopo, poi la tabella continua su una nuova riga. Utilizzare `DocumentBuilder.RowFormat` proprietà per specificare la formattazione della riga. Restituisce un [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) oggetto che rappresenta tutta la formattazione per una riga di tabella.

### Fine di un tavolo

Chiama DocumentBuilder.end Tavolo per finire la tabella corrente. Questo metodo dovrebbe essere chiamato solo una volta dopo DocumentBuilder. EndRow è stato chiamato. Quando chiamato, DocumentBuilder.end La tabella sposta il cursore dalla cella corrente in una posizione appena dopo la tabella. L'esempio seguente mostra come costruire una tabella formattata che contiene 2 righe e 2 colonne.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Inserire una rottura

Se si desidera avviare esplicitamente una nuova linea, paragrafo, colonna, sezione o pagina, chiamare DocumentBuilder. inserireBreak. Passare a questo metodo il tipo di pausa è necessario inserire che è rappresentato dal `BreakType` enumerazione
Il seguente esempio di codice mostra come inserire le interruzioni di pagina in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Inserimento di un'immagine

DocumentBuilder fornisce diversi sovraccarichi dei [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) metodo che consente di inserire un'immagine in linea o galleggiante. Se l'immagine è un metafile EMF o WMF, verrà inserito nel documento in formato metafile. Tutte le altre immagini saranno memorizzate in formato PNG. Il DocumentBuilder.insert Il metodo di immagine può usare immagini da diverse fonti:

- Da un file o `URL` passando un parametro di stringa
- Da un ruscello passando un `Stream` parametro
- Da un oggetto Image passando un parametro Image
- Da un array byte passando un parametro di array byte
- No. E altri

Per ognuno dei DocumentBuilder. inserto Metodi di immagine, ci sono ulteriori sovraccarichi che permettono di inserire un'immagine con le seguenti opzioni:

- Inline o galleggianti in una posizione specifica
- Scala del profumo o dimensione personalizzata

Inoltre, il DocumentBuilder.insert Metodo di immagine restituisce un [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) oggetto appena creato e inserito in modo da poter modificare ulteriormente le proprietà della Forma.

### Inserimento di un'immagine in linea

Passare una singola stringa che rappresenta un file che contiene l'immagine a DocumentBuilder. inserto Immagine per inserire l'immagine nel documento come grafica in linea. Il seguente esempio di codice mostra come inserire un'immagine in linea nella posizione del cursore in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Inserimento di un galleggiamento (assolutamente posizionato) Immagine

Questo esempio inserisce un'immagine galleggiante da un file o `URL` in una posizione e dimensione specificate.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Inserimento di un segnalibro

Per inserire un segnalibro nel documento, è necessario fare quanto segue:

1. Chiamata [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) passarlo il nome desiderato del segnalibro.
1. Inserisci il testo del segnalibro usando `DocumentBuilder` metodi.
1. Chiamata [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) passando lo stesso nome che hai usato con DocumentBuilder.startBookmark.

I segnalibri possono sovrapporre e abbracciare qualsiasi gamma. Per creare un segnalibro valido è necessario chiamare sia DocumentBuilder.startBookmark che DocumentBuilder.endBookmark con lo stesso nome del segnalibro.

Segnalibri o segnalibri mal formati con nomi duplicati verranno ignorati quando il documento viene salvato.

Il seguente esempio di codice mostra come inserire un segnalibro in un documento utilizzando un costruttore di documenti.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Inserire un campo

Campi in Microsoft Word documenti sono costituiti da un codice di campo e un risultato di campo. Il codice di campo è come una formula e il risultato di campo è il valore che la formula produce. Il codice di campo può anche contenere interruttori di campo che sono istruzioni aggiuntive per eseguire un'azione specifica. È possibile passare tra la visualizzazione dei codici di campo e i risultati nel documento in Microsoft Word utilizzando la scorciatoia della tastiera Alt+F9. I codici di campo appaiono tra i brace ricci ( { } ).Utilizzo [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) creare campi nel documento. È necessario specificare un tipo di campo, codice di campo e valore di campo. Se non sei sicuro della particolare sintassi codice campo, creare il campo in Microsoft Word prima e passare a vedere il suo codice di campo
Il seguente esempio di codice inserisce un campo di fusione in un documento utilizzando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Inserimento di un `Form` Campo

I campi di forma sono un particolare caso di campi di Word che permette "interazione" con l'utente. Campi formali in Microsoft Word includere casella di testo, Combobox e casella di controllo. DocumentBuilder fornisce metodi speciali per inserire ogni tipo di campo forma nel documento: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) ♪ [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), e [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Si noti che se si specifica un nome per il campo del modulo, viene creato automaticamente un segnalibro con lo stesso nome.

### Inserimento di un input di testo

DocumentBuilder.insertTextInput per inserire una casella di testo nel documento. Il seguente esempio di codice mostra come inserire un campo del modulo di input di testo in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Inserimento di un `CheckBox`

Chiama DocumentBuilder.insert CheckBox per inserire una casella di controllo nel documento. Il seguente esempio di codice mostra come inserire un campo del modulo di checkbox in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Inserimento di una scatola Combo

Chiama DocumentBuilder.insertComboBox inserire una casella combo nel documento. Il seguente esempio di codice mostra come inserire un campo di forma combo box in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Inserimento locale a livello di campo

I clienti possono specificare Locale a livello di campo ora e può ottenere un migliore controllo. Locale Ids possono essere associati con ogni campo all'interno del DocumentBuilder. Gli esempi qui sotto illustrano come utilizzare questa opzione.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Inserimento HTML

È possibile inserire facilmente una stringa HTML che contiene un frammento HTML o un intero documento HTML nel documento di Word. Basta passare questa stringa al DocumentBuilder. inserto Metodo Html. Una delle utili implementazioni del metodo sta memorizzando una stringa HTML in un database e inserendola nel documento durante il Mail Merge per ottenere il contenuto formattato aggiunto invece di costruirlo utilizzando vari metodi del costruttore di documenti. Il seguente esempio di codice mostra inserti HTML in un documento utilizzando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Inserimento di un collegamento ipertestuale

Utilizzare DocumentBuilder.insertHyperlink per inserire un collegamento ipertestuale nel documento. Questo metodo accetta tre parametri: il testo del link da visualizzare nel documento, la destinazione del collegamento (URL o un nome di un segnalibro all'interno del documento), e un parametro booleano che dovrebbe essere true se il `URL` è un nome di un segnalibro all'interno del documento. DocumentBuilder.insertHyperlink chiama internamente DocumentBuilder.insertField. Il metodo aggiunge sempre gli apostrofi all'inizio e alla fine dell'URL. Si noti che è necessario specificare la formattazione del carattere per il testo del display del collegamento ipertestuale utilizzando esplicitamente il `Font` proprieta'. Il seguente esempio di codice inserisce un collegamento ipertestuale in un documento utilizzando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Inserire una tabella dei contenuti

È possibile inserire un `TOC` (tabella dei contenuti) campo nel documento in posizione corrente chiamando il [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) metodo. Il metodo DocumentBuilder.insertTableOfContents inserisce solo un `TOC` campo nel documento. Al fine di costruire la tabella dei contenuti e visualizzarli secondo i numeri di pagina, entrambi **Document.UpdateFields**metodo deve essere chiamato dopo l'inserimento del campo. Il seguente esempio di codice mostra come inserire un campo Table of Contents in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Inserimento Ole Object

Se vuoi Ole Object call [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Impostare il nome e l'estensione del file quando si inserisce Ole Object

Il pacchetto OLE è un modo legacy e "non documentato" per memorizzare oggetti incorporati se il gestore OLE è sconosciuto. In anticipo Windows versioni come Windows 3.1, 95 e 98 avevano Packager. exe applicazione che potrebbe essere utilizzata per incorporare qualsiasi tipo di dati nel documento. Ora, questa domanda è esclusa da Windows ma MS Word e altre applicazioni ancora lo utilizzano per incorporare i dati se il gestore OLE è mancante o sconosciuto. La classe OlePackage consente di accedere alle proprietà del pacchetto OLE. Il seguente esempio di codice mostra come impostare il nome del file, l'estensione e il nome del display per OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Accedi a OLE Object Raw Data

Il seguente esempio di codice dimostra come ottenere OLE Dati grezzi oggetto utilizzando `OleFormat.GetRawData`() metodo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Inserto orizzontale Regola nel documento

Il seguente esempio di codice mostra come inserire la forma della regola orizzontale in un documento utilizzando `DocumentBuilder.InsertHorizontalRule` metodo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Lavorare con forme

### Inserimento delle forme in linea e free-floating

È possibile inserire una forma in linea con un tipo e una dimensione specificati e una forma di libero scambio con la posizione specificata, la dimensione e il tipo di involucro di testo in un documento utilizzando `DocumentBuilder.InsertShape` metodo. The `DocumentBuilder.InsertShape` metodo consente di inserire la forma DML nel modello del documento. Il documento deve essere salvato nel formato, che supporta le forme DML, altrimenti tali nodi saranno convertiti in forma VML, mentre il salvataggio dei documenti. Il seguente esempio di codice mostra come inserire questi tipi di forme nel documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Crea rettangolo angolo snip

È possibile creare un rettangolo angolo snip utilizzando Aspose.Words. I tipi di forma sono SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRounded OneSnipped, SingleCornerRounded, TopCornersRounded, and DiagonalCornersRounded. La forma DML è creata utilizzando `DocumentBuilder.InsertShape` metodo con questi tipi di forma. Questi tipi non possono essere utilizzati per creare forme VML. Il tentativo di creare una forma utilizzando il costruttore pubblico della classe "Shape" solleva l'eccezione "NotSupportedException". Il seguente esempio di codice mostra come inserire questi tipi di forme nel documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Importa forme con matematica XML come forme in DOM

È possibile utilizzare `LoadOptions.ConvertShapeToOfficeMath` proprietà per convertire le forme con EquationXML in oggetti Office Math. Il valore predefinito di questa proprietà corrisponde al comportamento di MS Word cioè le forme con l'equazione XML non vengono convertite in oggetti di matematica di Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
