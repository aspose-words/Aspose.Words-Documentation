---
title: Gestione dei metafile Windows in C#
second_title: Aspose.Words per .NET
articleTitle: Gestione dei metafile Windows
linktitle: Gestione dei metafile Windows
description: "Aspose.Words per .NET implementa il proprio lettore di metafile Windows per riprodurre il formato Metafile su tutte le piattaforme e supporta la gestione delle funzionalità di metafile di base e può eseguire il fallback su un diverso tipo di lettore di metafile utilizzando C#."
type: docs
weight: 30
url: /it/net/handling-windows-metafiles/
---

Il formato Windows Metafile è un formato di file immagine che può contenere sia grafica vettoriale che raster. Questo formato viene utilizzato per archiviare dati grafici in memoria o file su disco. Un metafile memorizza un elenco di chiamate di funzione nella Windows Graphics Device Interface (GDI) che devono essere eseguite per visualizzare l'immagine sullo schermo. Il sistema interpreta ed esegue questi comandi nel contesto di visualizzazione.

In precedenza, Windows Metafile era l'unico formato di immagine vettoriale supportato da Microsoft Word. Microsoft Word ora supporta anche il formato SVG, ma il formato metafile è ancora comunemente utilizzato nei documenti Word. Inoltre, Metafile potrebbe essere un formato di interscambio per alcune altre applicazioni, come Microsoft Visio. In sostanza, lo scopo principale di Metafile è garantire lo scambio di informazioni grafiche tra applicazioni Windows.

Esistono 3 versioni di Windows Metafile:

- WMF: memorizza la chiamata su GDI a 16 bit.
- EMF – memorizza la chiamata a Win32/GDI.
- Il metafile EMF+ memorizza la chiamata a GDI+. EMF+ Metafile può anche essere doppio, descrivendo la stessa grafica con entrambe le parti EMF ed EMF+.

Il problema esistente con Windows Metafile è che non è supportato dalla maggior parte dei formati non Word, in cui vengono solitamente salvati i documenti. Pertanto, è necessario convertire il formato Metafile in altri formati raster o vettoriali. È facile convertire il metafile Windows in un'immagine raster su .NET semplicemente passandolo a GDI+, ma non è possibile su altre piattaforme poiché anche GDI+ non fornisce la funzionalità per estrarre la grafica vettoriale dal Metafile. Per risolvere questi problemi, Aspose.Words implementa il proprio lettore Windows Metafile, che è in grado di riprodurre grafica in formato Metafile sia vettoriale che raster su tutte le piattaforme.

## Controllo del lettore di metafile Aspose.Words

