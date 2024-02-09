---
title: Lavorare con intestazioni e piè di pagina
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con intestazioni e piè di pagina
linktitle: Lavorare con intestazioni e piè di pagina
description: "Crea, gestisci e rimuovi intestazioni e piè di pagina in un documento utilizzando Python."
type: docs
weight: 150
url: /it/python-net/working-with-headers-and-footers/
---

Aspose.Words consente agli utenti di lavorare con intestazioni e piè di pagina in un documento. Un'intestazione è il testo posizionato nella parte superiore della pagina, mentre un piè di pagina è il testo nella parte inferiore della pagina. In genere, queste aree vengono utilizzate per inserire informazioni che dovrebbero essere ripetute su tutte o alcune pagine del documento, come numeri di pagina, data di creazione, informazioni aziendali e così via.

## Crea intestazioni o piè di pagina utilizzando DocumentBuilder

Se desideri aggiungere un'intestazione o un piè di pagina del documento a livello di codice, il modo più semplice è utilizzare la classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) per farlo.

L'esempio di codice seguente mostra come aggiungere un'intestazione e un piè di pagina per le pagine del documento:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "create-header-footer.py" >}}

## Specificare le opzioni di intestazione o piè di pagina

Quando aggiungi un'intestazione o un piè di pagina a un documento, puoi impostare alcune proprietà avanzate. Aspose.Words fornisce agli utenti le classi [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) e [HeaderFooterCollection](https://reference.aspose.com/words/python-net/aspose.words/headerfootercollection/), nonché l'enumerazione [HeaderFooterType](https://reference.aspose.com/words/python-net/aspose.words/headerfootertype/) che offre un maggiore controllo sul processo di personalizzazione di intestazione e piè di pagina.

### Specificare il tipo di intestazione o piè di pagina

Puoi specificare tre diversi tipi di intestazione e tre diversi tipi di piè di pagina per un documento:

1. Intestazione e/o piè di pagina per la prima pagina
2. Intestazione e/o piè di pagina per le pagine pari
3. Intestazione e/o piè di pagina per le pagine dispari

L'esempio di codice seguente mostra come aggiungere un'intestazione per le pagine del documento dispari:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "header-footer-type.py" >}}

### Specificare se visualizzare intestazioni o piè di pagina diversi per la prima pagina

Come detto sopra, puoi anche impostare un'intestazione o un piè di pagina diversi per la prima pagina. Per fare ciò, è necessario impostare il flag [different_first_page_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/different_first_page_header_footer/) su `true` e quindi specificare il valore **HeaderFirst** o **FooterFirst**.

L'esempio di codice seguente mostra come impostare l'intestazione solo per la prima pagina:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "different-first-page.py" >}}

### Specificare se visualizzare intestazioni o piè di pagina diversi per le pagine pari o dispari

 Successivamente, dovrai impostare intestazioni o piè di pagina diversi per le pagine pari e dispari in un documento. Per fare ciò è necessario impostare il flag [odd_and_even_pages_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/odd_and_even_pages_header_footer/) su `true` e quindi specificare i valori **HeaderPrimary** e **HeaderEven**, oppure **FooterPrimary** e **FooterEven**.

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "odd-even-pages.py" >}}

### Inserisci un'immagine con posizione assoluta nell'intestazione

Per inserire un'immagine in un'intestazione o un piè di pagina, utilizzare il tipo di intestazione **HeaderPrimary** o il tipo di piè di pagina **FooterPrimary** e il metodo [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/).

L'esempio di codice seguente mostra come aggiungere un'immagine a un'intestazione:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "insert-image.py" >}}

### Imposta le proprietà del carattere e del paragrafo per il testo dell'intestazione o del piè di pagina

Con Aspose.Words puoi impostare le proprietà del carattere e del paragrafo, utilizzare il tipo di intestazione **HeaderPrimary** o il tipo di piè di pagina **FooterPrimary**, nonché metodi e proprietà per lavorare con i caratteri e i paragrafi che utilizzi per il corpo del documento.

L'esempio di codice seguente mostra come impostare il testo nell'intestazione su Arial, grassetto, dimensione 14 e allineamento al centro:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "font-props.py" >}}

### Inserisci i numeri di pagina nell'intestazione o nel piè di pagina

Se necessario, puoi aggiungere numeri di pagina all'intestazione o al piè di pagina. A tale scopo, utilizzare il tipo di intestazione **HeaderPrimary** o il tipo di piè di pagina **FooterPrimary** e il metodo [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) per aggiungere il campo richiesto.

L'esempio di codice seguente mostra come aggiungere i numeri di pagina al piè di pagina a destra:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "page-numbers.py" >}}

### Utilizza intestazioni o piè di pagina definiti nella sezione precedente

Se devi copiare l'intestazione o il piè di pagina della sezione precedente, puoi farlo anche tu.

L'esempio di codice seguente mostra come copiare l'intestazione o il piè di pagina dalla sezione precedente:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "copy-headers-footers-from-previous-section.py" >}}

### Garantire l'aspetto dell'intestazione o del piè di pagina quando si utilizzano orientamenti e dimensioni della pagina diversi

Aspose.Words consente di fornire l'aspetto di un'intestazione o di un piè di pagina quando si utilizzano orientamenti e dimensioni di pagina diversi.

L'esempio seguente mostra come eseguire questa operazione:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

## Come rimuovere solo intestazioni o solo piè di pagina

Ciascuna sezione di un documento può avere fino a tre intestazioni e fino a tre piè di pagina (per la prima pagina, pari e dispari). Se desideri rimuovere tutte le intestazioni o tutti i piè di pagina in un documento, devi scorrere tutte le sezioni e rimuovere ciascun nodo di intestazione o nodo di piè di pagina corrispondente.

Nell'esempio di codice seguente viene illustrato come rimuovere tutti i piè di pagina da tutte le sezioni lasciando intatte le intestazioni. Puoi rimuovere solo le intestazioni in modo simile:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "remove-footers.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}