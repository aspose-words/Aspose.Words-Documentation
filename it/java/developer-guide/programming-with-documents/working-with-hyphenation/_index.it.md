---
title: Lavorare con Hyphenation in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Hyphenation
linktitle: Lavorare con Hyphenation
description: "Utilizzare l'ifenazione per una disposizione più compatta del testo. Esso fornisce algoritmi avanzati per lavorare con dizionari di trattinamento, usa dizionari OpenOffice utilizzando Java."
type: docs
weight: 220
url: /it/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

A volte è necessario usare l'ifenazione per una disposizione più compatta del testo in un documento. Allo stesso tempo, è importante capire che le specifiche di parola trattino possono differire per ogni lingua.

Al momento, l'ifenazione non è usata tanto spesso come era, soprattutto nei testi inglesi. Tuttavia, l'uso di questa funzione può avere un impatto serio sui documenti dell'utente – l'ifenazione colpisce il layout e, di conseguenza, l'aspetto dei file di output, per esempio, in formato PDF.

Per una corretta scissione di parole, vengono utilizzati dizionari di trattinamento linguistico-specifico. Aspose.Words utilizza algoritmi avanzati per lavorare con tali dizionari e consente di ottenere la stessa trattina come in Microsoft Word.

## Dizionari di Hyphenation

Poiché diverse lingue usano norme e regole diverse per l'enfeazione delle parole, la soluzione ottimale per una corretta effusione è quella di usare dizionari speciali. Aspose.Words usa dizionari OpenOffice.

Per il controllo ortografico, OpenOffice utilizza il [Hunspell biblioteca](https://hunspell.github.io/), che è una generalizzazione dell'algoritmo di trattino di TeX. Questo algoritmo consente l'enfanazione automatica non standard utilizzando modelli di trattinamento standard e personalizzati concorrenti. Hunspell utilizza il [Hyphen](https://github.com/hunspell/hyphen) per l'ansia.

{{% alert color="primary" %}}

I dizionari di Hyphenation possono essere presi dai [LibreOffice Segnalazioni GitHub](https://github.com/LibreOffice/dictionaries). Per esempio, [en-US hyphenation dizionario](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Come? Microsoft Word dizionari usa diversi dai dizionari di OpenOffice per eseguire l'ifenazione, l'ifenazione di alcune parole definite dai dizionari di OpenOffice può differire da Microsoft Word ifenazione. Per questo motivo, a volte dobbiamo consigliare ai clienti di aggiungere i modelli necessari ai loro dizionari al fine di fissare l'ifenazione di parole particolari.

{{% /alert %}}

## Algoritmo di Hyphenation

Aspose.Words strumenti [L'Europa Isofferenza di TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) e può riutilizzare i dizionari di ansia OpenOffice.

Le seguenti caratteristiche Aspose.Words dovrebbero essere presi in considerazione gli algoritmi:

* Parametri di distanza dell'iphenation (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) specificato nel dizionario di trattinamento sono ignorati. Aspose.Words utilizza il proprio set di parametri di distanza a seconda della modalità di compatibilità del documento.
* # L'algoritmo di trattino Aspose.Words Supporti [Trasferimenti](https://github.com/hunspell/hyphen/blob/master/README.compound). Tuttavia, Aspose.Words divide le sequenze di caratteri contenenti caratteri alfabetici e non alfabetici misti in parti solo alfabetico (parole) e le trattiene separatamente.
  Nota: Microsoft Word logica di trattino di parole composte dipende dalla modalità di compatibilità dei documenti.
* # L'algoritmo di trattino Aspose.Words non implementare [non standard](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). I modelli non standard sono ignorati.

## Caricamento dei dittari di Hyphenation

Per utilizzare la funzione di trattinamento, prima registrare un dizionario di trattinamento. Il seguente esempio di codice mostra come caricare dizionari di trattinamento per le lingue specificate da un file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Il seguente esempio di codice mostra come caricare dizionari di trattinamento per la lingua specificata da un flusso:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Come alternativa ai dizionari pre-registranti dell'ifenazione, è possibile registrare solo i dizionari di anfeazione richiesti "per richiesta". Per raggiungere questo obiettivo, implementare [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) interfaccia e utilizzare il callback statico [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

Il seguente esempio di codice mostra come implementare il **IHyphenationCallback** interfaccia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Impatto di Hyphenation su Layout

Quando si rompe il testo in righe, Aspose.Words controlla ogni parola se si inserisce completamente nella linea corrente. Se un'altra parola è troppo lunga per adattarsi alla fine della riga, per impostazione predefinita Aspose.Words lo sposta all'inizio della linea successiva invece di annusarla.

Tuttavia, la funzione di trattinamento può essere utilizzata in Aspose.Words inserire i trattini in parole per eliminare le lacune nel testo giustificato o per mantenere una lunghezza uniforme della linea in colonne strette. Questo può ovviamente influenzare il numero di righe e quindi il numero di pagine. In altre parole, utilizzando la funzione di trattinamento influisce sul layout del documento.

## Hyphenation and Justification (H&J)

Microsoft Word ha una logica complessa per la scelta di un punto di rottura se il testo è giustificato e l'ansia è abilitata. In breve, Microsoft Word può preferire a restringere o allungare gli spazi per evitare l'ifenazione della linea. Molto probabilmente questa logica si basa su [L'articolo di Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementa il proprio algoritmo H&J che dà lo stesso risultato di Microsoft Word e fornisce la rottura della riga identica nel documento di uscita.

## Vedi anche

* [Hyphen libreria – di tratti](https://github.com/hunspell/hyphen/blob/master/README)
* [Isofferenza non standard](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Ifenazione automatica non standard in Ufficio aperto](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
