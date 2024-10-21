---
title: Rileva il formato file
second_title: Aspose.Words per Java
articleTitle: Rileva il formato del file e verifica la compatibilità del formato
linktitle: Rileva il formato del file e verifica la compatibilità del formato
description: "Ottenere informazioni sul formato del documento prima di aprirlo per evitare un'eccezione se non si è sicuri che cosa il contenuto effettivo del file sta utilizzando Java."
type: docs
weight: 20
url: /it/java/detect-file-format-and-check-format-compatibility/
---

A volte è necessario determinare il formato di un documento prima di aprire perché l'estensione del file non garantisce che il contenuto del file sia appropriato. Ad esempio, è noto che Crystal Reports spesso emette documenti in formato RTF, ma dà loro l'estensione .doc.

Aspose.Words fornisce una capacità di ottenere informazioni sul tipo di file al fine di evitare un'eccezione se non si è sicuri di quale sia il contenuto effettivo del file.

## Rileva il formato del file senza un'eccezione

Quando si tratta di più documenti in vari formati di file, potrebbe essere necessario separare i file che possono essere elaborati da Aspose.Words da quelli che non possono. Si può anche voler sapere perché alcuni dei documenti non possono essere trattati.

Se si tenta di caricare un file in un [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) oggetto e Aspose.Words non può riconoscere il formato del file o il formato non è supportato, Aspose.Words getterà un'eccezione. È possibile catturare queste eccezioni e analizzarle, ma Aspose.Words fornisce anche [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) metodo che ci permette di determinare rapidamente il formato del file senza caricare un documento con eventuali eccezioni. Questo metodo restituisce un [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) oggetto che contiene le informazioni rilevate sul tipo di file.

{{% alert color="primary" %}}

Rilevamento della temperatura Formato controlla solo il formato del file ma non convalida il formato del file. Non vi è alcuna garanzia che il file sarà aperto con successo, anche se **DetectFileFormat** restituisce che è uno dei formati supportati. Questo è a causa di **DetectFileFormat** metodo legge solo dati parziali di formato di file, sufficienti per controllare il formato di file, ma non abbastanza per la convalida completa.

{{% /alert %}}

## Controllare i file Formato Compatibilità

Possiamo controllare la compatibilità del formato di tutti i file nella cartella selezionata e ordinarli per formato in sottocartelle corrispondenti.

Dal momento che abbiamo a che fare con i contenuti in una cartella, la prima cosa che dobbiamo fare è ottenere una raccolta di tutti i file in questa cartella utilizzando **GetFiles** metodo del `Directory` classe (dalla `System.IO` namespace).

Il seguente esempio di codice mostra come ottenere un elenco di tutti i file nella cartella:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Quando tutti i file sono raccolti, il resto del lavoro è fatto dal **DetectFileFormat** metodo, che controlla il formato del file.

Il seguente esempio di codice mostra come iterare sopra l'elenco raccolto dei file, controllare il formato di ogni file e sposta ogni file nella cartella appropriata:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

I file vengono spostati in sottocartelle appropriate utilizzando `Move` metodo del `File` classe, dalla stessa `System.IO` namespace.

I seguenti file vengono utilizzati nell'esempio precedente. Il nome del file è a sinistra e la sua descrizione è a destra:

| Group di file | Documento di ingresso | Tipo |
|  :-  |  :-  |  :-  |
| Formati di file supportati | Test File (doc | Microsoft Word 95/6.0 o Microsoft Word 97 – documento 2003. |
|  | Test File (Dot).dot | Microsoft Word 95/6.0 o Microsoft Word 97 – modello 2003. |
|  | Test File (Docx).docx | Ufficio Open XML Wordprocessing Documento ML senza macro. |
|  | Test File (Docm).docm | Ufficio Open XML Wordprocessing Documento ML con macro. |
|  | Test File (Dotx).dotx | Ufficio Open XML Wordprocessing Modello ML. |
|  | Test File (Dotm).dotm | Ufficio Open XML Wordprocessing Modello ML con macro. |
|  | File di prova (XML).xml | FlatOPC OOXML Documento. |
|  | Test File (RTF).rtf | Ricco documento Formato testo. |
|  | Test File (WordML).xml | Microsoft Word 2003 Processo di parole Documento ML. |
|  | Test File (HTML).html | Documento HTML. |
|  | Test File (MHTML).mhtml | Documento MHTML (Archivio Web). |
|  | Test File (Odt).odt | Testo OpenDocument (OpenOffice Writer). |
|  | Test File (Ott).ott | OpenDocument Document Template. |
|  | Test File (DocPreWord60).doc | Microsoft Word Documento 2.0. |
| Documenti crittografati | Test File (Enc).doc | Crittografia Microsoft Word 95/6.0 o Microsoft Word 97 – documento 2003. |
|  | Test File (Enc).docx | Ufficio crittografato Open XML Wordprocessing Documento ML. |
| Formati di file non supportati | Test File (JPG). # | File immagine JPEG. |

