---
title: Licenze e abbonamenti
second_title: Aspose.Words per C++
articleTitle: Licenze e abbonamenti
linktitle: Licenze e abbonamenti
description: "Aspose.Words per С++ fornisce diversi piani di acquisto o offre una prova gratuita e una licenza temporanea di 30 giorni per la valutazione utilizzando i criteri di licenza e abbonamento."
type: docs
weight: 60
url: /it/cpp/licensing/
---

A volte, per studiare meglio il sistema, si desidera immergersi nel codice il più velocemente possibile. Per semplificare, Aspose.Words fornisce diversi piani di acquisto o offre una prova gratuita e una licenza temporanea di 30 giorni per la valutazione.

{{% alert color="primary" %}}

Tieni presente che esistono una serie di politiche e pratiche generali che ti guidano su come valutare, concedere in licenza e acquistare correttamente i nostri prodotti. Puoi trovarli nel [Politiche di acquisto e FAQ](https://purchase.aspose.com/policies/) sezione.

{{% /alert %}}

## Prova gratuita o licenza temporanea

Aspose.Words è un software incredibile che gli sviluppatori possono provare prima di acquistare.

### Prova gratuita

La versione di valutazione è la stessa di quella acquistata-il [Versione di prova](https://releases.aspose.com/words/) diventa semplicemente concesso in licenza quando si aggiungono alcune righe di codice per applicare la licenza.

La versione di prova di Aspose.Words senza la licenza specificata fornisce funzionalità complete del prodotto, ma inserisce una filigrana valutativa nella parte superiore del documento al caricamento e al salvataggio e limita la dimensione massima del documento a poche centinaia di paragrafi.

### Licenza temporanea

Se si desidera testare Aspose.Words senza le limitazioni della versione di prova, è anche possibile richiedere una licenza temporanea di 30 giorni. Per maggiori dettagli, vedere il [Ottenere una licenza temporanea](https://purchase.aspose.com/temporary-license/) pagina.

## Licenza acquistata

Dopo l'acquisto, è necessario applicare il file di licenza o includere il file di licenza come risorsa incorporata. Questa sezione descrive le opzioni su come questo può essere fatto e commenta anche alcune domande comuni.

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
* La cartella contenente il file `Aspose.Words_`\*.dll
* La cartella contenente l'assembly che ha chiamato `Aspose.Words_`\*.DLL
* La cartella contenente la voce assembly (il tuo *.exe*)
* Una risorsa incorporata nell'assembly è chiamata `Aspose.Words_`\*.DLL

Spesso il modo più semplice per impostare una licenza è posizionare il file di licenza nella stessa cartella di `Aspose.Words_` \*.dll e specificare solo il nome del file senza il percorso.

{{% alert color="primary" %}}

Utilizzare il metodo [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) per concedere in licenza un componente.

Chiamare **SetLicense** più volte non è dannoso, fa solo perdere tempo al processore.

{{% /alert %}}

#### Applicare la licenza utilizzando un file o un oggetto Stream

Durante lo sviluppo dell'applicazione, chiamare **SetLicense** nel codice di avvio prima di utilizzare le classi Aspose.Words.

##### Caricare una licenza da un file

Utilizzando il metodo [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/), è possibile cercare di trovare il file di licenza nelle risorse incorporate o nelle cartelle assembly per un ulteriore utilizzo.

Il seguente esempio di codice mostra come inizializzare una licenza da una cartella:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Caricare una licenza da un oggetto Stream

L'esempio di codice seguente mostra come inizializzare una licenza da un flusso utilizzando un altro metodo [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Includere il file di licenza come risorsa incorporata

Un modo pulito per impacchettare una licenza con la tua applicazione e assicurarti che non vada persa è includerla come risorsa incorporata. Il modo in cui incorporare e utilizzare le risorse dipende dalla piattaforma di destinazione.

##### Windows

Supponiamo che tu abbia aggiunto la licenza come risorsa come mostrato di seguito.

```
risorsa.h
# define IDR_ASPOSE_WORDS_LIC 101
```

```
risorsa.rc
IDR_ASPOSE_WORDS_LIC RCDATA " Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

È possibile leggere su come lavorare con i file di risorse sul [Lavorare con i file di risorse](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) pagina.

{{% /alert %}}

L'esempio di codice seguente mostra come inizializzare una licenza da una risorsa incorporata utilizzando il metodo [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

C'è un modo simile per incorporare le risorse su Linux in un eseguibile.

{{% alert color="primary" %}}

Per ulteriori informazioni, vedere [Incorporare le risorse nell'eseguibile utilizzando GCC](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

Nell'esempio di codice seguente viene illustrato come inizializzare una licenza da una risorsa incorporata utilizzando il metodo [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### Modifica del nome del file di licenza

Il nome del file di licenza non deve essere "Aspose.Words.LIC". È possibile rinominarlo a proprio piacimento e utilizzare quel nome quando si imposta una licenza nell'applicazione.

### Eccezione" Impossibile trovare il nome del file di licenza"

Quando si acquista e si scarica una licenza, il sito Web Aspose assegna un nome al file di licenza * " Aspose.Words.LIC"*. Si scarica il file di licenza utilizzando il browser. In questo caso, alcuni browser riconoscono il file di licenza come XML e aggiungono il file .estensione xml ad esso, in modo che il nome completo del file sul computer diventa *"Aspose.Words.lic.XML"*.

Quando Microsoft Windows è configurato per nascondere le estensioni per i tipi di file noti (sfortunatamente, questo è il valore predefinito nella maggior parte delle installazioni Windows), il file di licenza apparirà come *"Aspose.Words. LIC" * in Windows Explorer. Probabilmente penserai che questo è il vero nome del file e chiamerai **SetLicense** passandolo * " Aspose.Words.LIC"*, ma non esiste un tale file, quindi l'eccezione.

Per risolvere il problema, rinominare il file per rimuovere l'invisibile .estensione xml. Si consiglia inoltre di disattivare l'opzione" nascondi estensioni " in Microsoft Windows.

## Utilizzo di più prodotti Aspose

Se si utilizzano più prodotti Aspose nell'applicazione, ad esempio Aspose.Words e `Aspose.Cells`, ecco alcuni suggerimenti utili:

* Impostare la Licenza per ciascun prodotto Aspose separatamente. Anche se si dispone di un singolo file di licenza per tutti i componenti, ad esempio "Aspose.Totale.lic", è comunque necessario chiamare **SetLicense** separatamente per ogni prodotto Aspose utilizzato nell'applicazione.
* Utilizzare il nome della classe di licenza completa. Ogni prodotto Aspose ha una classe **License** nel proprio spazio dei nomi. Ad esempio, Aspose.Words ha [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) e `Aspose.Cells` ha `Aspose.Cells`.Classe di licenza. L'utilizzo del nome di classe completo consente di evitare confusione su quale licenza si applica a quale prodotto.
