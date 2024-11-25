---
title: Utilizzo della sillabazione in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con la sillabazione
linktitle: Lavorare con la sillabazione
description: "Utilizzare la sillabazione per una disposizione più compatta del testo. Fornisce algoritmi avanzati per lavorare con dizionari di sillabazione, utilizza dizionari OpenOffice usando Java."
type: docs
weight: 220
url: /it/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

A volte è necessario utilizzare la sillabazione per una disposizione più compatta del testo in un documento. Allo stesso tempo, è importante capire che le specifiche della sillabazione delle parole possono differire per ogni lingua.

Al momento attuale, la sillabazione non è usata così spesso come una volta, specialmente nei testi inglesi. Tuttavia, l'uso di questa funzione può avere un grave impatto sui documenti dell'utente: la sillabazione influisce sul layout e, di conseguenza, sull'aspetto dei file di output, ad esempio nel formato PDF.

Per una corretta suddivisione delle parole, vengono utilizzati dizionari di sillabazione specifici della lingua. Aspose.Words utilizza algoritmi avanzati per lavorare con tali dizionari e consente di ottenere la stessa sillabazione di Microsoft Word.

## Dizionari di sillabazione

Poiché lingue diverse utilizzano norme e regole diverse per la sillabazione delle parole, la soluzione ottimale per la corretta sillabazione è utilizzare dizionari speciali. Aspose.Words utilizza dizionari OpenOffice.

Per il controllo ortografico, OpenOffice utilizza [Hunspell biblioteca](https://hunspell.github.io/), che è una generalizzazione dell'algoritmo di sillabazione di TeX. Questo algoritmo consente la sillabazione automatica non standard utilizzando modelli di sillabazione standard e personalizzati concorrenti. Hunspell utilizza il [Trattino](https://github.com/hunspell/hyphen) per la sillabazione.

{{% alert color="primary" %}}

I dizionari di sillabazione possono essere presi dal [LibreOfficedizionari GitHub](https://github.com/LibreOffice/dictionaries). Biru, [it - US dizionario di sillabazione](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Poiché Microsoft Word utilizza dizionari diversi dai dizionari OpenOffice per eseguire la sillabazione, la sillabazione di alcune parole definite dai dizionari OpenOffice può differire dalla sillabazione Microsoft Word. Per questo motivo, a volte dobbiamo consigliare ai clienti di aggiungere i modelli necessari ai loro dizionari per correggere la sillabazione di parole particolari.

{{% /alert %}}

## Algoritmo di sillabazione

Aspose.Words implementa [l'algoritmo di sillabazione TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) e può riutilizzare i dizionari di sillabazione OpenOffice.

Le seguenti caratteristiche degli algoritmi Aspose.Words dovrebbero essere prese in considerazione:

* Parametri distanza sillabazione (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) specificati nel dizionario di sillabazione vengono ignorati. Aspose.Words utilizza un proprio set di parametri di distanza a seconda della modalità di compatibilità del documento.
* L'algoritmo di sillabazione in Aspose.Words supporta [sillabazione composita](https://github.com/hunspell/hyphen/blob/master/README.compound). Tuttavia, Aspose.Words suddivide sequenze di caratteri contenenti caratteri misti alfabetici e non alfabetici in parti solo alfabetiche (parole) e le sillabano separatamente.
  Si noti che la logica Microsoft Word della sillabazione delle parole composte dipende dalla modalità di compatibilità del documento.
* L'algoritmo di sillabazione in Aspose.Words non implementa [sillabazione non standard](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). I modelli non standard vengono ignorati.

## Caricamento dizionari di sillabazione

Per utilizzare la funzione di sillabazione, prima registrare un dizionario di sillabazione.L'esempio di codice seguente mostra come caricare dizionari di sillabazione per le lingue specificate da un file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

L'esempio di codice seguente mostra come caricare dizionari di sillabazione per la lingua specificata da un flusso:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

In alternativa alla pre-registrazione dei dizionari di sillabazione, è possibile registrare solo i dizionari di sillabazione richiesti "su richiesta". Per ottenere ciò, implementare l'interfaccia [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) e utilizzare il callback statico [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

Il seguente esempio di codice mostra come implementare l'interfaccia **IHyphenationCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Impatto della sillabazione sul layout

Quando si suddivide il testo in righe, Aspose.Words controlla che ogni parola si adatti completamente alla riga corrente. Se un'altra parola è troppo lunga per essere inserita alla fine della riga, per impostazione predefinita Aspose.Words la sposta all'inizio della riga successiva invece di sillabarla.

Tuttavia, la funzione di sillabazione può essere utilizzata in Aspose.Words per inserire trattini in parole per eliminare le lacune nel testo giustificato o per mantenere una lunghezza di riga uniforme in colonne strette. Questo può ovviamente influenzare il numero di righe e quindi il numero di pagine. In altre parole, l'utilizzo della funzione di sillabazione influisce sul layout del documento.

## Sillabazione e giustificazione (H & J)

Microsoft Word ha una logica complessa per la scelta di un punto di interruzione se il testo è giustificato e la sillabazione è abilitata. In breve, Microsoft Word potrebbe preferire ridurre o allungare gli spazi per evitare la sillabazione della linea. Molto probabilmente questa logica si basa su [Articolo di Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementa il proprio algoritmo H & J che fornisce lo stesso risultato di Microsoft Word e fornisce un'interruzione di riga identica nel documento di output.

## Vedi anche

* [Trattino-libreria di sillabazione](https://github.com/hunspell/hyphen/blob/master/README)
* [Sillabazione non standard](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Sillabazione automatica non standard in Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
