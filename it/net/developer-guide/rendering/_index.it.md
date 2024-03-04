---
title: Rendering in C#
second_title: Aspose.Words per .NET
articleTitle: Rendering
linktitle: Rendering
description: "Utilizzare la funzionalità di rendering Aspose.Words per .NET per formattare un documento con layout di flusso in pagine e convertire tale documento o le pagine selezionate in altri formati di documenti (PDF, HTML, XPS, ecc.) o immagini (TIFF, PNG, SVG, ecc.) per visualizzazione, ulteriori conversioni o stampa utilizzando C#."
type: docs
weight: 20
url: /it/net/rendering/
---

Usiamo il termine "rendering" in Aspose.Words per descrivere il processo di conversione di un documento in un formato di file o in un supporto impaginato o che ha il concetto di pagine. Stiamo parlando del rendering di un documento in pagine. Il diagramma seguente mostra cos'è il rendering in Aspose.Words.

![rendering_aspose-words](/words/net/rendering/rendering-1.png)

Le funzionalità di rendering di Aspose.Words consentono di eseguire quanto segue:

- Converti un documento o le pagine selezionate nei formati PDF, XPS, HTML, XAML, PostScript e PCL.
- Converti un documento in un documento TIFF multipagina o converti qualsiasi pagina in un'immagine raster e salvala come BMP, PNG o JPEG.
- Converti una pagina di documento in un'immagine grafica vettoriale scalabile (SVG) oppure convertila in un'immagine vettoriale e salvala come EMF.
- Visualizza (disegna) una pagina di documento con una dimensione o scala specifica sull'oggetto Grafica .NET per creare miniature, immagini a grandezza naturale o in scala delle pagine del documento.
- Renderizza un oggetto [Shape](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/) separatamente dal documento in qualsiasi formato immagine o in un oggetto grafico .NET.
- Visualizza qualsiasi pagina di un documento in un modulo Windows.
- Stampa o visualizza in anteprima le pagine del documento utilizzando l'infrastruttura di stampa .NET standard.

## Formati documento a layout flusso o a layout fisso {#flow-layout-or-fixed-layout-document-formats}

La maggior parte dei formati di documenti che possono essere caricati in Aspose.Words sono noti come formati di "layout di flusso". I formati di layout del flusso includono DOC, OOXML, RTF, ODT e HTML. I documenti in questi formati sono costituiti da vari elementi come paragrafi, tabelle, intestazioni, piè di pagina, immagini, campi e la loro formattazione, ad esempio grassetto, corsivo, carattere, dimensione. Tuttavia, i formati di layout del flusso non contengono informazioni sulla posizione in cui ogni particolare paragrafo o carattere viene visualizzato su una pagina.

Al contrario, i formati a "layout fisso" (noti anche come "pagina fissa") come PDF e XPS contengono informazioni sul posizionamento esatto di tutti gli elementi del documento. Questi formati preservano l'aspetto originale di un documento dopo che è stato suddiviso in pagine, garantendo una maggiore precisione delle informazioni visualizzate.

## Motore di layout di pagina {#page-layout-engine}

Aspose.Words implementa il proprio motore di layout di pagina che formatta un documento di layout di flusso in pagine. Aspose.Words implementa una serie di renderer che producono un documento a layout fisso come PDF o XPS o producono pagine su un altro supporto come la stampa o il disegno. Tieni presente che l'esportazione può anche essere impaginata per HTML e XAML. Ciò significa che un documento può essere salvato come normale HTML o XAML (formato di layout di flusso) oppure come HTML e XAML "paginati" che presentano posizioni assolute degli elementi.

Il vantaggio più importante dell'utilizzo del motore di layout di pagina Aspose.Words è che imita il modo in cui funziona il motore di layout di pagina di Microsoft Word. Pertanto, quando converti un documento Microsoft Word in PDF, XPS o lo stampi utilizzando Aspose.Words, l'output apparirà quasi esattamente come se fosse stato eseguito da Microsoft Word. Tieni presente che Aspose.Words non utilizza Microsoft Word.
