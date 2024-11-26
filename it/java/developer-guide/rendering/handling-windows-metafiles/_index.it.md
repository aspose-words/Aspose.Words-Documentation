---
title: Gestione Windows Metafile in Java
second_title: Aspose.Words per Java
articleTitle: Gestione dei metafile Windows
linktitle: Gestione dei metafile Windows
description: "Aspose.Words per Java implementa il proprio lettore Metafile Windows per riprodurre il formato Metafile su tutte le piattaforme e supporta la gestione delle funzionalità metafile di base e può eseguire il fallback su un diverso tipo di lettore metafile."
type: docs
weight: 30
url: /it/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows Metafile format è un formato di file immagine che può contenere sia grafica vettoriale che raster. Questo formato viene utilizzato per memorizzare i dati grafici in memoria o file su disco. Un metafile memorizza un elenco di chiamate di funzione nell'interfaccia del dispositivo grafico Windows (GDI) che devono essere eseguite per visualizzare l'immagine sullo schermo. Il sistema interpreta ed esegue questi comandi nel contesto di visualizzazione.

Precedentemente, Windows Metafile era l'unico formato di immagine vettoriale supportato da Microsoft Word. Microsoft Word ora supporta anche il formato SVG, ma il formato metafile è ancora comunemente usato nei documenti Word. Inoltre, Metafile potrebbe essere un formato di interscambio per alcune altre applicazioni, come Microsoft Visio. Essenzialmente, lo scopo principale di Metafile è quello di garantire lo scambio di informazioni grafiche tra Windows applicazioni.

Esistono 3 versioni di Windows Metafile:

- WMF – memorizza la chiamata a 16bit GDI.
- EMF – memorizza la chiamata a Win32 / GDI.
- EMF+ Metafile memorizza la chiamata a GDI+. EMF+ Metafile può anche essere duale, descrivendo la stessa grafica con entrambe le parti EMF e EMF+.

Il problema esistente con Windows Metafile è che non è supportato dalla maggior parte dei formati non Word, in cui i documenti vengono solitamente salvati. Pertanto, è necessario convertire il formato Metafile in altri formati raster o vettoriali. È facile convertire Windows Metafile in un'immagine raster su .NET semplicemente passandolo a GDI+, ma non è possibile su altre piattaforme poiché anche GDI+ non fornisce la funzionalità per estrarre la grafica vettoriale da Metafile. Per risolvere questi problemi, Aspose.Words implementa il proprio lettore Metafile Windows, che è in grado di riprodurre il formato Metafile sia grafica vettoriale che raster su tutte le piattaforme.

## Controllo del giocatore Metafile Aspose.Words

La classe [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) consente di controllare il lettore metafile. Ad esempio, è possibile determinare il rendering delle immagini metafile utilizzando la proprietà [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/), che ha un significato speciale durante la conversione in bitmap (vedere anche la proprietà [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions)).

## Supporto delle operazioni Raster

Le operazioni raster sono una complessa funzione metafile, che attualmente ha un supporto limitato. Le operazioni Raster sono disponibili nei formati metafile WMF e EMF. Il formato EMF+ metafile non utilizza direttamente le operazioni raster ma può contenere parti EMF, metafile incorporati WMF o EMF.

Esistono operazioni raster binarie e ternarie:

- Le operazioni raster binarie vengono applicate ai comandi di disegno a penna, ad esempio linee di disegno e curve. Quando si disegna una linea, il colore della penna viene combinato con il colore bitmap di destinazione (il colore del pixel corrispondente sulla superficie del dispositivo) utilizzando operazioni logiche bit per bit specificate con valori di colore esadecimale. L'esempio di immagine qui sotto illustra l'effetto di tutte le 16 operazioni raster binarie applicate a 20 diverse barre di colore. Le barre di colore verticali vengono disegnate per prime, le barre orizzontali vengono disegnate dopo ogni operazione raster binaria. Per i casi semplici, R2_BLACK disegna il nero, R2_NOT inverte il colore, R2_NOP non cambia lo sfondo e R2_WHITE disegna il bianco.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Le operazioni raster ternarie vengono applicate quando si disegnano immagini bitmap. Combinano i colori dei corrispondenti pixel dell'immagine bitmap, del pennello e della bitmap di destinazione utilizzando operazioni logiche bit per bit con valori esadecimali specificati. Uno degli scopi più comuni dell'utilizzo di operazioni raster ternarie è l'emulazione della trasparenza. L'immagine fornita nell'esempio seguente mostra come è possibile emulare la trasparenza delle icone. Esistono due tipi di bitmap: la bitmap maschera b/n e la bitmap colore. Innanzitutto, la bitmap della maschera viene disegnata con l'operazione raster SRCAND. Cambia la regione dell'icona opaca in bianco e nero, lasciando invariata la regione trasparente. Quindi la seconda bitmap viene disegnata con l'operazione raster SRCINVERT. Visualizza i pixel di colore sulla regione nera, lasciando invariata la regione trasparente.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Le operazioni raster non possono essere convertite direttamente in grafica vettoriale. Aspose.Words emula le operazioni raster rasterizzando parzialmente la superficie del dispositivo interessata dalle operazioni raster. A tale scopo, viene utilizzata la proprietà [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations).

{{% alert color="primary" %}}

Mentre le operazioni raster binarie non sono attualmente supportate e il numero limitato di operazioni raster ternarie sono supportate da Aspose.Words, può gestire direttamente i casi di base della conversione in grafica vettoriale, ad esempio, R2_BLACK, R2_WHITE, R2_NOP. Inoltre, la rasterizzazione della superficie del dispositivo influisce in modo significativo sulle prestazioni, specialmente quando sono coinvolti un numero significativo di record di operazioni raster.

{{% /alert %}}

L'esempio mostrato di seguito mostra come Aspose.Words esegue il rendering di un metafile in una bitmap quando non è possibile eseguire correttamente il rendering di alcuni dei record metafile in grafica vettoriale:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
