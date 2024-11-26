---
title: Rendering in Java
second_title: Aspose.Words per Java
articleTitle: Rendering
linktitle: Rendering
description: "Utilizzare la funzione di rendering Aspose.Words per Java per formattare un documento di layout di flusso in pagine e convertire tale documento o le pagine selezionate in un altro documento (PDF, HTML, XPS, ecc.) o immagine (TIFF, PNG, SVG, ecc.) formati per la visualizzazione, ulteriori conversioni o la stampa."
type: docs
weight: 30
url: /it/java/rendering/
timestamp: 2024-01-27-14-07-04
---

Usiamo il termine "rendering" in Aspose.Words per descrivere il processo di conversione di un documento in un formato di file o un supporto impaginato o con il concetto di pagine. Stiamo parlando del rendering di un documento in pagine. Il diagramma seguente mostra il rendering in Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Le funzionalità di rendering di Aspose.Words consentono di eseguire le seguenti operazioni:

- Convertire un documento o pagine selezionate in PDF, XPS, HTML, XAML, PostScript, formati PCL.
- Converti un documento in un documento a più pagine TIFF o converti qualsiasi pagina in un'immagine raster e salvala come BMP, PNG o JPEG.
- Convertire una pagina di documento in un'immagine grafica vettoriale scalabile (SVG), oppure convertirla in un'immagine vettoriale e salvarla come EMF.
- Renderizzare (disegnare) una pagina del documento con una dimensione o una scala specifica sull'oggetto `Graphics` per creare miniature, immagini a grandezza naturale o in scala delle pagine del documento.
- Eseguire il rendering di un oggetto [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) separatamente dal documento in qualsiasi formato immagine o in un oggetto `Graphics`.
- Visualizzare qualsiasi pagina di un documento in un componente Swing.
- Stampare o visualizzare in anteprima le pagine del documento utilizzando l'infrastruttura di stampa standard Java.

## Formati di documento a layout di flusso o a layout fisso {#flow-layout-or-fixed-layout-document-formats}

La maggior parte dei formati di documento che possono essere caricati in Aspose.Words sono noti come formati "flow-layout". I formati Flow-layout includono DOC, OOXML, RTF, ODT, e HTML. I documenti in questi formati sono costituiti da vari elementi come paragrafi, tabelle, intestazioni, piè di pagina, immagini, campi e la loro formattazione, ad esempio grassetto, corsivo, carattere, dimensione. Tuttavia, i formati di layout di flusso non contengono informazioni sulla posizione in cui ogni particolare paragrafo o carattere viene visualizzato in una pagina.

Al contrario, i formati" fixed-layout "(noto anche come" pagina fissa") come PDF e XPS contengono informazioni di posizionamento esatte per tutti gli elementi del documento. Questi formati conservano l'aspetto originale di un documento dopo che è stato disposto in pagine, fornendo una maggiore precisione delle informazioni visualizzate.

## Motore di layout di pagina {#page-layout-engine}

Aspose.Words implementa il proprio motore di layout di pagina che formatta un documento di layout di flusso in pagine. Aspose.Words implementa un numero di renderer che producono un documento a layout fisso, ad esempio PDF o XPS, o pagine di output in un altro supporto, ad esempio la stampa o il disegno. Si noti che l'esportazione può anche essere impaginata per HTML e XAML. Ciò significa che un documento può essere salvato come normale HTML o XAML (formato flow-layout), o come "impaginato" HTML e XAML che presentano posizioni assolute di elementi.

Il vantaggio più importante dell'utilizzo del motore di layout di pagina Aspose.Words è che imita il modo in cui funziona il motore di layout di pagina di Microsoft Word. Pertanto, quando converti un documento Microsoft Word in PDF, XPS o lo stampi usando Aspose.Words, l'output apparirà quasi esattamente come se fosse stato fatto da Microsoft Word. Si noti che Aspose.Words non utilizza Microsoft Word.
