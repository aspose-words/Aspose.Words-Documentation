---
title: Gestione di metafile Windows in C++
second_title: Aspose.Words per C++
articleTitle: Gestione dei metafile Windows
linktitle: Gestione dei metafile Windows
description: "Aspose.Words per C++ implementa il proprio lettore Metafile Windows per riprodurre il formato Metafile su tutte le piattaforme e supporta la gestione delle funzionalità metafile di base e può eseguire il fallback su un diverso tipo di lettore metafile."
type: docs
weight: 30
url: /it/cpp/handling-windows-metafiles/
---

Windows Metafile format è un formato di file immagine che può contenere sia grafica vettoriale che raster. Questo formato viene utilizzato per memorizzare i dati grafici in memoria o file su disco. Un metafile memorizza un elenco di chiamate di funzione nel GDI (Graphics Device Interface) Windows che devono essere eseguite per visualizzare l'immagine sullo schermo. Il sistema interpreta ed esegue questi comandi nel contesto di visualizzazione.

Precedentemente, Windows Metafile era l'unico formato di immagine vettoriale supportato da Microsoft Word. Microsoft Word ora supporta anche il formato SVG, ma il formato metafile è ancora comunemente usato nei documenti Word. Inoltre, Metafile potrebbe essere un formato di interscambio per alcune altre applicazioni, come Microsoft Visio. In sostanza, lo scopo principale di Metafile è quello di garantire lo scambio di informazioni grafiche tra Windows applicazioni.

Esistono versioni 3 di Metafile Windows:

- WMF-memorizza la chiamata a 16bit GDI.
- EMF-memorizza la chiamata a Win32 / GDI.
- EMF + Metafile memorizza la chiamata a GDI+. EMF + Metafile può anche essere duale, descrivendo la stessa grafica con entrambe le parti EMF e EMF+.

Il problema esistente con Windows Metafile è che non è supportato dalla maggior parte dei formati non Word, in cui i documenti vengono solitamente salvati. Pertanto, è necessario convertire il formato Metafile in altri formati raster o vettoriali. È facile convertire Windows Metafile in immagine raster su .NET semplicemente passandolo a GDI+, ma non è possibile su altre piattaforme poiché anche GDI+ non fornisce la funzionalità per estrarre la grafica vettoriale da Metafile. Per risolvere questi problemi, Aspose.Words implementa il proprio lettore Metafile Windows, che è in grado di riprodurre il formato Metafile sia grafica vettoriale che raster su tutte le piattaforme.

## Controllo del giocatore Metafile Aspose.Words

La classe [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) consente di controllare il lettore metafile. Ad esempio, è possibile determinare il rendering delle immagini metafile utilizzando la proprietà [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/), che ha un significato speciale durante la conversione in bitmap (vedere anche la proprietà [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)).

Il salvataggio su una bitmap funziona in modo diverso su piattaforme diverse da .NET. Mentre .NET GDI + rendering è un riferimento che funziona quasi perfettamente anche per il formato metafile più complesso, su altre piattaforme può causare problemi o non essere supportato affatto.

## Supporto delle operazioni Raster

Le operazioni raster sono una complessa funzione metafile, che attualmente ha un supporto limitato. Le operazioni Raster sono disponibili nei formati metafile WMF ed EMF. Il formato EMF + metafile non utilizza direttamente operazioni raster ma può contenere parti EMF, metafile WMF o EMF incorporati.

Esistono operazioni raster binarie e ternarie:

