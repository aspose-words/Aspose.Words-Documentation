---
title: Lavorare con i commenti in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con i commenti
linktitle: Lavorare con i commenti
description: "Lavorare con i commenti usando Java."
type: docs
weight: 260
url: /it/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Prova online**

Puoi provare questa funzionalità con il nostro [Gratis online rimuovere annotazioni](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words consente agli utenti di lavorare con i commenti: i commenti in un documento in Aspose.Words sono rappresentati dalla classe [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/). Utilizzare anche le classi [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) per specificare l'area di testo che deve essere associata a un commento.

## Aggiungi un commento

Aspose.Words consente di aggiungere commenti in diversi modi:

1. Utilizzo della classe [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)
2. Utilizzo delle classi [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)

L'esempio di codice seguente mostra come aggiungere un commento a un paragrafo utilizzando la classe **Comment**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Nell'esempio di codice seguente viene illustrato come aggiungere un commento a un paragrafo utilizzando un'area di testo e le classi **CommentRangeStart** e **CommentRangeEnd**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Estrarre o rimuovere i commenti

L'utilizzo dei commenti in un documento Word (oltre a tenere traccia delle modifiche) è una pratica comune durante la revisione dei documenti, in particolare quando ci sono più revisori. Ci possono essere situazioni in cui l'unica cosa di cui hai bisogno da un documento sono i commenti. Supponiamo che tu voglia generare un elenco di risultati delle recensioni, o forse hai raccolto tutte le informazioni utili dal documento e vuoi semplicemente rimuovere i commenti non necessari. Potresti voler visualizzare o rimuovere i commenti di un determinato revisore.

In questo esempio, esamineremo alcuni metodi semplici sia per raccogliere informazioni dai commenti all'interno di un documento che per rimuovere i commenti da un documento. In particolare, copriremo come:

- Estrarre tutti i commenti da un documento o solo quelli fatti da un particolare autore.
- Rimuovere tutti i commenti da un documento o solo da un determinato autore.

### Come estrarre o rimuovere i commenti

Il codice in questo esempio è abbastanza semplice e tutti i metodi sono basati sullo stesso approccio. Un commento in un documento di Word è rappresentato da un oggetto `Comment` nel modello a oggetti del documento Aspose.Words. Per raccogliere tutti i commenti in un documento utilizzare il metodo [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) con il primo parametro impostato su `NodeType.Comment`. Assicurarsi che il secondo parametro del metodo **getChildNodes** sia impostato su true: questo costringe il **getChildNodes** a selezionare ricorsivamente da tutti i nodi figlio, piuttosto che raccogliere solo i figli immediati.

Per illustrare come estrarre e rimuovere i commenti da un documento, passeremo attraverso i seguenti passaggi:

1. Aprire un documento Word usando la classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)
1. Ottenere tutti i commenti dal documento in una raccolta
1. Per estrarre i commenti:
   1. Passare attraverso la raccolta utilizzando il per l'operatore
   1. Estrarre ed elencare il nome dell'autore, la data e l'ora e il testo di tutti i commenti
   1. Estrarre ed elencare il nome dell'autore, la data e l'ora e il testo dei commenti scritti da un autore specifico, in questo caso, l'autore’ks'
1. Per rimuovere i commenti:
   1. Andare indietro attraverso la raccolta usando il per l'operatore
   1. Rimuovi commenti
1. Salva le modifiche.

Useremo il seguente documento Word per questo esercizio:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Come puoi vedere, contiene diversi commenti di due autori con le iniziali "pm"e " ks".

### Come estrarre tutti i commenti

Il metodo [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) è molto utile e puoi usarlo ogni volta che hai bisogno di ottenere un elenco di nodi di documenti di qualsiasi tipo. La raccolta risultante non crea un overhead immediato perché i nodi vengono selezionati in questa raccolta solo quando si enumerano o si accedono agli elementi in essa contenuti.

Il seguente esempio di codice mostra come estrarre il nome dell'autore, la data e l'ora e il testo di tutti i commenti nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Come estrarre i commenti di un autore specificato

Dopo aver selezionato i nodi di commento in una raccolta, tutto ciò che devi fare è estrarre le informazioni necessarie. In questo esempio, le iniziali dell'autore, la data, l'ora e il testo normale del commento sono combinati in un'unica stringa; è possibile scegliere di memorizzarlo in altri modi.

Il metodo sovraccarico che estrae i commenti da un particolare autore è quasi lo stesso, controlla solo il nome dell'autore prima di aggiungere le informazioni nell'array.

L'esempio di codice seguente mostra come estrarre il nome dell'autore, la data e l'ora e il testo dei commenti dell'autore specificato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Come rimuovere i commenti

Se si rimuovono tutti i commenti, non è necessario spostarsi nella raccolta eliminando i commenti uno per uno; è possibile rimuoverli chiamando [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) nella raccolta commenti.

Il seguente esempio di codice mostra come rimuovere tutti i commenti nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Quando è necessario rimuovere selettivamente i commenti, il processo diventa più simile al codice che abbiamo usato per l'estrazione dei commenti.

L'esempio di codice seguente mostra come rimuovere i commenti dall'autore specificato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Il punto principale da evidenziare qui è l'uso dell'operatore for. A differenza della semplice estrazione, qui si desidera eliminare un commento. Un trucco adatto è quello di iterare la raccolta all'indietro dall'ultimo commento al primo. La ragione di ciò se si inizia dalla fine e si sposta all'indietro, l'indice degli elementi precedenti rimane invariato e si può tornare al primo elemento della raccolta.

Il seguente esempio di codice mostra i metodi per l'estrazione e la rimozione dei commenti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Quando viene avviato, il campione visualizza i seguenti risultati. Innanzitutto, elenca tutti i commenti di tutti gli autori, quindi elenca solo i commenti dell'autore selezionato. Infine, il codice rimuove tutti i commenti.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

Il documento di Word di output ha ora i commenti rimossi da esso:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Come rimuovere il testo tra CommentRangeStart e CommentRangeEnd

Usando Aspose.Words puoi anche rimuovere i commenti tra i nodi CommentRangeStart e CommentRangeEnd.

Il seguente esempio di codice mostra come rimuovere il testo tra CommentRangeStart e CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Aggiungere o rimuovere la risposta del commento

Il metodo [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) aggiunge una risposta a questo commento. Si noti che a causa delle limitazioni esistenti di MS Office è consentito solo un (1) livello di risposte nel documento. Un'eccezione di tipo InvalidOperationException verrà sollevata se questo metodo viene chiamato sul commento di risposta esistente.

È possibile utilizzare il metodo [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) per rimuovere la risposta specificata a questo commento.

L'esempio di codice seguente mostra come aggiungere una risposta a un commento e rimuovere la risposta di un commento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Leggi la risposta del commento

Aspose.Words supporto per leggere la risposta di un commento. La proprietà [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) restituisce una raccolta degli oggetti [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) che sono figli immediati del commento specificato.

Il seguente esempio di codice mostra come scorrere le risposte di un commento e risolverle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
