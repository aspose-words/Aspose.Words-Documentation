---
title: Lavorare con la sillabazione in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con la sillabazione
linktitle: Lavorare con la sillabazione
description: "Utilizza la sillabazione per una disposizione più compatta del testo utilizzando Python. Fornisce algoritmi avanzati per lavorare con i dizionari di sillabazione, utilizza i dizionari OpenOffice."
type: docs
weight: 220
url: /it/python-net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

A volte è necessario utilizzare la sillabazione per una disposizione più compatta del testo in un documento. Allo stesso tempo, è importante capire che le specifiche della sillabazione delle parole possono differire per ciascuna lingua.

Attualmente la sillabazione non viene utilizzata così spesso come in passato, soprattutto nei testi inglesi. Tuttavia, l'utilizzo di questa funzionalità può avere un grave impatto sui documenti dell'utente: la sillabazione influisce sul layout e, di conseguenza, sull'aspetto dei file di output, ad esempio in formato PDF.

Per una corretta suddivisione delle parole vengono utilizzati dizionari di sillabazione specifici della lingua. Aspose.Words utilizza algoritmi avanzati per funzionare con tali dizionari e consente di ottenere la stessa sillabazione di Microsoft Word.

## Dizionari di sillabazione

Poiché lingue diverse utilizzano norme e regole diverse per la sillabazione delle parole, la soluzione ottimale per una corretta sillabazione è utilizzare dizionari speciali. Aspose.Words utilizza i dizionari OpenOffice.

Per il controllo ortografico, OpenOffice utilizza [Libreria Hunspell](https://hunspell.github.io/), che è una generalizzazione dell'algoritmo di sillabazione di TeX. Questo algoritmo consente la sillabazione automatica non standard utilizzando modelli di sillabazione standard e personalizzati concorrenti. Hunspell utilizza l'[Trattino](https://github.com/hunspell/hyphen) per la sillabazione.

{{% alert color="primary" %}}

I dizionari di sillabazione possono essere presi dal [Dizionari LibreOffice GitHub](https://github.com/LibreOffice/dictionaries). Ad esempio, [dizionario di sillabazione en-US](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Poiché Microsoft Word utilizza dizionari diversi dai dizionari OpenOffice per eseguire la sillabazione, la sillabazione di alcune parole definite dai dizionari OpenOffice potrebbe differire dalla sillabazione Microsoft Word. Per questo motivo, a volte dobbiamo consigliare ai clienti di aggiungere ai loro dizionari gli schemi necessari per correggere la sillabazione di determinate parole.

{{% /alert %}}

## Algoritmo di sillabazione

Aspose.Words implementa [l'algoritmo di sillabazione di TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) e può riutilizzare i dizionari di sillabazione di OpenOffice.

Dovrebbero essere prese in considerazione le seguenti caratteristiche degli algoritmi Aspose.Words:

* I parametri della distanza di sillabazione (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) specificati nel dizionario di sillabazione vengono ignorati. Aspose.Words utilizza il proprio set di parametri di distanza a seconda della modalità di compatibilità del documento.
* L'algoritmo di sillabazione in Aspose.Words supporta [sillabazione composita](https://github.com/hunspell/hyphen/blob/master/README.compound). Tuttavia, Aspose.Words divide le sequenze di caratteri contenenti caratteri misti alfabetici e non alfabetici in parti solo alfabetiche (parole) e le sillaba separatamente.
  Tieni presente che la logica Microsoft Word della sillabazione delle parole composte dipende dalla modalità di compatibilità del documento.
* L'algoritmo di sillabazione in Aspose.Words non implementa [sillabazione non standard](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). I modelli non standard vengono ignorati.

## Caricamento dei dizionari di sillabazione

Per utilizzare la funzione di sillabazione, registrare prima un dizionario di sillabazione. Il seguente esempio di codice mostra come caricare i dizionari di sillabazione per le lingue specificate da un file:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Il seguente esempio di codice mostra come caricare i dizionari di sillabazione per la lingua specificata da un flusso:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Impatto della sillabazione sul layout

Quando si suddivide il testo in righe, Aspose.Words controlla se ogni parola si adatta completamente alla riga corrente. Se un'altra parola è troppo lunga per stare alla fine della riga, per impostazione predefinita Aspose.Words la sposta all'inizio della riga successiva invece di sillabarla.

Tuttavia, la funzione di sillabazione può essere utilizzata in Aspose.Words per inserire trattini nelle parole per eliminare gli spazi vuoti nel testo giustificato o per mantenere una lunghezza di riga uniforme in colonne strette. Ciò può ovviamente influenzare il numero di righe e quindi il numero di pagine. In altre parole, l'utilizzo della funzione di sillabazione influisce sul layout del documento.

## Sillabazione e giustificazione (H&amp;J)

Microsoft Word ha una logica complessa per la scelta di un punto di interruzione se il testo è giustificato e la sillabazione è abilitata. In breve, Microsoft Word potrebbe preferire ridurre o allungare gli spazi per evitare la sillabazione delle righe. Molto probabilmente questa logica è basata su [L'articolo di Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementa il proprio algoritmo H&amp;J che fornisce lo stesso risultato di Microsoft Word e fornisce interruzioni di riga identiche nel documento di output.

## Guarda anche

* [Trattino – libreria di sillabazione](https://github.com/hunspell/hyphen/blob/master/README)
* [Sillabazione non standard](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Sillabazione automatica non standard in Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
