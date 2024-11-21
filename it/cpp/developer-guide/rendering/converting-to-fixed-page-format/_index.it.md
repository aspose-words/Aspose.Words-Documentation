---
title: Conversione in formato a pagina fissa in C++
second_title: Aspose.Words per C++
articleTitle: Conversione in formato a pagina fissa
linktitle: Conversione in formato a pagina fissa
description: "Salva i documenti nei formati PDF, XPS, HTML, XAML, PostScript e PCL."
type: docs
weight: 10
url: /it/cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words implementa il proprio motore di layout di pagina. Prima di approfondire le sue specifiche, vale la pena di discutere prima documento ad alto livello.

## Cos'è un documento?

Quando si pensa a un documento, gli utenti in genere immaginano un numero di fogli di carta contenenti parole, immagini, tabelle e grafici. I documenti possono essere di vario tipo, come testo, fogli di calcolo, diapositive, disegni CAD, diagrammi di flusso e, quindi, possono avere layout essenzialmente diversi. La maggior parte delle applicazioni consente l'invio di documenti a una stampante; questo è quando un utente può effettivamente visualizzare l'aspetto finale previsto del documento.

## Visualizzazione di un documento in varie applicazioni

Varie applicazioni di visualizzazione o pubblicazione di documenti consentono agli utenti di aprire (Adobe Acrobat, XPS Viewer) e talvolta modificare (Adobe InDesign) documenti di formati specifici. Queste applicazioni producono in genere i cosiddetti documenti in formato "pagina fissa". Tale formato di documento descrive esattamente dove il contenuto di un documento è posto su ogni pagina. Internamente, il formato PDF o XPS contiene una descrizione di ogni pagina, nonché istruzioni di disegno, specificando il layout del contenuto della pagina. Questo è simile ai formati di immagine, che descrivono dove il contenuto viene mostrato in forma raster o vettoriale.

Al contrario, alcune applicazioni di modifica del testo non supportano la visualizzazione delle pagine di un documento. Ad esempio, Microsoft Notepad supporta pochissime funzioni oltre alla semplice visualizzazione, modifica e stampa del testo. L'osservazione importante qui è che tali applicazioni non possono né mostrare pagine del documento né dire a un utente quante di esse verrebbero stampate, consentendo solo di visualizzare il contenuto del documento. Il documento può essere salvato in formato testo normale e può essere aperto da molte altre applicazioni. Utilizzando un'applicazione che consente di visualizzare il contenuto binario di un file arbitrario si può vedere ciò che è memorizzato nel file del documento – è solo testo semplice, non c'è nient'altro in esso.

Le applicazioni di modifica del testo leggermente più sofisticate, come Microsoft WordPad, salvano il documento in RTF (Rich Text Format), che supporta più funzioni di formattazione, come l'inserimento di immagini, la formattazione dei caratteri, i margini dei paragrafi e la spaziatura. Tuttavia, il formato RTF contiene anche solo il contenuto del documento, non avendo informazioni sulle pagine.

Microsoft Word è l'applicazione di modifica del testo più avanzata in Windows oggi. Formatta i file nel formato DOCX, che descrive il contenuto del documento in modo flessibile ed esteso, consentendo agli utenti di specificare le dimensioni della pagina, l'orientamento per una sezione del documento e, essendo un'applicazione WYSIWYG, mostra anche le pagine del documento sullo schermo. Tuttavia, non ci sono ancora informazioni su come il contenuto del documento viene visualizzato nelle pagine disponibili nel file del documento. Il file documento descrive solo il contenuto stesso e la relazione degli oggetti documento tra loro, insieme ad alcuni vincoli geometrici. Di conseguenza, prima di visualizzare un documento, Microsoft Word calcola l'informazione stessa. È qui che entra in gioco un layout di pagina.

## Vedi anche

* [Cos'è un layout di pagina](/words/cpp/what-is-a-page-layout/)
* [Creazione di un layout di pagina](/words/cpp/creating-a-page-layout/)
* [Salvataggio di un documento in formato a pagina fissa](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Specificare le opzioni di layout](/words/cpp/specify-layout-options/)
