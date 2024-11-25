---
title: Rileva formato file
second_title: Aspose.Words per Java
articleTitle: Rileva il formato del file e verifica la compatibilità del formato
linktitle: Rileva il formato del file e verifica la compatibilità del formato
description: "Ottenere informazioni sul formato del documento prima di aprirlo per evitare un'eccezione se non si è sicuri di quale sia il contenuto effettivo del file Java."
type: docs
weight: 20
url: /it/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

A volte è necessario determinare il formato di un documento prima di aprire perché l'estensione del file non garantisce che il contenuto del file sia appropriato. Ad esempio, è noto che Crystal Reports produce spesso documenti in formato RTF, ma fornisce loro il .estensione doc.

Aspose.Words fornisce la possibilità di ottenere informazioni sul tipo di file per evitare un'eccezione se non si è sicuri del contenuto effettivo del file.

## Rileva il formato di file senza eccezioni

Quando si hanno a che fare con più documenti in vari formati di file, potrebbe essere necessario separare i file che possono essere elaborati da Aspose.Words da quelli che non possono. Potresti anche voler sapere perché alcuni dei documenti non possono essere elaborati.

Se si tenta di caricare un file in un oggetto [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) e Aspose.Words non riesce a riconoscere il formato del file o il formato non è supportato, Aspose.Words genererà un'eccezione. È possibile rilevare tali eccezioni e analizzarle, ma Aspose.Words fornisce anche il metodo [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) che consente di determinare rapidamente il formato del file senza caricare un documento con possibili eccezioni. Questo metodo restituisce un oggetto [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) che contiene le informazioni rilevate sul tipo di file.

{{% alert color="primary" %}}

DetectFileFormat controlla solo il formato del file ma non lo convalida. Non vi è alcuna garanzia che il file venga aperto correttamente, anche se **DetectFileFormat** restituisce che è uno dei formati supportati. Questo perché il metodo **DetectFileFormat** legge solo i dati parziali del formato del file, sufficienti per controllare il formato del file, ma non sufficienti per la convalida completa.

{{% /alert %}}

## Verifica la compatibilità dei formati dei file

Possiamo verificare la compatibilità dei formati di tutti i file nella cartella selezionata e ordinarli per formato nelle sottocartelle corrispondenti.

Poiché abbiamo a che fare con il contenuto di una cartella, la prima cosa che dobbiamo fare è ottenere una raccolta di tutti i file in questa cartella usando il metodo **GetFiles** della classe `Directory` (dallo spazio dei nomi `System.IO`).

Il seguente esempio di codice mostra come ottenere un elenco di tutti i file nella cartella:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Quando tutti i file vengono raccolti, il resto del lavoro viene eseguito con il metodo **DetectFileFormat**, che controlla il formato del file.

L'esempio di codice seguente mostra come scorrere l'elenco di file raccolti, controllare il formato di ciascun file e spostare ciascun file nella cartella appropriata:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

I file vengono spostati in sottocartelle appropriate utilizzando il metodo `Move` della classe `File`, dallo stesso spazio dei nomi `System.IO`.

I seguenti file vengono utilizzati nell'esempio precedente. Il nome del file è a sinistra e la sua descrizione è a destra:

| Gruppo di file | Documento di input | Tipo |
| :- | :- | :- |
| Formati di file supportati | Test File (Doc).doc | Microsoft Word 95 / 6.0 o Microsoft Word 97 – documento del 2003. |
|  | Test File (Dot).dot | Microsoft Word 95 / 6.0 o Microsoft Word 97 – modello 2003. |
|  | Test File (Docx).docx | Office Apre un documento XML WordprocessingML senza macro. |
|  | Test File (Docm).docm | Office Apre un documento XML WordprocessingML con macro. |
|  | Test File (Dotx).dotx | Aprire il modello di Office XML WordprocessingML. |
|  | Test File (Dotm).dotm | Office Apre il modello XML WordprocessingML con le macro. |
|  | Test File (XML).xml | FlatOPC OOXML Documento. |
|  | Test File (RTF).rtf | Documento in formato RTF. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML documento. |
|  | Test File (HTML).html | HTML documento. |
|  | Test File (MHTML).mhtml | MHTML (archivio Web) documento. |
|  | Test File (Odt).odt | OpenDocument Testo (OpenOffice Scrittore). |
|  | Test File (Ott).ott | OpenDocument Modello di documento. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 documento. |
| Documenti crittografati | Test File (Enc).doc | Documento crittografato Microsoft Word 95 / 6.0 o Microsoft Word 97 – 2003. |
|  | Test File (Enc).docx | Office crittografato Aprire il documento XML WordprocessingML. |
| Formati di file non supportati | Test File (JPG).jpg | JPEG file immagine. |

