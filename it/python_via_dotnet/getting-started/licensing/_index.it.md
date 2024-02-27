---
title: Licenza e abbonamento
second_title: Aspose.Words per Python via .NET
articleTitle: Licenza e abbonamento
linktitle: Licenza e abbonamento
description: "Aspose.Words for Python via .NET fornisce diversi piani di acquisto o offre una prova gratuita e una licenza temporanea di 30 giorni per la valutazione utilizzando le politiche di licenza e abbonamento."
type: docs
weight: 40
url: /it/python-net/licensing/
---

A volte, per studiare meglio il sistema, vuoi immergerti nel codice il più velocemente possibile. Per semplificare tutto ciò, Aspose.Words fornisce diversi piani di acquisto o offre una prova gratuita e una licenza temporanea di 30 giorni per la valutazione.

{{% alert color="primary" %}}

Tieni presente che esistono una serie di politiche e pratiche generali che ti guidano su come valutare, concedere in licenza correttamente e acquistare i nostri prodotti. Li potete trovare nella sezione [Politiche di acquisto e domande frequenti](https://purchase.aspose.com/policies/).

{{% /alert %}}

## Prova gratuita o licenza temporanea

Aspose.Words è un software incredibile che gli sviluppatori possono provare prima dell'acquisto.

### Prova gratuita

La versione di valutazione è la stessa di quella acquistata: la versione di prova ottiene semplicemente la licenza quando aggiungi alcune righe di codice per applicare la licenza.

La versione di prova di Aspose.Words senza la licenza specificata fornisce la funzionalità completa del prodotto, ma inserisce una filigrana di valutazione nella parte superiore del documento durante il caricamento e il salvataggio e limita la dimensione massima del documento a poche centinaia di paragrafi.

### Licenza temporanea

Se desideri testare Aspose.Words senza le limitazioni della versione Trial, puoi anche richiedere una Licenza Temporanea di 30 giorni. Per maggiori dettagli consultare la pagina [Ottieni una licenza temporanea](https://purchase.aspose.com/temporary-license/).

## Licenza acquistata

Dopo l'acquisto, è necessario applicare il file di licenza o lo streaming. Questa sezione descrive le opzioni su come eseguire questa operazione e anche commenti su alcune domande comuni.

{{% alert color="primary" %}}

È necessario impostare la licenza:

*solo una volta per dominio dell'applicazione

* prima di utilizzare qualsiasi altra classe Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Puoi trovare informazioni sui prezzi nella pagina [Informazioni sui prezzi](https://purchase.aspose.com/pricing/words/family/).

{{% /alert %}}

### Protezione della licenza acquistata

Dopo aver acquistato una licenza, è necessario leggere attentamente le informazioni alla pagina [Protezione della licenza acquistata](https://purchase.aspose.com/orders/protecting-your-license-file) per proteggere il file di licenza. Tieni presente che questa pagina è disponibile per la visualizzazione solo se disponi di una licenza a pagamento.

### Opzioni di applicazione della licenza

Le licenze possono essere applicate da varie località:

* Percorso esplicito
* La cartella contenente lo script Python che richiama Aspose.Words per Python via .NET
* Flusso
* Come licenza misurata: un nuovo meccanismo di licenza

{{% alert color="primary" %}}

Utilizzare il metodo [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) per ottenere la licenza di un componente.

Chiamare [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) più volte non è dannoso, fa solo perdere tempo al processore.

Anche chiamare [set_metered_key](https://reference.aspose.com/words/python-net/aspose.words/metered/set_metered_key/#str_str) più volte non è dannoso, ma fa semplicemente perdere tempo al processore e può accumulare consumi in modo improprio.

{{% /alert %}}

#### Applicare la licenza utilizzando un file o un oggetto flusso

Quando sviluppi la tua applicazione, chiama [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) nel codice di avvio prima di utilizzare le classi Aspose.Words.

##### Carica una licenza da un file

Utilizzando il metodo [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/), puoi provare a trovare il file di licenza nelle risorse incorporate o nelle cartelle degli assembly per un ulteriore utilizzo.

Il seguente esempio di codice mostra come inizializzare una licenza da una cartella:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-file.py" >}}

##### Carica una licenza da un oggetto `Stream`

Il seguente esempio di codice mostra come inizializzare una licenza da un flusso utilizzando un altro metodo [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/):

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-stream.py" >}}

#### Applicare la licenza a consumo

Aspose.Words consente agli sviluppatori di applicare una chiave misurata. Si tratta di un nuovo meccanismo di licenza.

Il nuovo meccanismo di licenza verrà utilizzato insieme al metodo di licenza esistente. I clienti che desiderano ricevere una fatturazione in base all'utilizzo delle funzionalità API possono utilizzare la licenza a consumo.

Dopo aver completato tutti i passaggi necessari per ottenere questo tipo di licenza, riceverai le chiavi e non il file di licenza. Questa chiave misurata può essere applicata utilizzando la classe [Metered](https://reference.aspose.com/words/python-net/aspose.words/metered/) appositamente introdotta per questo scopo.

Non chiamare frequentemente il metodo **SetMeteredKey** in modo che questo metodo di licenza accumuli correttamente il consumo e ce lo segnali. Basta creare un'istanza della libreria Aspose.Words, chiamare **SetMeteredKey** una volta, quindi lasciare la libreria istanziata e riutilizzarla.

L'esempio di codice seguente mostra come impostare le chiavi pubbliche e private misurate:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-metered-license.py" >}}

{{% alert color="primary" %}}

Tieni presente che è necessario disporre di una connessione Internet stabile per il corretto utilizzo della licenza Metered, poiché il meccanismo Metered richiede la costante interazione con i nostri servizi per i calcoli corretti. Per maggiori dettagli fare riferimento alla sezione [Domande frequenti sulle licenze a consumo](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Modifica del nome del file di licenza

Il nome del file di licenza non deve essere "Aspose.Words.Python.NET.lic". Puoi rinominarlo a tuo piacimento e utilizzare quel nome quando imposti una licenza nella tua applicazione.

### Eccezione "Impossibile trovare il nome del file di licenza"

Quando acquisti e scarichi una licenza, il sito Web Aspose denomina il file di licenza *"Aspose.Words.Python.NET.lic"*. Puoi scaricare il file di licenza utilizzando il tuo browser. In questo caso, alcuni browser riconoscono il file di licenza come XML e vi aggiungono l'estensione .xml, quindi il nome completo del file sul tuo computer diventa *"Aspose.Words.Python.NET.lic.XML"*.

Quando Microsoft Windows è configurato per nascondere le estensioni per i tipi di file conosciuti (sfortunatamente, questa è l'impostazione predefinita nella maggior parte delle installazioni Windows), il file di licenza verrà visualizzato come *"Aspose.Words.Python.NET.lic"* in Windows Explorer. Probabilmente penserai che questo sia il vero nome del file e chiamerai [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) passandolo *"Aspose.Words.Python.NET.lic"*, ma non esiste un file del genere, da qui l'eccezione.

Per risolvere il problema, rinominare il file per rimuovere l'estensione invisibile .xml. Ti consigliamo inoltre di disattivare l'opzione "nascondi estensioni" in Microsoft Windows.

## Utilizzo di più prodotti Aspose

Se utilizzi più prodotti Aspose nella tua applicazione, come Aspose.Words e `Aspose.Cells`, ecco alcuni suggerimenti utili:

* Imposta la licenza per ciascun prodotto Aspose separatamente. Anche se disponi di un singolo file di licenza per tutti i componenti, ad esempio "Aspose.Total.lic", devi comunque chiamare [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) separatamente per ciascun prodotto Aspose che utilizzi nella tua applicazione.
* Utilizzare il nome della classe di licenza completa. Ogni prodotto Aspose ha una classe **License** nel proprio spazio dei nomi. Ad esempio, Aspose.Words ha [aspose.words.License](https://reference.aspose.com/words/python-net/aspose.words/license/) e `Aspose.Cells` ha la classe **aspose.cells.License**. L'utilizzo del nome della classe completo consente di evitare confusione su quale licenza si applica a quale prodotto.