La classe [MetafileRenderingOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/metafilerenderingoptions/) ti consente di controllare il lettore di metafile. Ad esempio, puoi determinare come devono essere visualizzate le immagini metafile utilizzando la proprietà [RenderingMode](https://reference.aspose.com/words/it/net/aspose.words.saving/metafilerenderingoptions/renderingmode/), che ha un significato speciale durante la conversione in bitmap (vedi anche la proprietà [MetafileRenderingOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/)).

Il salvataggio su bitmap funziona in modo diverso su piattaforme diverse da .NET. Sebbene il rendering .NET GDI+ sia un riferimento che funziona quasi perfettamente anche per il formato metafile più complesso, su altre piattaforme potrebbe causare problemi o non essere affatto supportato.

## Supporto delle operazioni raster

Le operazioni raster sono una funzionalità metafile complessa, che attualmente ha un supporto limitato. Le operazioni raster sono disponibili nei formati metafile WMF ed EMF. Il formato metafile EMF+ non utilizza direttamente operazioni raster ma può contenere parti EMF, metafile WMF o EMF incorporati.

Esistono operazioni raster binarie e ternarie:

- Le operazioni raster binarie vengono applicate ai comandi di disegno con penna, come disegnare linee e curve. Quando si disegna una linea, il colore della penna viene combinato con il colore della bitmap di destinazione (il colore del pixel corrispondente sulla superficie del dispositivo) utilizzando operazioni logiche bit a bit specificate con valori di colore esadecimali. L'esempio dell'immagine seguente illustra l'effetto di tutte le 16 operazioni raster binarie applicate a 20 diverse barre di colore. Le barre di colore verticali vengono disegnate per prime, le barre orizzontali vengono disegnate dopo l'applicazione di ciascuna operazione raster binaria. Per i casi semplici, R2_BLACK disegna il nero, R2_NOT inverte il colore, R2_NOP non cambia lo sfondo e R2_WHITE disegna il bianco.

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="gestione-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- Le operazioni raster ternarie vengono applicate quando si disegnano immagini bitmap. Combinano i colori dei pixel dell'immagine bitmap corrispondenti, del pennello e della bitmap di destinazione utilizzando operazioni logiche bit per bit con valori di colore esadecimali specificati. Uno degli scopi più comuni dell'utilizzo delle operazioni raster ternarie è l'emulazione della trasparenza. L'immagine fornita nell'esempio seguente dimostra come è possibile emulare la trasparenza delle icone. Esistono due tipi di bitmap: la bitmap con maschera in bianco e nero e la bitmap a colori. Innanzitutto, la bitmap della maschera viene disegnata con l'operazione raster SRCAND. Cambia la regione opaca dell'icona in bianco e nero, lasciando invariata la regione trasparente. Successivamente viene disegnata la seconda bitmap con l'operazione raster SRCINVERT. Visualizza i pixel colorati sulla regione nera, lasciando invariata la regione trasparente.

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="gestione-windows-metafiles-aspose-words-net-2" style="width:650px"/>

Le operazioni raster non possono essere convertite direttamente in grafica vettoriale. Aspose.Words emula le operazioni raster rasterizzando parzialmente la superficie del dispositivo interessata dalle operazioni raster. A questo scopo viene utilizzata la proprietà [EmulateRasterOperations](https://reference.aspose.com/words/it/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/).

{{% alert color="primary" %}}

Sebbene le operazioni raster binarie non siano attualmente supportate e il numero limitato di operazioni raster ternarie sia supportato da Aspose.Words, può gestire direttamente i casi base di conversione in grafica vettoriale, ad esempio R2_BLACK, R2_WHITE, R2_NOP. Inoltre, la rasterizzazione della superficie del dispositivo influisce in modo significativo sulle prestazioni, soprattutto quando è coinvolto un numero significativo di record di operazioni raster.

{{% /alert %}}

L'esempio mostrato di seguito dimostra come Aspose.Words esegue il rendering di un metafile in una bitmap quando non è possibile eseguire correttamente il rendering di alcuni record del metafile in grafica vettoriale:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cs" >}}

## Impostazioni di fallback del metafile

Aspose.Words non supporta una serie di funzionalità dei metafile molto complesse o rare. Gli utenti possono implementare l'interfaccia [IWarningCallBack](https://reference.aspose.com/words/it/net/aspose.words/iwarningcallback/) e ricevere messaggi di avviso. Se Aspose.Words rileva funzionalità non supportate in un metafile, emette un messaggio di avviso con [WarningSource](https://reference.aspose.com/words/it/net/aspose.words/warningsource/).**Metafile**. In questo caso Aspose.Words potrebbe eseguire il fallback su un diverso tipo di lettore di metafile. Viene emesso anche il messaggio di avviso relativo al fallback.

Innanzitutto, Aspose.Words esegue il fallback dal lettore di metafile vettoriali al raster, che è controllato dalla proprietà [RenderingMode](https://reference.aspose.com/words/it/net/aspose.words.saving/metafilerenderingoptions/renderingmode/). Se la funzionalità di fallback è disabilitata, Aspose.Words tenta di eseguire il rendering di alcuni elementi grafici sostitutivi invece delle funzionalità non supportate.

Aspose.Words riproduce correttamente il metafile su raster utilizzando GDI+ su .NET, il che rende sicura questa opzione di callback.

In secondo luogo, esiste un'opzione per EMF+ Dual metafile per eseguire il fallback dalla riproduzione della parte EMF+ alla parte EMF. È controllato da [EmfPlusDualRenderingMode](https://reference.aspose.com/words/it/net/aspose.words.saving/metafilerenderingoptions/emfplusdualrenderingmode/). Se si verificano problemi durante la riproduzione della parte EMF, è possibile eseguire anche il fallback su raster.

Per quanto riguarda le operazioni raster, se [EmulateRasterOperations](https://reference.aspose.com/words/it/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) è disabilitato, le operazioni raster sono considerate non supportate, il che attiva il fallback al lettore metafile bitmap se è abilitato. Pertanto, se si dispone di un metafile con operazioni raster, ma non si desidera utilizzare l'emulazione delle operazioni raster e tuttavia si desidera ottenere l'output vettoriale con grafica di sostituzione, selezionare [MetafileRenderingMode](https://reference.aspose.com/words/it/net/aspose.words.saving/metafilerenderingmode/).**Vector**.
