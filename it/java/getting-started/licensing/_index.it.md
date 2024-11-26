---
title: Licenze e abbonamenti
second_title: Aspose.Words per Java
articleTitle: Licenze e abbonamenti
linktitle: Licenze e abbonamenti
description: "Aspose.Words per Java fornisce diversi piani di acquisto o offre una prova gratuita e una licenza temporanea di 30 giorni per la valutazione utilizzando i criteri di licenza e abbonamento."
type: docs
weight: 60
url: /it/java/licensing/
timestamp: 2024-01-31-14-23-37
---

A volte, per studiare meglio il sistema, si desidera immergersi nel codice il più velocemente possibile. Per semplificare, Aspose.Words fornisce diversi piani di acquisto o offre una prova gratuita e una licenza temporanea di 30 giorni per la valutazione.

{{% alert color="primary" %}}

Tieni presente che esistono una serie di politiche e pratiche generali che ti guidano su come valutare, concedere in licenza e acquistare correttamente i nostri prodotti. Puoi trovarli nel [Politiche di acquisto e FAQ](https://purchase.aspose.com/policies/) sezione.

{{% /alert %}}

## Prova gratuita o licenza temporanea

Aspose.Words è un software incredibile che gli sviluppatori possono provare prima di acquistare. È possibile scaricare/installare facilmente Aspose.Words per Java e Aspose.Words per Android tramite Java [a partire da Maven](https://releases.aspose.com/words/java/) per la valutazione.

### Prova gratuita

La versione di valutazione è la stessa di quella acquistata: la versione di prova diventa semplicemente concessa in licenza quando aggiungi alcune righe di codice per applicare la licenza.

La versione di prova di Aspose.Words per Java e Aspose.Words per Android tramite Java senza la licenza specificata fornisce funzionalità complete del prodotto, ma inserisce una filigrana valutativa nella parte superiore del documento al caricamento e al salvataggio e limita la dimensione massima del documento a poche centinaia di paragrafi.

### Licenza temporanea

Se desideri testare Aspose.Words per Java e Aspose.Words per Android tramite Java senza le limitazioni della versione di prova, puoi anche richiedere una licenza temporanea di 30 giorni. Per maggiori dettagli, vedere il [Ottenere una licenza temporanea](https://purchase.aspose.com/temporary-license/) pagina.

## Licenza acquistata

Dopo l'acquisto, è necessario applicare il file di licenza o includere il file di licenza come risorsa incorporata. Questa sezione descrive le opzioni su come questo può essere fatto e commenta anche alcune domande comuni.

{{% alert color="primary" %}}

Una licenza è un file di testo semplice XML che contiene dettagli come il nome del prodotto, il numero di sviluppatori autorizzati, la data di scadenza dell'abbonamento e così via.

Il file è firmato digitalmente, quindi non modificare il file. Anche l'aggiunta involontaria di un'interruzione di riga extra nel file lo invaliderà.

{{% /alert %}}

{{% alert color="primary" %}}

È necessario impostare la licenza:

* solo una volta per dominio di applicazione
* prima di usare qualsiasi altra classe Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Puoi trovare informazioni sui prezzi sul [Informazioni sui prezzi](https://purchase.aspose.com/pricing/words/family/) pagina.

{{% /alert %}}

### Proteggere la licenza acquistata

Dopo aver acquistato una licenza, è necessario leggere attentamente le informazioni a pagina [Proteggere la licenza acquistata](https://purchase.aspose.com/orders/protecting-your-license-file) per proteggere il file di licenza. Si prega di notare che questa pagina è disponibile per la visualizzazione solo se si dispone di una licenza a pagamento.

### Opzioni di applicazione della licenza

Le licenze possono essere applicate da varie posizioni:

* Percorso esplicito
* La cartella contenente il file *Aspose.Words JAR*
* Una risorsa incorporata in JAR è chiamata *Aspose.Words JAR*
* Come una licenza misurata - un nuovo meccanismo di licenza

Spesso il modo più semplice per impostare una licenza è posizionare il file di licenza nella stessa cartella di *Aspose.Words JAR* e specificare solo il nome del file senza il percorso.

{{% alert color="primary" %}}

Utilizzare il metodo [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) per concedere in licenza un componente.

Chiamare **SetLicense** più volte non è dannoso, fa solo perdere tempo al processore.

Anche chiamare [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) più volte non è dannoso, ma spreca solo il tempo del processore e può accumulare il consumo in modo improprio.

{{% /alert %}}

#### Applicare la licenza utilizzando un file o un oggetto Stream

{{% alert color="primary" %}}

Chiamare **SetLicense** nel codice di avvio prima di utilizzare le classi Aspose.Words.

{{% /alert %}}

Quando si sviluppa una libreria di classi, è possibile chiamare **SetLicense** dal costruttore statico della classe che utilizza Aspose.Words. Il costruttore statico verrà eseguito prima di creare un'istanza della classe per garantire che la licenza Aspose.Words sia installata correttamente.

##### Caricare una licenza da un file

Utilizzando il metodo [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String), è possibile cercare di trovare il file di licenza nelle risorse incorporate o nella cartella che contiene il JARs dell'applicazione per un ulteriore utilizzo.

Il seguente esempio di codice mostra come inizializzare una licenza da una cartella:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Caricare una licenza da un oggetto `Stream`

L'esempio di codice seguente mostra come inizializzare una licenza da un flusso utilizzando un altro metodo [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream):

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Includere il file di licenza come risorsa incorporata

Un modo pulito per impacchettare una licenza con la tua applicazione e assicurarti che non vada persa è includerla come risorsa incorporata. Puoi semplicemente copiare il file LIC nella cartella delle risorse del tuo progetto.

Ricostruire il progetto dovrebbe incorporare il .file lic in applicazione .file jar. Successivamente, è possibile richiedere una licenza utilizzando il seguente codice:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Applicare la licenza misurata

Aspose.Words consente agli sviluppatori di applicare una chiave misurata. Questo è un nuovo meccanismo di licenza.

Il nuovo meccanismo di licenza verrà utilizzato insieme al metodo di licenza esistente. I clienti che desiderano essere fatturati in base all'utilizzo delle funzionalità API possono utilizzare la licenza con misurazione.

Dopo aver completato tutti i passaggi necessari per ottenere questo tipo di licenza, riceverai le chiavi, non il file di licenza. Questa chiave misurata può essere applicata usando la classe [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) appositamente introdotta per questo scopo.

Non chiamare frequentemente il metodo **SetMeteredKey** in modo che questo metodo di licenza accumuli correttamente il consumo e lo riferisca a noi. Basta istanziare la libreria Aspose.Words, chiamare **SetMeteredKey** una volta, quindi lasciare la libreria istanziata e riutilizzarla.

Il seguente esempio di codice mostra come impostare le chiavi pubbliche e private misurate:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Si prega di notare che è necessario disporre di una connessione Internet stabile per il corretto utilizzo della licenza misurata, poiché il meccanismo misurato richiede l'interazione costante con i nostri servizi per i calcoli corretti.

Per maggiori dettagli, fare riferimento al [Licenza misurata FAQ](https://purchase.aspose.com/faqs/licensing/metered/) sezione.

{{% /alert %}}

### Modifica del nome del file di licenza

Il nome del file di licenza non deve essere " Aspose.Words.LIC". È possibile rinominarlo a proprio piacimento e utilizzare quel nome quando si imposta una licenza nell'applicazione.

### Eccezione" Impossibile trovare il nome del file di licenza"

Quando si acquista e si scarica una licenza, il sito Web Aspose assegna un nome al file di licenza *"Aspose.Words.LIC"*. Si scarica il file di licenza utilizzando il browser. In questo caso, alcuni browser riconoscono il file di licenza come XML e aggiungono il file .estensione xml ad esso, in modo che il nome completo del file sul computer diventa *"Aspose.Words.lic.XML"*.

Quando Microsoft Windows è configurato per nascondere le estensioni per i tipi di file noti (sfortunatamente, questo è il valore predefinito nella maggior parte delle installazioni Windows), il file di licenza apparirà come *"Aspose.Words. LIC"* in Windows Explorer. Probabilmente penserai che questo è il vero nome del file e chiamerai **SetLicense** passandolo *"Aspose.Words.LIC"*, ma non esiste un file del genere, quindi l'eccezione.

Per risolvere il problema, rinominare il file per rimuovere l'invisibile .estensione xml. Si consiglia inoltre di disabilitare l'opzione" nascondi estensioni " in Microsoft Windows.

## Utilizzo di più prodotti Aspose

Se si utilizzano più prodotti Aspose nell'applicazione, ad esempio Aspose.Words e `Aspose.Cells`, ecco alcuni suggerimenti utili:

* Impostare la Licenza per ciascun prodotto Aspose separatamente. Anche se si dispone di un singolo file di licenza per tutti i componenti, ad esempio "Aspose.Total.lic", è comunque necessario chiamare **SetLicense** separatamente per ciascun prodotto Aspose utilizzato nell'applicazione.
* Utilizzare il nome della classe di licenza completa. Ogni prodotto Aspose ha una classe `License` nel proprio spazio dei nomi. Ad esempio, Aspose.Words ha **com.aspose.words.License** e `Aspose.Cells` ha com.aspose.cellula.Classe di licenza. L'utilizzo del nome di classe completo consente di evitare confusione su quale licenza si applica a quale prodotto.
