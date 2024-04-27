---
title: Licensing e Abbonamento
second_title: Aspose.Words per Java
articleTitle: Licensing e Abbonamento
linktitle: Licensing e Abbonamento
description: "Aspose.Words per Java fornisce diversi piani per l'acquisto o offre una prova gratuita e una licenza temporanea di 30 giorni per la valutazione utilizzando le politiche di licenza e abbonamento."
type: docs
weight: 60
url: /it/java/licensing/
---

A volte, per studiare meglio il sistema, si desidera immergersi nel codice il più velocemente possibile. Per rendere questo più facile, Aspose.Words fornisce diversi piani per l'acquisto o offre una prova gratuita e una licenza temporanea di 30 giorni per la valutazione.

{{% alert color="primary" %}}

Si noti che ci sono una serie di politiche e pratiche generali che ti guidano su come valutare, correttamente la licenza e l'acquisto dei nostri prodotti. Potete trovarli nel [Politiche di acquisto e FAQ](https://purchase.aspose.com/policies/) sezione.

{{% /alert %}}

## Licenza di prova gratuita o temporanea

Aspose.Words è un software incredibile che gli sviluppatori possono provare prima di acquistare. È possibile scaricare facilmente/installare Aspose.Words per Java e Aspose.Words per Android via Java [# Maven](https://releases.aspose.com/words/java/) per la valutazione.

### Prova gratuita

La versione di valutazione è la stessa di quella acquistata – la versione di prova diventa semplicemente autorizzata quando si aggiungono alcune linee di codice per applicare la licenza.

La versione di prova Aspose.Words per Java e Aspose.Words per Android via Java senza la licenza specificata fornisce funzionalità complete del prodotto, ma inserisce una filigrana evaluativa nella parte superiore del documento al caricamento e al salvataggio e limita la dimensione massima del documento a poche centinaia di paragrafi.

### Licenza temporanea

Se volete provare Aspose.Words per Java e Aspose.Words per Android via Java senza i limiti della versione di prova, è anche possibile richiedere una licenza temporanea di 30 giorni. Per maggiori dettagli, vedere il [Condividi su Facebook](https://purchase.aspose.com/temporary-license/) pagina.

## Licenza acquistata

Dopo l'acquisto, è necessario applicare il file di licenza o includere il file di licenza come risorsa incorporata. Questa sezione descrive le opzioni di come questo può essere fatto, e anche commenti su alcune domande comuni.

{{% alert color="primary" %}}

Una licenza è un semplice file XML di testo che contiene dettagli come nome del prodotto, numero di sviluppatori autorizzati, data di scadenza dell'abbonamento e così via.

Il file è firmato digitalmente, quindi non modificare il file. Anche l'aggiunta involont di un'interruzione di linea supplementare nel file lo invaliderà.

{{% /alert %}}

{{% alert color="primary" %}}

È necessario impostare la licenza:

* solo una volta per dominio applicazione
* prima di utilizzare qualsiasi altro Aspose.Words classi

{{% /alert %}}

{{% alert color="primary" %}}

È possibile trovare informazioni sui prezzi su [Informazioni sui prezzi](https://purchase.aspose.com/pricing/words/family/) pagina.

{{% /alert %}}

### Proteggere la vostra licenza acquistata

Dopo aver acquistato una licenza, è necessario leggere attentamente le informazioni sulla pagina [Condividi su Facebook](https://purchase.aspose.com/orders/protecting-your-license-file) per proteggere il file di licenza. Si prega di notare che questa pagina è disponibile per la visualizzazione solo se si dispone di una licenza a pagamento.

### Opzioni di applicazione della licenza

Le licenze possono essere applicate da varie sedi:

* Percorso esplicita
* # La cartella contenente il *Aspose.Words JAR* file
* # Una risorsa incorporata nel JAR si chiama *Aspose.Words JAR#
* # Come licenza Metered – un nuovo meccanismo di licenza

Spesso il modo più semplice per impostare una licenza è posizionare il file di licenza nella stessa cartella di *Aspose.Words JAR* e specificare solo il nome del file senza il percorso.

{{% alert color="primary" %}}

Utilizzare [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) metodo per la licenza di un componente.

Chiamare **SetLicense** più volte non è dannoso, solo spreca il tempo del processore.

Chiamare [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) più volte non è dannoso, ma solo spreca il tempo del processore e può accumulare il consumo in modo improprio.

{{% /alert %}}

#### Applicare la licenza utilizzando un oggetto File o Stream

{{% alert color="primary" %}}

Chiamata **SetLicense** nel codice di avvio prima di utilizzare Aspose.Words classi.

{{% /alert %}}

Quando si sviluppa una libreria di classe, si può chiamare **SetLicense** dal costruttore statico della vostra classe che utilizza Aspose.Words. Il costruttore statico sarà eseguito prima di istantanare la vostra classe per garantire che il Aspose.Words la licenza è installata correttamente.

##### Carica una licenza da un file

Usare il [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String) metodo, è possibile cercare di trovare il file di licenza nelle risorse embedded o cartella che contengono il JARs della vostra richiesta per un ulteriore utilizzo.

Il seguente esempio di codice mostra come inizializzare una licenza da una cartella:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Carica una licenza da una `Stream` Oggetto

Il seguente esempio di codice mostra come inizializzare una licenza da un flusso utilizzando un altro [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) metodo:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Includere il file di licenza come risorsa incorporata

Un modo pulito per imballare una licenza con la vostra applicazione e assicurarsi che non sarà perso è quello di includerlo come una risorsa incorporata. Puoi semplicemente copiare il file LIC nella cartella delle risorse del tuo progetto.

Ricostruire il progetto dovrebbe incorporare il file .lic in applicazione .jar file. Dopo di che, è possibile richiedere una licenza utilizzando il seguente codice:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Applicare la licenza Metered

Aspose.Words consente agli sviluppatori di applicare una chiave misurata. Questo è un nuovo meccanismo di licenza.

Il nuovo meccanismo di licenza verrà utilizzato insieme al metodo di licenza esistente. Quei clienti che vogliono essere fatturati in base all'uso di API le caratteristiche possono utilizzare il Licensing Metered.

Dopo aver completato tutti i passaggi necessari per ottenere questo tipo di licenza, riceverai le chiavi, non il file di licenza. Questa chiave misurata può essere applicata utilizzando [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) classe appositamente introdotta per questo scopo.

Non chiamare **SetMeteredKey** metodo frequentemente in modo che questo metodo di licenza accumula correttamente il consumo e lo riferisce a noi. Solo istantaneo il Aspose.Words biblioteca, chiamata **SetMeteredKey** una volta, poi lasciare la biblioteca istantaneo e riutilizzarlo.

Il seguente esempio di codice mostra come impostare le chiavi pubbliche e private misurate:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Si prega di notare che è necessario disporre di una connessione Internet stabile per il corretto utilizzo della licenza Metered, dal momento che il meccanismo Metered richiede la costante interazione con i nostri servizi per i calcoli corretti

Per ulteriori dettagli, fare riferimento al [Come funziona?](https://purchase.aspose.com/faqs/licensing/metered/) sezione.

{{% /alert %}}

### Modifica del nome del file di licenza

Il nome del file di licenza non deve essere "Aspose.Words.LIC". È possibile rinominarlo a vostro piacimento e utilizzare quel nome quando si imposta una licenza nella vostra applicazione.

### "Non trovare il nome del file di licenza" Eccezione

Quando si acquista e scarica una licenza, il sito Aspose nomina il file di licenza *"Aspose.Words* È possibile scaricare il file di licenza utilizzando il browser. In questo caso, alcuni browser riconoscono il file di licenza come XML e applicano l'estensione .xml ad esso, quindi il nome completo del file sul computer diventa *"Aspose.Words.lic.XML*.

Quando Microsoft Windows è configurato per nascondere le estensioni per i tipi di file noti (purtroppo, questo è il default nella maggior parte Windows installazioni), il file di licenza apparirà come *"Aspose.Words. LIC Windows Explorer. Probabilmente penserete che questo è il vero nome del file e la chiamata **SetLicense** passarlo *"Aspose.Words.LIC"*, ma non esiste un tale file, quindi l'eccezione.

Per risolvere il problema, rinominare il file per rimuovere l'estensione .xml invisibile. Si consiglia inoltre di disattivare l'opzione "hide extensions" in Microsoft Windows.

## Utilizzo di prodotti multipli

Se si utilizzano più prodotti Aspose nella vostra applicazione, come Aspose.Words e `Aspose.Cells`, qui ci sono alcuni consigli utili:

* Impostare la licenza per ogni prodotto Aspose separatamente. Anche se si dispone di un unico file di licenza per tutti i componenti, per esempio, "Aspose.Total.lic", è ancora necessario chiamare **SetLicense** separatamente per ogni prodotto Aspose che si utilizza nella vostra applicazione.
* Utilizzare il nome della classe di licenza completamente qualificato. Ogni Aspose prodotto ha un `License` classe nel suo namespace. Per esempio, Aspose.Words ha **com.aspose.words.License** e `Aspose.Cells` ha com.aspose.cellule. Classe di licenza. Utilizzando il nome di classe pienamente qualificato consente di evitare confusione su quale licenza si applica a quale prodotto.
