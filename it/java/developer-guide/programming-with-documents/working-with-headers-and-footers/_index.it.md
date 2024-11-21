---
title: Lavorare con Headers e Footers in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Headers e Footers
linktitle: Lavorare con Headers e Footers
description: "Come manipolare intestazioni e piè di pagina utilizzando Java."
type: docs
weight: 150
url: /it/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words consente agli utenti di lavorare con intestazioni e piè di pagina in un documento. Un'intestazione è il testo che viene posizionato nella parte superiore di una pagina, e un piè di pagina è il testo nella parte inferiore di una pagina. Tipicamente, queste aree sono utilizzate per inserire informazioni che devono essere ripetute su tutte o alcune pagine del documento, come numeri di pagina, data di creazione, informazioni aziendali e così via.

## Crea intestazioni o piè di pagina utilizzando DocumentBuilder

Se si desidera aggiungere un intestazione del documento o un piè di pagina programmaticamente, il modo più semplice è quello di utilizzare [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) classe per farlo.

Il seguente esempio di codice mostra come aggiungere un intestazione e un piè di pagina per le pagine dei documenti:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Specificare le opzioni di intestazione o piè di pagina

Quando si aggiunge un'intestazione o un piè di pagina a un documento, è possibile impostare alcune proprietà avanzate. Aspose.Words fornisce agli utenti [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) e [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) classi, così come [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) enumerazione che dà più controllo sul processo di personalizzazione intestazione e piè di pagina.

### Specificare il tipo di intestazione o piè di pagina

È possibile specificare tre diversi tipi di intestazione e tre diversi tipi di piè di pagina per un documento:

1. Intestazione e/o piè di pagina per la prima pagina
2. Intestazione e/o piè di pagina per pagine pari
3. Intestazione e/o piè di pagina per pagine dispari

Il seguente esempio di codice mostra come aggiungere un'intestazione per pagine di documenti dispari:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Specificare se visualizzare diverse intestazioni o piè di pagina per la prima pagina

Come detto sopra, è anche possibile impostare una diversa intestazione o piè di pagina per la prima pagina. Per fare questo, è necessario impostare il [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) da vedere `true` e poi specyfy il **HeaderFirst** o **FooterFirst** valore.

Il seguente esempio di codice mostra come impostare l'intestazione solo per la prima pagina:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Specificare Se visualizzare diverse intestazioni o piè di pagina per pagine Odd o anche

 Successivamente, si desidera impostare diverse intestazioni o piè di pagina per pagine dispari e anche in un documento. Per fare questo, è necessario impostare il [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) da vedere `true` e poi specyfy i valori **HeaderPrimary** e **HeaderEven**, o **FooterPrimary** e **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Inserisci un Assolutamente posizionato Immagine nell'intestazione

Per posizionare un'immagine in un'intestazione o un piè di pagina, utilizzare il **HeaderPrimary** tipo di intestazione o **FooterPrimary** tipo di piè di pagina e [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) metodo.

Il seguente esempio di codice mostra come aggiungere un'immagine a un'intestazione:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Impostare le proprietà del carattere e del paragrafo per l'intestazione o il testo del piè di pagina

Con Aspose.Words è possibile impostare le proprietà del carattere e del paragrafo, utilizzare **HeaderPrimary** tipo di intestazione o **FooterPrimary** tipo di piè di pagina, così come metodi e proprietà per lavorare con i font e i paragrafi che si utilizza per l'organismo del documento.

Il seguente esempio di codice mostra come impostare il testo nell'intestazione ad Arial, grassetto, dimensione 14 e allineamento centrale:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Inserisci numeri di pagina nell'intestazione o nel piè di pagina

Se necessario, è possibile aggiungere numeri di pagina all'intestazione o piè di pagina. Per fare questo, usare il **HeaderPrimary** tipo di intestazione o **FooterPrimary** tipo di piè di pagina e [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) metodo per aggiungere il campo richiesto.

Il seguente esempio di codice mostra come aggiungere i numeri di pagina al piè di pagina sulla destra:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Utilizzare intestazioni o piè di pagina definiti nella sezione precedente

Se è necessario copiare l'intestazione o il piè di pagina dalla sezione precedente, è possibile farlo anche.

Il seguente esempio di codice mostra come copiare l'intestazione o il piè di pagina dalla sezione precedente:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Assicurare l'aspetto intestazione o piè di pagina quando si utilizzano diverse Orientamenti di pagina e dimensione della pagina

Aspose.Words consente di fornire l'aspetto di un intestazione o piè di pagina quando si utilizzano diversi orientamenti e dimensioni pagina.

L'esempio seguente mostra come farlo:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Come Rimuovere Solo Intestazioni o Solo Piedi

Ogni sezione in un documento può avere fino a tre intestazioni e fino a tre piè di pagina (per prima, anche e pagine dispari). Se si desidera rimuovere tutte le intestazioni o tutti i piè di pagina in un documento, è necessario passare attraverso tutte le sezioni e rimuovere ogni nodo intestazione corrispondente o nodo piè di pagina.

Il seguente esempio di codice mostra come rimuovere tutti i piè di pagina da tutte le sezioni, ma lasciare intatte le intestazioni. È possibile rimuovere solo intestazioni in modo simile:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
