---
title: Lavorare con documenti di testo in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con documenti di testo
linktitle: Lavorare con documenti di testo
description: "Elaborazione avanzata di documenti TXT, elenchi, BiDi, intestazioni/piè di pagina, utilizzando C#."
type: docs
weight: 430
url: /it/net/working-with-text-document/
---

In questo articolo impareremo quali opzioni possono essere utili per lavorare con un documento di testo tramite Aspose.Words. Tieni presente che questo non è un elenco completo delle opzioni disponibili, ma solo un esempio di come lavorare con alcune di esse.

## Aggiungi indicatori bidirezionali

È possibile utilizzare la proprietà [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) per specificare se aggiungere contrassegni bidirezionali prima di ogni esecuzione BiDi durante l'esportazione in formato testo normale. Aspose.Words inserisce il carattere Unicode 'SEGNO DA DESTRA A SINISTRA' (U+200F) prima di ogni sequenza bidirezionale nel testo. Questa opzione corrisponde all'opzione "Aggiungi segni bidirezionali" nella finestra di dialogo Conversione file MS Word quando esporti in un formato di testo normale. Tieni presente che appare nel dialogo solo se in MS Word viene aggiunta una delle lingue di modifica araba o ebraica.

Nell'esempio di codice seguente viene illustrato come utilizzare la proprietà **AddBidiMarks**. Il valore predefinito di questa proprietà è *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Riconoscere gli elementi dell'elenco durante il caricamento di TXT

Aspose.Words può importare voci di elenco di un file di testo come numeri di elenco o testo semplice nel suo modello di oggetti di documento. La proprietà [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) consente di specificare il modo in cui vengono riconosciuti gli elementi dell'elenco numerato quando un documento viene importato dal formato testo normale:

* Se questa opzione è impostata su *true*, gli spazi vengono utilizzati anche come delimitatori dei numeri dell'elenco: l'algoritmo di riconoscimento dell'elenco per la numerazione in stile arabo (1., 1.1.2.) utilizza sia gli spazi che i simboli punto (".").

* Se questa opzione è impostata su *false*, l'algoritmo di riconoscimento degli elenchi rileva i paragrafi dell'elenco, quando i numeri dell'elenco terminano con un punto, una parentesi chiusa o un simbolo di punto elenco (come "•", "*", "-" o "o").

L'esempio di codice seguente mostra come utilizzare questa proprietà:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Gestire gli spazi iniziali e finali durante il caricamento di TXT

È possibile controllare il modo di gestire gli spazi iniziali e finali durante il caricamento del file TXT. Gli spazi iniziali potrebbero essere tagliati, conservati o convertiti in rientro e gli spazi finali potrebbero essere tagliati o conservati.

L'esempio di codice seguente mostra come tagliare gli spazi iniziali e finali durante l'importazione del file TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Rileva la direzione del testo del documento

Aspose.Words fornisce la proprietà [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) nella classe [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) per rilevare la direzione del testo (RTL/LTR) nel documento. Questa proprietà imposta o ottiene le indicazioni del testo del documento fornite nell'enumerazione [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/). Il valore predefinito è lasciato a *right*.

Il seguente esempio di codice mostra come rilevare la direzione del testo del documento durante l'importazione del file TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Esporta intestazione e piè di pagina nell'output TXT

Se desideri esportare intestazione e piè di pagina nel documento TXT di output, puoi utilizzare la proprietà [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/). Questa proprietà specifica il modo in cui le intestazioni e i piè di pagina vengono esportati nel formato testo normale.

L'esempio di codice seguente mostra come esportare intestazioni e piè di pagina in formato testo semplice:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Rientro dell'elenco di esportazione nell'output TXT

Aspose.Words ha introdotto la classe [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) che consente di specificare come vengono rientrati i livelli dell'elenco durante l'esportazione in un formato di testo normale. Mentre si lavora con [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/), viene fornita la proprietà [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) per specificare il carattere da utilizzare per il rientro dei livelli dell'elenco e il conteggio specificando quanti caratteri utilizzare come rientro per un livello dell'elenco.

Il valore predefinito per la proprietà carattere è '\0' che indica che non è presente alcun rientro. Per la proprietà count, il valore predefinito è 0, il che significa nessun rientro.

### Utilizzo del carattere di tabulazione

Il seguente esempio di codice mostra come esportare i livelli di elenco utilizzando i caratteri di tabulazione:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Utilizzo del carattere spaziale

Il seguente esempio di codice mostra come esportare i livelli di elenco utilizzando i caratteri spazio:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Utilizzo del rientro predefinito

Il seguente esempio di codice mostra come esportare i livelli di elenco utilizzando il rientro predefinito:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
