---
title: Licenze
second_title: Aspose.Words per Java
articleTitle: Licenze
linktitle: Licenze
description: "Licenza Aspose.Words per Android tramite Java."
type: docs
weight: 60
url: /it/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

A volte, per studiare meglio il sistema, si desidera immergersi nel codice il più velocemente possibile. Per semplificare, Aspose.Words fornisce diversi piani di acquisto o offre una prova gratuita e una licenza temporanea di 30 giorni per la valutazione.

{{% alert color="primary" %}}

Tieni presente che esistono una serie di politiche e pratiche generali che ti guidano su come valutare, concedere in licenza e acquistare correttamente i nostri prodotti. Puoi trovarli nel [Politiche di acquisto e FAQ](https://purchase.aspose.com/policies/) sezione.

{{% /alert %}}

## Prova gratuita o licenza temporanea

Aspose.Words è un software incredibile che gli sviluppatori possono provare prima di acquistare. È possibile scaricare/installare facilmente Aspose.Words per Java e Aspose.Words per Android tramite Java [dalla pagina di download](https://releases.aspose.com/words/androidjava/) per la valutazione.

La versione di valutazione è la stessa di quella acquistata: la versione di prova diventa semplicemente concessa in licenza quando aggiungi alcune righe di codice per applicare la licenza.

{{% alert color="primary" %}}

Ulteriori informazioni sulla versione di prova gratuita o sulla licenza temporanea per Aspose.Words per Android tramite Java su [la pagina Licenze e abbonamenti](/words/java/licensing/).

{{% /alert %}}

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
* Una risorsa incorporata
* Come una licenza misurata - un nuovo meccanismo di licenza

#### Caricamento del file di licenza

In Aspose.Words per Android tramite Java, la licenza può essere [incorporato come risorsa](/words/java/licensing/), o caricato da un flusso:

1. Mettere il file di licenza in qualsiasi posizione su **/mnt/sdcard/**.
1. Creare un flusso che fa riferimento al file.
1. Passare il flusso (contenente il file di licenza) nel metodo `SetLicense`.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Applicare una licenza da una risorsa incorporata. Per accedere alla licenza come risorsa per nome da un file di pacchetto Android:

1. Aggiungere il file di licenza come risorsa alla cartella **res/raw** dell'applicazione.
   Il file di licenza deve essere visibile nella cartella **res/raw**.
1. Accedere / caricare la licenza dalla risorsa con il seguente esempio di codice.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Applicare la licenza misurata

Aspose.Words consente agli sviluppatori di applicare la chiave misurata. Si tratta di un nuovo meccanismo di licenza. Il nuovo meccanismo di licenza verrà utilizzato insieme al metodo di licenza esistente. I clienti che desiderano essere fatturati in base all'utilizzo delle funzionalità API possono utilizzare la licenza con misurazione.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Modifica del nome del file di licenza

Il nome del file di licenza non deve essere ' Aspose.Words.Android.Java.lic'. Puoi rinominarlo come preferisci e usare quel nome quando chiami `License.SetLicense`.

### Eccezione-Impossibile trovare il nome del file di licenza

Quando si scarica una licenza acquistata, il file di licenza viene denominato **Aspose.Words.Android.Java.lic** per impostazione predefinita. Il file di licenza viene scaricato tramite il browser e alcuni browser riconoscono il file di licenza come XML e aggiungono un file .estensione xml al nome. Il file scaricato diventa **Aspose.Words.Android.Java.lic.XML**.

Quando Microsoft Windows è configurato per nascondere le estensioni di tipi di file noti (sfortunatamente questo è predefinito nella maggior parte delle installazioni Windows), il file di licenza è elencato come **Aspose.Words.Android.Java.lic** in Windows Explorer. Sembra il nome del file previsto. Se chiami `License.SetLicense` e passi 'Aspose.Words.Android.Java.lic', vedrai e eccezione perché non esiste un file del genere.

Per risolvere il problema, rinominare il file per rimuovere l'invisibile .estensione xml. Si consiglia di disabilitare l'opzione" nascondi estensioni " in Microsoft Windows.

## Utilizzo di più prodotti Aspose

Se si utilizzano diversi prodotti Aspose in un'applicazione, ad esempio Aspose.Words e `Aspose.Cells`, ecco alcuni suggerimenti utili.

- Impostare la licenza per ciascun prodotto Aspose separatamente.
  Anche se si dispone di un singolo file di licenza per tutti i componenti, ad esempio ' Aspose.Total.Android.Java.lic', è ancora necessario chiamare il metodo `License.SetLicense` separatamente per ogni prodotto Aspose.
- Utilizzare il nome della classe di licenza completamente qualificato.
  Ogni prodotto Aspose ha una classe `License` nel suo spazio dei nomi. Ad esempio, Aspose.Words ha com.aspose.parola.Licenza e `Aspose.Cells` ha com.aspose.cellula.Classe di licenza. L'utilizzo del nome della classe fullyqualified consente di evitare qualsiasi confusione su quale licenza viene applicata a quale prodotto.
