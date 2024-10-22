---
title: Rileva il formato del file e verifica la compatibilità del formato
second_title: Aspose.Words per C++
articleTitle: Rileva il formato del file e verifica la compatibilità del formato
linktitle: Rileva il formato del file e verifica la compatibilità del formato
description: "Determinare il formato del file in C++ se non si è sicuri di quale sia il contenuto effettivo del file o per verificare la compatibilità del formato."
type: docs
weight: 20
url: /it/cpp/detect-file-format-and-check-format-compatibility/
---

A volte è necessario determinare il formato di un documento prima di aprire perché l'estensione del file non garantisce che il contenuto del file sia appropriato. Ad esempio, è noto che Crystal Reports spesso emette documenti in formato RTF, ma dà loro il .estensione doc.

Aspose.Words fornisce la possibilità di ottenere informazioni sul tipo di file per evitare un'eccezione se non si è sicuri del contenuto effettivo del file.

## Rileva il formato di file senza eccezioni

Quando si hanno a che fare con più documenti in vari formati di file, potrebbe essere necessario separare i file che possono essere elaborati da Aspose.Words da quelli che non possono. Potresti anche voler sapere perché alcuni dei documenti non possono essere elaborati.

Se si tenta di caricare un file in un oggetto [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) e Aspose.Words non riesce a riconoscere il formato del file o il formato non è supportato, Aspose.Words genererà un'eccezione. È possibile rilevare tali eccezioni e analizzarle, ma Aspose.Words fornisce anche il metodo [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) che consente di determinare rapidamente il formato del file senza caricare un documento con possibili eccezioni. Questo metodo restituisce un oggetto [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/) che contiene le informazioni rilevate sul tipo di file.

{{% alert color="primary" %}}

DetectFileFormat controlla solo il formato del file ma non lo convalida. Non vi è alcuna garanzia che il file venga aperto correttamente, anche se **DetectFileFormat** restituisce che è uno dei formati supportati. Questo perché il metodo **DetectFileFormat** legge solo i dati parziali del formato del file, sufficienti per controllare il formato del file, ma non sufficienti per la convalida completa.

{{% /alert %}}

## Verifica la compatibilità dei formati dei file

Possiamo verificare la compatibilità dei formati di tutti i file nella cartella selezionata e ordinarli per formato nelle sottocartelle corrispondenti.

Poiché abbiamo a che fare con il contenuto di una cartella, la prima cosa che dobbiamo fare è ottenere una raccolta di tutti i file in questa cartella usando il metodo **GetFiles** della classe `Directory` (dallo spazio dei nomi `System.IO`).

Il seguente esempio di codice mostra come ottenere un elenco di tutti i file nella cartella:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Quando tutti i file vengono raccolti, il resto del lavoro viene eseguito con il metodo **DetectFileFormat**, che controlla il formato del file.

L'esempio di codice seguente mostra come scorrere l'elenco di file raccolti, controllare il formato di ciascun file e spostare ciascun file nella cartella appropriata:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

I file vengono spostati in sottocartelle appropriate utilizzando il metodo `Move` della classe `File`, dallo stesso spazio dei nomi `System.IO`.

I seguenti file vengono utilizzati nell'esempio precedente. Il nome del file è a sinistra e la sua descrizione è a destra:

| Gruppo di file | Documento di input | Tipo |
| :- | :- | :- |
| Formati di file supportati | Test File (DOC).doc | Microsoft Word 95 / 6.0 o Microsoft Word 97 – documento del 2003. |
|  | Test File (DOT).dot | Microsoft Word 95 / 6.0 o Microsoft Word 97 – modello 2003. |
|  | Test File (DOCX).docx | Office Open XML WordprocessingML documento senza macro. |
|  | Test File (DOCM).docm | Office Open XML WordprocessingML documento con macro. |
|  | Test File (DOTX).dotx | Modello Open XML WordprocessingML di Office. |
|  | Test File (DOTM).dotm | Office Open XML WordprocessingML modello con macro. |
|  | Test File (XML).xml | Documento FlatOPC OOXML. |
|  | Test File (RTF).rtf | Documento in formato RTF. |
|  | Test File (WordML).xml | Microsoft Word 2003 Documento WordprocessingML. |
|  | Test File (HTML).html | Documento HTML. |
|  | Test File (MHTML).mhtml | Documento MHTML (archivio Web). |
|  | Test File (ODT).odt | OpenDocument Testo (OpenOffice Scrittore). |
|  | Test File (OTT).ott | OpenDocument Modello di documento. |
|  | File di prova (DocPreWord 60).doc | Microsoft Word 2.0 documento. |
| Documenti crittografati | Test File (Enc).doc | Documento crittografato Microsoft Word 95 / 6.0 o Microsoft Word 97 – 2003. |
|  | Test File (Enc).docx | Documento crittografato Office Open XML WordprocessingML. |
| Formati di file non supportati | Test File (JPG).jpg | File immagine JPEG. |

