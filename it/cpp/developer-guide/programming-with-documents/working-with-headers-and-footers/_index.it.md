---
title: Lavorare con intestazioni e piè di pagina in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con intestazioni e piè di pagina
linktitle: Lavorare con intestazioni e piè di pagina
description: "Come manipolare intestazioni e piè di pagina usando C++."
type: docs
weight: 150
url: /it/cpp/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words consente agli utenti di lavorare con intestazioni e piè di pagina in un documento. Un'intestazione è un testo posizionato nella parte superiore di una pagina e un piè di pagina è testo nella parte inferiore di una pagina. In genere, queste aree vengono utilizzate per inserire informazioni che devono essere ripetute su tutte o alcune pagine del documento, ad esempio numeri di pagina, data di creazione, informazioni sulla società e così via.

## Creare intestazioni o piè di pagina usando DocumentBuilder

Se si desidera aggiungere un'intestazione o un piè di pagina del documento a livello di codice, il modo più semplice è utilizzare la classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) per farlo.

L'esempio di codice seguente mostra come aggiungere un'intestazione e un piè di pagina per le pagine del documento:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## Specificare le opzioni di intestazione o piè di pagina

Quando si aggiunge un'intestazione o un piè di pagina a un documento, è possibile impostare alcune proprietà avanzate. Aspose.Words fornisce agli utenti le classi [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) e [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/), nonché l'enumerazione [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/) che offre un maggiore controllo sul processo di personalizzazione dell'intestazione e del piè di pagina.

### Specificare il tipo di intestazione o piè di pagina

È possibile specificare tre diversi tipi di intestazione e tre diversi tipi di piè di pagina per un documento:

1. Intestazione e / o piè di pagina della prima pagina
2. Intestazione e / o piè di pagina per pagine pari
3. Intestazione e / o piè di pagina per le pagine dispari

Il seguente esempio di codice mostra come aggiungere un'intestazione per le pagine del documento dispari:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### Specificare se visualizzare intestazioni o piè di pagina diversi per la prima pagina

Come detto sopra, puoi anche impostare un'intestazione o un piè di pagina diverso per la prima pagina. Per fare ciò, è necessario impostare il flag [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) su `true` e quindi specificare il valore **HeaderFirst** o **FooterFirst**.

Il seguente esempio di codice mostra come impostare l'intestazione solo per la prima pagina:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### Specificare se visualizzare intestazioni o piè di pagina diversi per le pagine pari o dispari

 Successivamente, dovrai impostare intestazioni o piè di pagina diversi per le pagine pari e dispari in un documento. Per fare ciò, è necessario impostare il flag [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) su `true` e quindi specificare i valori **HeaderPrimary** e **HeaderEven** o **FooterPrimary** e **FooterEven**.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### Inserire un'immagine assolutamente posizionata nell'intestazione

Per inserire un'immagine in un'intestazione o in un piè di pagina, utilizzare il tipo di intestazione **HeaderPrimary** o il tipo di piè di pagina **FooterPrimary** e il metodo `InsertImage`.

L'esempio di codice seguente mostra come aggiungere un'immagine a un'intestazione:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### Imposta le proprietà del carattere e del paragrafo per il testo dell'intestazione o del piè di pagina

Con Aspose.Words è possibile impostare le proprietà font e paragrafo, utilizzare il tipo di intestazione **HeaderPrimary** o il tipo di piè di pagina **FooterPrimary**, nonché i metodi e le proprietà per lavorare con i font e i paragrafi utilizzati per il corpo del documento.

L'esempio di codice seguente mostra come impostare il testo nell'intestazione su Arial, grassetto, dimensione 14 e allineamento centrale:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### Inserire i numeri di pagina nell'intestazione o nel piè di pagina

Se necessario, è possibile aggiungere numeri di pagina all'intestazione o al piè di pagina. A tale scopo, utilizzare il tipo di intestazione **HeaderPrimary** o il tipo di piè di pagina **FooterPrimary** e il metodo [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) per aggiungere il campo richiesto.

Il seguente esempio di codice mostra come aggiungere numeri di pagina al piè di pagina a destra:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### Utilizzare Intestazioni o piè di pagina definiti nella sezione precedente

Se hai bisogno di copiare l'intestazione o il piè di pagina dalla sezione precedente, puoi farlo anche tu.

Il seguente esempio di codice mostra come copiare l'intestazione o il piè di pagina dalla sezione precedente:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### Garantire l'aspetto dell'intestazione o del piè di pagina quando si utilizzano orientamenti e dimensioni della pagina diversi

Aspose.Words consente di fornire l'aspetto di un'intestazione o di un piè di pagina quando si utilizzano orientamenti e dimensioni di pagina diverse.

L'esempio seguente mostra come eseguire questa operazione:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## Come rimuovere solo intestazioni o solo piè di pagina

Ogni sezione di un documento può avere fino a tre intestazioni e fino a tre piè di pagina (per le pagine prime, pari e dispari). Se si desidera rimuovere tutte le intestazioni o tutti i piè di pagina in un documento, è necessario scorrere tutte le sezioni e rimuovere ogni nodo di intestazione o piè di pagina corrispondente.

L'esempio di codice seguente mostra come rimuovere tutti i piè di pagina da tutte le sezioni ma lasciare intatte le intestazioni. È possibile rimuovere solo le intestazioni in modo simile:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
