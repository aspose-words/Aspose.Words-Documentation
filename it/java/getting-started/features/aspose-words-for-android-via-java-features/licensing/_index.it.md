---
title: Licensing
second_title: Aspose.Words per Java
articleTitle: Licensing
linktitle: Licensing
description: "Licensing Aspose.Words per Android via Java."
type: docs
weight: 60
url: /it/java/licensing-android/
---

A volte, per studiare meglio il sistema, si desidera immergersi nel codice il più velocemente possibile. Per rendere questo più facile, Aspose.Words fornisce diversi piani per l'acquisto o offre una prova gratuita e una licenza temporanea di 30 giorni per la valutazione.

{{% alert color="primary" %}}

Si noti che ci sono una serie di politiche e pratiche generali che ti guidano su come valutare, correttamente la licenza e l'acquisto dei nostri prodotti. Potete trovarli nel [Politiche di acquisto e FAQ](https://purchase.aspose.com/policies/) sezione.

{{% /alert %}}

## Licenza di prova gratuita o temporanea

Aspose.Words è un software incredibile che gli sviluppatori possono provare prima di acquistare. È possibile scaricare facilmente/installare Aspose.Words per Java e Aspose.Words per Android via Java [dalla pagina di download](https://releases.aspose.com/words/androidjava/) per la valutazione.

La versione di valutazione è la stessa di quella acquistata – la versione di prova diventa semplicemente autorizzata quando si aggiungono alcune linee di codice per applicare la licenza.

{{% alert color="primary" %}}

Maggiori dettagli sulla licenza di prova gratuita o temporanea per Aspose.Words per Android via Java su [Licensing e Abbonamento](/words/it/java/licensing/).

{{% /alert %}}

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
* # Una risorsa incorporata
* # Come licenza Metered – un nuovo meccanismo di licenza

#### Caricamento del file Licenza

In Aspose.Words per Android via Java, la licenza può essere [Licensing e Abbonamento](/words/it/java/licensing/), o caricato da un flusso:

1. Mettere il file di licenza in qualsiasi posizione su **/mnt/sdcard/**.
1. Creare un flusso che fa riferimento al file.
1. Passare il flusso (contenendo il file di licenza) nel `SetLicense` metodo.

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

Applicare una licenza da una risorsa incorporata. Per accedere alla licenza come risorsa per nome da una Android file pacchetto:

1. Aggiungi il file di licenza come risorsa per la tua applicazione **Responsabilità** cartella.
   Il file di licenza dovrebbe essere visibile nel **Responsabilità** cartella.
1. Accedi/carica la licenza dalla risorsa con il seguente campione di codice.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Applicare la licenza Metered

Aspose.Words consente agli sviluppatori di applicare la chiave misurata. È un nuovo meccanismo di licenza. Il nuovo meccanismo di licenza verrà utilizzato insieme al metodo di licenza esistente. Quei clienti che vogliono essere fatturati in base all'utilizzo del API le caratteristiche possono utilizzare la licenza misurata.

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

Il nome del file di licenza non deve essere 'Aspose.Words.Android.Java.lic'. È possibile rinominarlo a qualsiasi cosa ti piace e utilizzare quel nome quando si chiama `License.SetLicense`.

### Eccezione - Non trovare il nome della licenza

Quando si scarica una licenza che hai acquistato, il file di licenza viene chiamato **Aspose.Words.Android.Java.lic** per impostazione predefinita. Il file di licenza viene scaricato tramite il browser e alcuni browser riconoscono il file di licenza come XML e appendono un'estensione .xml al nome. Il file scaricato diventa **Aspose.Words.Android.Java.lic.XML**.

Quando Microsoft Windows è configurato per nascondere le estensioni dei tipi di file noti (purtroppo questo è predefinito nella maggior parte Windows installazioni), il file di licenza è elencato come **Aspose.Words.Android.Java.lic** in Windows Explorer. Sembra il nome del file previsto. Se chiami `License.SetLicense` e passare 'Aspose.Words.Android.Java.lic', vedrai e l'eccezione perché non c'è un tale file

Per risolvere il problema, rinominare il file per rimuovere l'estensione .xml invisibile. Si consiglia di disattivare l'opzione "hide extensions" in Microsoft Windows.

## Utilizzo di prodotti multipli

Se si utilizzano diversi prodotti Aspose in un'applicazione, ad esempio Aspose.Words e `Aspose.Cells`, qui ci sono alcuni consigli utili.

- Impostare la licenza per ogni prodotto Aspose separatamente.
  Anche se si dispone di un unico file di licenza per tutti i componenti, per esempio 'Aspose. Totale.Android.Java.lic', devi ancora chiamare il `License.SetLicense` metodo separatamente per ogni prodotto Aspose.
- Utilizzare il nome della classe di licenza completamente qualificato.
  Ogni Aspose prodotto ha un `License` classe nel suo namespace. Per esempio, Aspose.Words ha com.aspose.parole. Licenza e `Aspose.Cells` ha com.aspose.cellule. Classe di licenza. Utilizzando il nome di classe pienamente qualificato consente di evitare qualsiasi confusione su quale licenza è applicata a quale prodotto.
