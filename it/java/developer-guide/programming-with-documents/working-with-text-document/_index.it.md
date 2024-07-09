---
title: Lavorare con il documento di testo in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con il documento di testo
linktitle: Lavorare con il documento di testo
description: "Elaborazione di documenti TXT avanzata, liste, BiDi, intestazioni/footer, utilizzando Java."
type: docs
weight: 430
url: /it/java/working-with-text-document/
---

In questo articolo impareremo quali opzioni possono essere utili per lavorare con un documento di testo tramite Aspose.Words. Si prega di notare che questo non è un elenco completo di opzioni disponibili, ma solo un esempio di lavorare con alcuni di loro.

## Aggiungi Bi-Directional Marchi

È possibile utilizzare [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) proprietà per specificare se aggiungere segni bidirezionali prima di ogni BiDi eseguire quando esportare in formato testo normale. Aspose.Words inserisce Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) prima di ogni bidirezionale Eseguire in testo. Questa opzione corrisponde a "Aggiungi segni bidirezionali" opzione nella finestra di dialogo MS Word File Conversion quando si esporta in un formato di testo normale. Si noti che appare nella finestra di dialogo solo se una qualsiasi delle lingue di editing arabo o ebraico sono aggiunti in MS Word.

Il seguente esempio di codice mostra come utilizzare `TxtSaveOptions.AddBidiMarks` proprieta'. Il valore predefinito di questa proprietà è *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Riconoscere gli elementi della lista durante il caricamento TXT

Aspose.Words può importare l'elemento elenco di un file di testo come numeri di elenco o testo normale nel suo modello di oggetto documento. The [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) la proprietà consente di specificare come gli elementi di elenco numerati sono riconosciuti quando un documento viene importato dal formato di testo normale:

* # Se questa opzione è impostata su *true*, whitespaces sono utilizzati anche come list number delimiters: elenco algoritmo di riconoscimento per la numerazione in stile arabo (1., 1.1.2.) utilizza sia whitespaces che dot (".") simboli.
* # Se questa opzione è impostata su *false*, l'algoritmo di riconoscimento delle liste rileva i paragrafi dell'elenco, quando i numeri dell'elenco terminano con i simboli del punto, della parentesi destra o del proiettile (come "•", "*", "-" o "o").

Il seguente esempio di codice mostra come utilizzare questa proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Maniglia Leading e Trailing Spaces durante il caricamento TXT

È possibile controllare il modo di gestire spazi leader e trailing durante il caricamento dei file TXT. Gli spazi principali potrebbero essere tagliati, conservati o convertiti in spazi interni e trailing potrebbero essere tagliati o conservati.

L'esempio di codice indicato di seguito mostra come tagliare gli spazi di guida e di trailing durante l'importazione del file TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Rilevamento del documento Direzione del testo

Aspose.Words fornisce [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) proprietà in [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) classe per rilevare la direzione del testo (RTL / LTR) nel documento. Questa proprietà imposta o ottiene documenti istruzioni di testo fornite in [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) enumerazione. Il valore predefinito è da sinistra a destra.

Il seguente esempio di codice mostra come rilevare la direzione del testo del documento durante l'importazione del file TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Esporta intestazione e piè di pagina in output TXT File

Se si desidera esportare l'intestazione e il piè di pagina nel documento di uscita TXT, è possibile utilizzare il [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) proprieta'. Questa proprietà specifica il modo in cui intestazioni e piè di pagina vengono esportati nel formato di testo normale.

Il seguente esempio di codice mostra come esportare intestazioni e piè di pagina in formato testo normale:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Elenco delle esportazioni Indentazione in uscita TXT

Aspose.Words introdotto [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) classe che consente di specificare come i livelli di elenco sono indentati durante l'esportazione in un formato di testo normale. Mentre lavori con [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), il [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) la proprietà è prevista per specificare il carattere da utilizzare per i livelli di elenco di rilevamento e il conteggio specificando quanti caratteri usare come indentazione per un livello di elenco.

Il valore predefinito per la proprietà dei caratteri è '\0' indicando che non vi è alcuna indentazione. Per la proprietà di conteggio, il valore predefinito è 0, il che significa che nessuna indentazione.

### Utilizzo del carattere della scheda

Il seguente esempio di codice mostra come esportare i livelli di elenco usando i caratteri della scheda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Utilizzo del carattere spaziale

Il seguente esempio di codice mostra come esportare i livelli di elenco utilizzando i caratteri spaziali:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Utilizzo dell'indentazione di default

Il seguente esempio di codice mostra come esportare i livelli di elenco utilizzando l'indentazione predefinita:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
