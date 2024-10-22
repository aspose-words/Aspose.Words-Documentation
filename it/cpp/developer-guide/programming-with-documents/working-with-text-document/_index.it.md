---
title: Lavorare con un documento di testo in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con il documento di testo
linktitle: Lavorare con il documento di testo
description: "Elaborazione avanzata di documenti TXT, elenchi, BiDi, intestazioni/piè di pagina, utilizzando C++."
type: docs
weight: 430
url: /it/cpp/working-with-text-document/
---

In questo articolo, impareremo quali opzioni possono essere utili per lavorare con un documento di testo tramite Aspose.Words. Si prega di notare che questo non è un elenco completo delle opzioni disponibili, ma solo un esempio di lavoro con alcune di esse.

## Aggiungi segni bidirezionali

È possibile utilizzare la proprietà [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) per specificare se aggiungere segni bidirezionali prima di ogni esecuzione di BiDi durante l'esportazione in formato testo normale. Aspose.Words inserisce il carattere Unicode 'SEGNO DA DESTRA A SINISTRA' (U+200F) prima di ogni esecuzione bidirezionale nel testo. Questa opzione corrisponde all'opzione" Aggiungi segni bidirezionali " nel dialogo di conversione di file MS Word quando si esporta in un formato di testo normale. Si noti che appare nel dialogo solo se una delle lingue di modifica in arabo o ebraico viene aggiunta in MS Word.

L'esempio di codice seguente mostra come utilizzare la proprietà **AddBidiMarks**. Il valore predefinito di questa proprietà è *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Riconoscere gli elementi dell'elenco durante il caricamento di TXT

Aspose.Words può importare un elemento di elenco di un file di testo come numeri di elenco o testo normale nel modello a oggetti del documento. La proprietà [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) consente di specificare come gli elementi di elenco numerati vengono riconosciuti quando un documento viene importato dal formato di testo normale:

* Se questa opzione è impostata su *true*, gli spazi bianchi vengono utilizzati anche come delimitatori di numeri di lista: algoritmo di riconoscimento delle liste per la numerazione in stile arabo (1., 1.1.2.) utilizza sia gli spazi bianchi che i simboli dot (".").
* Se questa opzione è impostata su *false*, l'algoritmo di riconoscimento elenchi rileva i paragrafi di elenco, quando i numeri di elenco terminano con simboli punto, parentesi quadre o punto (ad esempio "•", "*", "-" o "o").

Il seguente esempio di codice mostra come utilizzare questa proprietà:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Come gestire gli spazi iniziali e finali durante il caricamento TXT

È possibile controllare il modo di gestire gli spazi iniziali e finali durante il caricamento del file TXT. Gli spazi iniziali potrebbero essere tagliati, conservati o convertiti in rientro e gli spazi finali potrebbero essere tagliati o conservati.

L'esempio di codice seguente mostra come tagliare gli spazi iniziali e finali durante l'importazione del file TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Esporta intestazione e piè di pagina in Output TXT

Se si desidera esportare intestazione e piè di pagina nel documento TXT di output, è possibile utilizzare la proprietà [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). Questa proprietà specifica il modo in cui intestazioni e piè di pagina vengono esportati nel formato di testo normale.

L'esempio di codice seguente mostra come esportare intestazioni e piè di pagina in formato testo normale:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Esportazione rientro elenco in uscita TXT

Aspose.Words ha introdotto la classe [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) che consente di specificare il modo in cui i livelli di elenco vengono indentati durante l'esportazione in un formato di testo normale. Mentre si lavora con [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/), viene fornita la proprietà [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) per specificare il carattere da utilizzare per il rientro dei livelli di elenco e il conteggio che specifica il numero di caratteri da utilizzare come rientro per un livello di elenco.

Il valore predefinito per la proprietà character è '\0 ' che indica che non vi è alcun rientro. Per la proprietà count, il valore predefinito è 0 che significa nessun rientro.

### Utilizzo del carattere di tabulazione

Il seguente esempio di codice mostra come esportare i livelli di elenco utilizzando i caratteri di tabulazione:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Utilizzo del carattere spazio

Il seguente esempio di codice mostra come esportare i livelli di elenco utilizzando caratteri di spazio:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Utilizzo del rientro predefinito

L'esempio di codice seguente mostra come esportare i livelli di elenco utilizzando il rientro predefinito:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
