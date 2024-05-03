---
title: Lavorare con i commenti Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con i commenti
linktitle: Lavorare con i commenti
description: "Lavorare con commenti utilizzando Java."
type: docs
weight: 260
url: /it/java/working-with-comments/
---

{{% alert color="primary" %}}

**Prova online**

Puoi provare questa funzionalità con la nostra [Gratis online rimuovere annotazioni](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words consente agli utenti di lavorare con commenti – commenti in un documento in Aspose.Words sono rappresentati da [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) classe. Anche utilizzare [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) classi per specificare la regione del testo che dovrebbe essere associata a un commento.

## Aggiungi un commento

Aspose.Words consente di aggiungere commenti in diversi modi:

1. Usare il [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) classe
2. Usare il [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) classi

Il seguente esempio di codice mostra come aggiungere un commento a un paragrafo utilizzando il **Comment** classe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Il seguente esempio di codice mostra come aggiungere un commento a un paragrafo utilizzando una regione di testo e **CommentRangeStart** e **CommentRangeEnd** classi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Estrarre o rimuovere i commenti

Utilizzando i commenti in un documento di Word (oltre ai cambiamenti di traccia) è una pratica comune durante la revisione dei documenti, in particolare quando ci sono più recensori. Ci possono essere situazioni in cui l'unica cosa di cui hai bisogno da un documento è i commenti. Dì che si desidera generare un elenco di risultati di recensioni, o forse avete raccolto tutte le informazioni utili dal documento e si desidera semplicemente rimuovere commenti inutili. Si consiglia di visualizzare o rimuovere i commenti di un particolare recensore.

In questo esempio, stiamo andando a guardare alcuni metodi semplici per sia raccogliere informazioni dai commenti all'interno di un documento e per rimuovere i commenti da un documento. In particolare, copriremo come:

- Estrarre tutti i commenti da un documento o solo quelli fatti da un autore particolare.
- Rimuovere tutti i commenti da un documento o solo da un autore particolare.

### Come estrarre o rimuovere i commenti

Il codice in questo campione è abbastanza semplice e tutti i metodi si basano sullo stesso approccio. Un commento in un documento di Word è rappresentato da un `Comment` oggetto nel Aspose.Words documento oggetto modello. Per raccogliere tutti i commenti in un documento utilizzare [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) metodo con il primo parametro impostato a `NodeType.Comment`. Assicurarsi che il secondo parametro del **ottenereNodi bambini** metodo è impostato su true: questo forza il **ottenereNodi bambini** selezionare da tutti i nodi bambino ricorsivamente, piuttosto che solo raccogliere i bambini immediati.

Per illustrare come estrarre e rimuovere i commenti da un documento, passeremo attraverso i seguenti passaggi:

1. Aprire un documento di Word utilizzando [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe
1. Ottenere tutti i commenti dal documento in una raccolta
1. Per estrarre commenti:
   1. Passare attraverso la raccolta utilizzando l'operatore
   1. Estrarre e elencare il nome dell'autore, la data e il testo di tutti i commenti
   1. Estrarre e elencare il nome dell'autore, la data e il testo dei commenti scritti da uno specifico autore, in questo caso, l'autore 'ks'
1. Per rimuovere i commenti:
   1. Vai all'indietro attraverso la raccolta utilizzando l'operatore
   1. Rimuovere i commenti
1. Salva i cambiamenti.

Useremo il seguente documento di Word per questo esercizio:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Come potete vedere, contiene diversi commenti da due autori con le iniziali "pm" e "ks".

### Come estrarre tutti i commenti

The [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) metodo è molto utile e si può utilizzare ogni volta che è necessario per ottenere un elenco di nodi di documento di qualsiasi tipo. La raccolta risultante non crea un overhead immediato perché i nodi vengono selezionati in questa raccolta solo quando si enumerate o accedete agli elementi in esso.

Il seguente esempio di codice mostra come estrarre il nome dell'autore, data&time e testo di tutti i commenti nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Come estrarre i commenti di un autore specificato

Dopo aver selezionato i nodi Comment in una raccolta, tutto quello che devi fare è estrarre le informazioni di cui hai bisogno. In questo esempio, le iniziali dell'autore, la data, l'ora e il testo normale del commento sono combinati in una stringa; si potrebbe scegliere di memorizzarlo in alcuni altri modi invece.

Il metodo sovraccarico che estrae i commenti da un particolare autore è quasi lo stesso, controlla solo il nome dell'autore prima di aggiungere le informazioni nell'array.

Il seguente esempio di codice mostra come estrarre il nome dell'autore, data&time e testo dei commenti da parte dell'autore specificato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Come rimuovere i commenti

Se stai rimuovendo tutti i commenti, non c'è bisogno di passare attraverso la raccolta cancellando commenti uno per uno; è possibile rimuoverli chiamando [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) sulla raccolta dei commenti.

Il seguente esempio di codice mostra come rimuovere tutti i commenti nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Quando è necessario rimuovere selettivamente i commenti, il processo diventa più simile al codice utilizzato per l'estrazione dei commenti.

Il seguente esempio di codice mostra come rimuovere i commenti dall'autore specificato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Il punto principale da evidenziare è l'uso dell'operatore. A differenza della semplice estrazione, qui si desidera eliminare un commento. Un trucco adatto è quello di iterare la collezione all'indietro dall'ultimo Commento al primo. La ragione di questo se si inizia dalla fine e si sposta all'indietro, l'indice degli articoli precedenti rimane invariato, e si può lavorare la strada di ritorno al primo elemento della raccolta.

Il seguente esempio di codice mostra i metodi per l'estrazione e la rimozione dei commenti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Quando viene lanciato, il campione visualizza i seguenti risultati. In primo luogo, elenca tutti i commenti di tutti gli autori, poi elenca i commenti dell'autore selezionato solo. Infine, il codice rimuove tutti i commenti.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

Il documento di Word di output ha ora commenti rimossi da esso:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Come rimuovere il testo tra CommentRangeStart e CommentRangeEnd

Utilizzo Aspose.Words è inoltre possibile rimuovere i commenti tra i nodi CommentRangeStart e CommentRangeEnd.

Il seguente esempio di codice mostra come rimuovere il testo tra CommentRangeStart e CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Aggiungi o Rimuovi il commento

The [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) metodo aggiunge una risposta a questo commento. Si prega di notare che a causa delle limitazioni esistenti MS Office solo un (1) livello di risposte è consentito nel documento. Un'eccezione di tipo InvalidOperationException sarà sollevato se questo metodo è chiamato sul commento di risposta esistente.

È possibile utilizzare [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) metodo per rimuovere la risposta specificata a questo commento.

Il seguente esempio di codice mostra come aggiungere una risposta a un commento e rimuovere la risposta di un commento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Leggi il commento

Aspose.Words il sostegno a leggere la risposta di un Commento. The [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) proprietà restituisce una raccolta della [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) oggetti che sono figli immediati del commento specificato.

Il seguente esempio di codice mostra come iterare attraverso le risposte di un commento e risolverle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}