- Le operazioni raster binarie vengono applicate ai comandi di disegno a penna, ad esempio linee di disegno e curve. Quando si disegna una linea, il colore della penna viene combinato con il colore bitmap di destinazione (il colore del pixel corrispondente sulla superficie del dispositivo) utilizzando operazioni logiche bit per bit specificate con valori di colore esadecimale. L'esempio di immagine qui sotto illustra l'effetto di tutte le 16 operazioni raster binarie applicate a 20 diverse barre di colore. Le barre di colore verticali vengono disegnate per prime, le barre orizzontali vengono disegnate dopo ogni operazione raster binaria. Per i casi semplici, R2_BLACK disegna il nero, R2_NOT inverte il colore, R2_NOP non cambia lo sfondo e R2_WHITE disegna il bianco.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- Le operazioni raster ternarie vengono applicate quando si disegnano immagini bitmap. Combinano i colori dei corrispondenti pixel dell'immagine bitmap, del pennello e della bitmap di destinazione utilizzando operazioni logiche bit per bit con valori esadecimali specificati. Uno degli scopi più comuni dell'utilizzo di operazioni raster ternarie è l'emulazione della trasparenza. L'immagine fornita nell'esempio seguente mostra come è possibile emulare la trasparenza delle icone. Esistono due tipi di bitmap: la bitmap maschera b/n e la bitmap colore. Innanzitutto, la bitmap della maschera viene disegnata con l'operazione raster SRCAND. Cambia la regione dell'icona opaca in bianco e nero, lasciando invariata la regione trasparente. Quindi la seconda bitmap viene disegnata con l'operazione raster SRCINVERT. Visualizza i pixel di colore sulla regione nera, lasciando invariata la regione trasparente.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

Le operazioni raster non possono essere convertite direttamente in grafica vettoriale. Aspose.Words emula le operazioni raster rasterizzando parzialmente la superficie del dispositivo interessata dalle operazioni raster. A tale scopo, viene utilizzata la proprietà [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/).

{{% alert color="primary" %}}

Mentre le operazioni raster binarie non sono attualmente supportate e il numero limitato di operazioni raster ternarie sono supportate da Aspose.Words, può gestire direttamente i casi di base della conversione in grafica vettoriale, ad esempio R2_BLACK, R2_WHITE, R2_NOP. Inoltre, la rasterizzazione della superficie del dispositivo influisce in modo significativo sulle prestazioni, specialmente quando sono coinvolti un numero significativo di record di operazioni raster.

{{% /alert %}}

L'esempio mostrato di seguito mostra come Aspose.Words esegue il rendering di un metafile in una bitmap quando non è possibile eseguire correttamente il rendering di alcuni dei record metafile in grafica vettoriale:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## Impostazioni di fallback Metafile

Aspose.Words non supporta una serie di funzionalità metafile più complesse o rare. Gli utenti possono implementare l'interfaccia [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) e ricevere messaggi di avviso. Se Aspose.Words incontra funzionalità non supportate in un metafile, emette un messaggio di avviso con [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. In questo caso Aspose.Words può eseguire il fallback su un diverso tipo di riproduttore metafile. Viene emesso anche il messaggio di avviso relativo al fallback.

In primo luogo, Aspose.Words esegue il fallback dal giocatore metafile vettoriale al raster, che è controllato dalla proprietà [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/). Se la funzione di fallback è disabilitata, Aspose.Words tenta di eseguire il rendering di alcuni elementi grafici di sostituzione anziché delle funzionalità non supportate.

Aspose.Words riproduce correttamente metafile su raster usando GDI + su .NET, il che rende sicura questa opzione di callback.

In secondo luogo, c'è un'opzione per EMF+ Doppio metafile per ripiegare dalla riproduzione della parte EMF+ alla parte EMF. È controllato da [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). Se si verificano alcuni problemi durante la riproduzione della parte EMF, è possibile eseguire anche il fallback su raster.

Per quanto riguarda le operazioni raster, se [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) è disabilitato, le operazioni raster sono considerate non supportate, il che innesca il fallback su bitmap metafile player se è abilitato. Pertanto, se si dispone di un metafile con operazioni raster, ma non si desidera utilizzare l'emulazione delle operazioni raster e tuttavia si desidera ottenere l'output vettoriale con grafica di sostituzione, selezionare [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.
