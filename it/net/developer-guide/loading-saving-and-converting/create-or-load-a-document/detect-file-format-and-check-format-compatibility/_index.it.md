---
title: Rileva il formato del file durante il caricamento
second_title: Aspose.Words per .NET
articleTitle: Rileva il formato del file e verifica la compatibilità del formato
linktitle: Rileva il formato del file e verifica la compatibilità del formato
description: "Determina il formato del file in C# se non sei sicuro del contenuto effettivo del file o per verificare la compatibilità del formato."
type: docs
weight: 20
url: /it/net/detect-file-format-and-check-format-compatibility/
---

A volte è necessario determinare il formato di un documento prima di aprirlo perché l'estensione del file non garantisce che il contenuto del file sia appropriato. Ad esempio, è noto che Crystal Reports spesso restituisce i documenti in formato RTF, ma fornisce loro l'estensione .doc.

Aspose.Words offre la possibilità di ottenere informazioni sul tipo di file per evitare un'eccezione se non si è sicuri di quale sia il contenuto effettivo del file.

## Rileva il formato del file senza eccezioni

Quando hai a che fare con più documenti in vari formati di file, potrebbe essere necessario separare i file che possono essere elaborati da Aspose.Words da quelli che non possono. Potresti anche voler sapere perché alcuni documenti non possono essere elaborati.

Se tenti di caricare un file in un oggetto [Document](https://reference.aspose.com/words/it/net/aspose.words/document/) e Aspose.Words non riesce a riconoscere il formato del file o il formato non è supportato, Aspose.Words genererà un'eccezione. Puoi catturare queste eccezioni e analizzarle, ma Aspose.Words fornisce anche il metodo [DetectFileFormat](https://reference.aspose.com/words/it/net/aspose.words/fileformatutil/detectfileformat/) che ci consente di determinare rapidamente il formato del file senza caricare un documento con possibili eccezioni. Questo metodo restituisce un oggetto [FileFormatInfo](https://reference.aspose.com/words/it/net/aspose.words/fileformatinfo/) che contiene le informazioni rilevate sul tipo di file.

{{% alert color="primary" %}}

DetectFileFormat controlla solo il formato file ma non convalida il formato file. Non vi è alcuna garanzia che il file venga aperto correttamente, anche se **DetectFileFormat** restituisce che si tratta di uno dei formati supportati. Ciò è dovuto al fatto che il metodo **DetectFileFormat** legge solo dati parziali sul formato del file, sufficienti per verificare il formato del file, ma non sufficienti per la convalida completa.

{{% /alert %}}

## Controlla la compatibilità del formato dei file

Possiamo verificare la compatibilità del formato di tutti i file nella cartella selezionata e ordinarli per formato nelle sottocartelle corrispondenti.

Dato che abbiamo a che fare con il contenuto di una cartella, la prima cosa che dobbiamo fare è ottenere una raccolta di tutti i file di questa cartella utilizzando il metodo **GetFiles** della classe `Directory` (dal namespace `System.IO`).

L'esempio di codice seguente mostra come ottenere un elenco di tutti i file nella cartella:

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "get-files-in-folder.cs" >}}

Una volta raccolti tutti i file, il resto del lavoro viene svolto dal metodo **DetectFileFormat**, che controlla il formato del file.

Il seguente esempio di codice mostra come scorrere l'elenco raccolto di file, controllare il formato di ciascun file e spostare ciascun file nella cartella appropriata:

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "check-format-compatibility.cs" >}}

I file vengono spostati in apposite sottocartelle utilizzando il metodo `Move` della classe `File`, dallo stesso namespace `System.IO`.

Nell'esempio precedente vengono utilizzati i seguenti file. Il nome del file è a sinistra e la sua descrizione è a destra:

| Group di file | Documento di input | Tipo |
|  :-  |  :-  |  :-  |
| Formati di file supportati | File di prova (Doc).doc | Documento Microsoft Word 95/6.0 o Microsoft Word 97 – 2003. |
| | File di prova (`Dot`).dot | Modello Microsoft Word 95/6.0 o Microsoft Word 97 – 2003. |
| | File di prova (Docx).docx | Documento Office Open XML WordprocessingML senza macro. |
| | File di prova (Docm).docm | Documento Office Open XML WordprocessingML con macro. |
| | File di prova (Dotx).dotx | Modello Office Open XML WordprocessingML. |
| | File di prova (Dotm).dotm | Modello Office Open XML WordprocessingML con macro. |
| | File di prova (XML).xml | Documento OOXML FlatOPC. |
| | File di prova (RTF).rtf | Documento in formato Rich Text. |
| | File di prova (WordML).xml | Documento Microsoft Word 2003 WordprocessingML. |
| | File di prova (HTML).html | Documento HTML. |
| | File di prova (MHTML).mhtml | Documento MHTML (archivio Web). |
| | File di prova (Odt).odt | Testo OpenDocument (OpenOffice Writer). |
| | File di prova (Ott).ott | Modello di documento OpenDocument. |
| | File di prova (DocPreWord60).doc | Documento Microsoft Word 2.0. |
| Documenti crittografati | File di prova (Enc).doc | Documento crittografato Microsoft Word 95/6.0 o Microsoft Word 97 – 2003. |
| | File di prova (Enc).docx | Documento Office Open XML WordprocessingML crittografato. |
| Formati di file non supportati | File di prova (JPG).jpg | File immagine JPEG. |

