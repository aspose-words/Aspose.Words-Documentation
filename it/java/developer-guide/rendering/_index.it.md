---
title: Rendering in Java
second_title: Aspose.Words per Java
articleTitle: Rendering
linktitle: Rendering
description: "Uso Aspose.Words per Java funzione di rendering per formattare un documento di flusso-layout in pagine e convertire un documento o pagine selezionate in un altro documento (PDF, HTML, XPS, ecc.) o formati di immagine (TIFF, PNG, SVG, ecc.) per la visualizzazione, ulteriori conversioni, o la stampa."
type: docs
weight: 30
url: /it/java/rendering/
timestamp: 2024-01-27-14-07-04
---

Usiamo il termine "rendering" in Aspose.Words per descrivere il processo di conversione di un documento in un formato di file o un mezzo che è impaginato o ha il concetto di pagine. Stiamo parlando del rendering di un documento in pagine. Il seguente diagramma mostra ciò che il rendering è in Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Le caratteristiche di rendering Aspose.Words consente di eseguire le seguenti operazioni:

- Convertire un documento o pagine selezionate in PDF, XPS, HTML, XAML, PostScript e formati PCL.
- Convertire un documento in un documento TIFF di più pagine, o convertire qualsiasi pagina in un'immagine raster e salvarlo come BMP, PNG o JPEG.
- Convertire una pagina di documento in un'immagine grafica vettoriale scalabile (SVG), o convertire in un'immagine vettoriale e salvarla come EMF.
- Render (disegnare) una pagina di documento a una dimensione specifica o scala su `Graphics` oggetto per creare miniature, immagini a grandezza naturale o scalate delle pagine dei documenti.
- Render a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) oggetto separatamente dal documento a qualsiasi formato di immagine o ad un `Graphics` oggetto.
- Visualizzare qualsiasi pagina di un documento in un componente Swing.
- Stampa o anteprima le pagine dei documenti utilizzando lo standard Java infrastruttura di stampa.

## Flusso-layout o Fixed-layout Formati del documento {#flow-layout-or-fixed-layout-document-formats}

La maggior parte dei formati di documento che possono essere caricati in Aspose.Words sono noti come formati "flow-layout". I formati Flow-layout includono DOC, OOXML, RTF, ODT e HTML. I documenti in questi formati sono costituiti da vari elementi come paragrafi, tabelle, intestazioni, piè di pagina, immagini, campi, e la loro formattazione, per esempio, grassetto, italico, carattere, dimensione. Tuttavia, i formati di flusso-layout non contengono informazioni sulla posizione in cui ogni particolare paragrafo o carattere viene visualizzato su una pagina.

Al contrario, il "fixed-layout" (noto anche come "pagina fissa") formati come PDF e XPS contengono informazioni di posizionamento esatte per tutti gli elementi di documento. Questi formati conservano l'aspetto originale di un documento dopo che è stato definito in pagine, fornendo una maggiore accuratezza delle informazioni visualizzate.

## Pagina Motore di layout {#page-layout-engine}

Aspose.Words implementa il proprio motore di layout di pagina che formatta un documento di flusso-layout nelle pagine. Aspose.Words implementa un certo numero di rendering che o producono un documento fisso-layout come PDF o XPS, o pagine di output in un altro mezzo come la stampa o il disegno. Si noti che l'esportazione può anche essere impaginato per HTML e XAML. Ciò significa che un documento può essere salvato come HTML regolare o XAML (formato di flusso-layout), o come HTML "paginato" e XAML che dispongono di posizioni assolute di elementi.

Il vantaggio più importante di utilizzare Aspose.Words il motore di layout della pagina è che imita il modo Microsoft WordIl motore di layout della pagina funziona. Pertanto, quando si converte un Microsoft Word documento in PDF, XPS, o stamparlo usando Aspose.Words, l'output apparirà quasi esattamente come se fosse stato fatto da Microsoft Word. Nota: Aspose.Words non utilizzare Microsoft Word.
