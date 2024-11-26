---
title: Mail Merge con XML Origine dati in C#
second_title: Aspose.Words per .NET
articleTitle: Mail Merge con origine dati XML
linktitle: Mail Merge con origine dati XML
type: docs
description: "Utilizzare una varietà di origini dati quando si esegue un'operazione Mail Merge, incluso un file XML utilizzando C#. Il vantaggio principale dell'utilizzo di XML è la possibilità di definire una gerarchia direttamente nel documento."
keywords: "mail merge xml data source c#"
weight: 30
url: /it/net/mail-merge-with-xml-data-source/
timestamp: 2024-07-11-08-07-06
---

È possibile utilizzare una varietà di origini dati quando si esegue un'operazione Mail Merge, incluso un file XML. Il vantaggio principale dell'utilizzo di XML è la possibilità di definire una gerarchia direttamente nel documento e quindi semplicemente passarla a Aspose.Words.

In questo articolo verrà descritto come leggere i dati da un file XML anziché direttamente da un database e includere XML come origine dati per eseguire un'operazione Mail Merge.

## Vantaggi di XML come origine dati

XML le origini dati sono molto utili per archiviare i dati senza il sovraccarico di un database. Sono ottimi per le applicazioni offline in cui gli utenti devono aggiungere, modificare ed eliminare dati quando non possono connettersi a un database.

XML i dati possono essere una buona alternativa ai database relazionali, specialmente se si lavora con applicazioni Web. La maggior parte dei servizi Web utilizza XML per scambiare informazioni. I database orientati a XML vengono utilizzati attivamente sul mercato attuale e gli sviluppatori di database relazionali stanno aggiungendo la compatibilità XML ai loro prodotti per avere un ritorno del database XML.

Poiché XML memorizza i dati in formato testo normale, l'archiviazione è indipendente dalla piattaforma. Pertanto, i dati possono essere facilmente esportati, importati o semplicemente spostati. XML è popolare come origine dati perché offre un modo per preservare il significato semantico dei dati durante la comunicazione tra diverse applicazioni.

## Riempimento di un modello di unione con dati da XMLutilizzando DataSet

XML è lo standard universale per lo scambio di dati e i formati di documento Microsoft Word sono i formati più popolari per i modelli Mail Merge. Pertanto, la possibilità di eseguire un Mail Merge da un file XML a un documento modello Word è diventato un requisito comune.

Microsoft Word non fornisce un metodo diretto per lavorare con dati XML come origine dati per un'operazione Mail Merge, mentre Aspose.Words consente di eseguire un'operazione Mail Merge con dati da un'origine dati XML. Si noti che la struttura del documento XML può anche essere variata e i dati verranno comunque letti correttamente. Ciò consente di unire facilmente diversi tipi di documenti XML.

Utilizzare il metodo `ReadXML` per leggere lo schema e i dati XML nell'oggetto `DataSet`. Questo oggetto viene quindi utilizzato come origine dati per un mail merge.

{{% alert color="primary" %}}

È possibile utilizzare gli stessi modelli per diverse origini dati.

{{% /alert %}}

Il seguente XML contiene i dati necessari per compilare un modello di unione:

{{< highlight csharp >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

L'esempio di codice seguente mostra come caricare i dati XML in DataSet e quindi utilizzarli come origine dati:

{{< gist "aspose-words-gists" "0441f68c5209fec25c47d1a0a203fbb0" "xml-mail-merge.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

È possibile notare la differenza tra il modello prima di eseguire l'operazione Mail Merge:

<img src="fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset" style="width:250px"/>

E dopo aver eseguito l'operazione Mail Merge:

<img src="fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml" style="width:285px"/>
