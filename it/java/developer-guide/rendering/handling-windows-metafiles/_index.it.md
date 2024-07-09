---
title: Manipolazione Windows Metafiles in Java
second_title: Aspose.Words per Java
articleTitle: Manipolazione Windows Metafiles
linktitle: Manipolazione Windows Metafiles
description: "Aspose.Words per Java implementa il proprio Windows Metafile player per riprodurre il formato Metafile su tutte le piattaforme e supporta la gestione delle caratteristiche del metafile di base e può eseguire fallback a un diverso tipo di metafile player."
type: docs
weight: 30
url: /it/java/handling-windows-metafiles/
---

Windows Il formato Metafile è un formato di file immagine che può contenere sia grafica vettoriale che raster. Questo formato viene utilizzato per memorizzare i dati grafici in memoria o file on-disk. Un metafile memorizza un elenco di chiamate funzione nel Windows Graphics Device Interface (GDI) che deve essere eseguito per visualizzare l'immagine sullo schermo. Il sistema interpreta ed esegue questi comandi nel contesto del display.

In passato, Windows Metafile è stato l'unico formato di immagini vettoriali supportato da Microsoft Word. Microsoft Word ora supporta anche il formato SVG, ma il formato metafile è ancora comunemente usato nei documenti di Word. Inoltre, Metafile potrebbe essere un formato di scambio per alcune altre applicazioni, come Microsoft Visio. Essenzialmente, lo scopo principale di Metafile è quello di garantire lo scambio di informazioni grafiche tra Windows applicazioni.

Ci sono 3 versioni di Windows Metafile:

- WMF – i negozi chiamano a 16bit GDI.
- EMF - negozi chiamata a Win32/GDI.
- I negozi EMF+ Metafile chiamano GDI+. EMF+ Metafile può anche essere doppia, descrivendo la stessa grafica sia con parti EMF che EMF+.

Il problema esistente con Windows Metafile è che non è supportato dalla maggior parte dei formati non-Word, a cui i documenti sono solitamente salvati. Pertanto, è necessario convertire il formato Metafile in altri formati raster o vettoriali. È facile da convertire Windows Metafile a un'immagine raster su .NET semplicemente passando a GDI+, ma non è possibile su altre piattaforme poiché anche GDI+ non fornisce la funzionalità per estrarre la grafica vettoriale da Metafile. Per risolvere questi problemi, Aspose.Words implementa il proprio Windows Metafile player, che è in grado di riprodurre il formato Metafile sia vettoriale che grafica raster su tutte le piattaforme.

## Controllo della Aspose.Words Metafile Player

The [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) classe consente di controllare il lettore metafile. Ad esempio, è possibile determinare come le immagini del metafile dovrebbero essere rese utilizzando il [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) proprietà, che ha un significato speciale durante la conversione a bitmaps (vedi anche il [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) proprietà).

## Supportare operazioni raster

Le operazioni raster sono una caratteristica complessa di metafile, che attualmente ha un supporto limitato. Le operazioni raster sono disponibili nei formati metafile WMF e EMF. Il formato metafile EMF+ non utilizza direttamente le operazioni di raster ma può contenere parti EMF, metafile WMF embedded o EMF.

Ci sono operazioni di raster binario e ternario:

- Le operazioni binarie del raster sono applicate ai comandi di disegno della penna, come le linee di disegno e le curve. Quando si disegna una linea, il colore della penna viene combinato con il colore bitmap di destinazione (il colore del pixel corrispondente sulla superficie del dispositivo) utilizzando operazioni bitwise specifiche con valori di colore esagonale. L'esempio di immagine qui sotto illustra l'effetto di tutte le 16 operazioni di raster binario applicate a 20 diverse barre di colore. Le barre di colore verticali sono disegnate prima, le barre orizzontali sono disegnate dopo ogni operazione di raster binario è applicato. Per i casi semplici, R2_BLACK disegna nero, R2_NOT inversa il colore, R2_NOP non cambia lo sfondo, e R2_WHITE disegna bianco.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Le operazioni di raster Ternary vengono applicate durante il disegno di immagini bitmap. Combinano i colori dei pixel di immagine bitmap corrispondenti, il pennello, e la bitmap di destinazione utilizzando operazioni logiche bitwise con valori di colore esagonale specificati. Uno degli scopi più comuni di utilizzare le operazioni di raster ternario è l'emulazione della trasparenza. L'immagine fornita nell'esempio seguente dimostra come la trasparenza dell'icona può essere emulata. Ci sono due tipi di bitmap: la b/w mask bitmap e la bitmap di colore. In primo luogo, il bitmap della maschera è disegnato con l'operazione raster SRCAND. Cambia la regione dell'icona opaca in bianco e nero, lasciando la regione trasparente invariata. Poi la seconda bitmap viene disegnata con l'operazione raster SRCINVERT. Visualizza i pixel di colore nella regione nera, lasciando la regione trasparente invariata.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Le operazioni raster non possono essere convertite in grafica vettoriale direttamente. Aspose.Words emula le operazioni di raster, rasterizzando parzialmente la superficie del dispositivo interessata dalle operazioni di raster. Con questo scopo, il [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) la proprietà è utilizzata.

{{% alert color="primary" %}}

Mentre le operazioni di raster binario non sono attualmente supportate e il numero limitato di operazioni di raster ternary sono supportati da Aspose.Words, può gestire i casi di base di conversione alla grafica vettoriale direttamente, ad esempio, R2_BLACK, R2_WHITE, R2_NOP. Inoltre, la rasterizzazione della superficie del dispositivo influisce significativamente sulle prestazioni, soprattutto quando il numero significativo di record di funzionamento raster sono coinvolti.

{{% /alert %}}

L'esempio mostrato di seguito mostra come Aspose.Words rende un metafile a bitmap quando non è possibile rendere correttamente alcuni dei record di metafile alla grafica vettoriale:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
