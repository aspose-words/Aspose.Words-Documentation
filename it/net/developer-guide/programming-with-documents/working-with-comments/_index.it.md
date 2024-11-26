---
title: Lavorare con i commenti in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con i commenti
linktitle: Lavorare con i commenti
description: "Lavorare con i commenti utilizzando C#."
type: docs
weight: 260
url: /it/net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Prova on-line**

Puoi provare questa funzionalità con il nostro [Rimozione online gratuita delle annotazioni](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words consente agli utenti di lavorare con i commenti: i commenti in un documento in Aspose.Words sono rappresentati dalla classe [Comment](https://reference.aspose.com/words/it/net/aspose.words/comment/). Utilizzare anche le classi [CommentRangeStart](https://reference.aspose.com/words/it/net/aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/it/net/aspose.words/commentrangeend/) per specificare l'area di testo da associare a un commento.

## Aggiungi un commento

Aspose.Words ti consente di aggiungere commenti in diversi modi:

1. Utilizzando la classe [Comment](https://reference.aspose.com/words/it/net/aspose.words/comment/)
2. Utilizzando le classi [CommentRangeStart](https://reference.aspose.com/words/it/net/aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/it/net/aspose.words/commentrangeend/)

L'esempio di codice seguente mostra come aggiungere un commento a un paragrafo utilizzando la classe **Comment**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

L'esempio di codice seguente mostra come aggiungere un commento a un paragrafo utilizzando un'area di testo e le classi **CommentRangeStart** e **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Estrai o rimuovi commenti

L'utilizzo dei commenti in un documento Word (oltre alle revisioni) è una pratica comune durante la revisione dei documenti, in particolare quando sono presenti più revisori. Possono esserci situazioni in cui l'unica cosa di cui hai bisogno da un documento sono i commenti. Supponiamo che tu voglia generare un elenco dei risultati della revisione o forse che tu abbia raccolto tutte le informazioni utili dal documento e desideri semplicemente rimuovere i commenti non necessari. Potresti voler visualizzare o rimuovere i commenti di un particolare revisore.

In questo esempio esamineremo alcuni semplici metodi sia per raccogliere informazioni dai commenti all'interno di un documento sia per rimuovere commenti da un documento. Nello specifico tratteremo come:

- Estrarre tutti i commenti da un documento o solo quelli fatti da un particolare autore
- Rimuovere tutti i commenti da un documento o solo da un particolare autore

### Come estrarre o rimuovere commenti

Il codice in questo esempio è in realtà piuttosto semplice e tutti i metodi si basano sullo stesso approccio. Un commento in un documento Word è rappresentato da un oggetto [Comment](https://reference.aspose.com/words/it/net/aspose.words/comment/) nel modello a oggetti del documento Aspose.Words. Per raccogliere tutti i commenti in un documento utilizzare il metodo [GetChildNodes](https://reference.aspose.com/words/it/net/aspose.words/compositenode/getchildnodes/) con il primo parametro impostato su [NodeType.Comment](https://reference.aspose.com/words/it/net/aspose.words/nodetype/). Assicurati che il secondo parametro del metodo **GetChildNodes** sia impostato su true: questo forza il **GetChildNodes** a selezionare ricorsivamente da tutti i nodi figli, anziché raccogliere solo i figli immediati.

Per illustrare come estrarre e rimuovere commenti da un documento, eseguiremo i seguenti passaggi:

1. Apri un documento Word utilizzando la classe [Document](https://reference.aspose.com/words/it/net/aspose.words/document/)
2. Ottieni tutti i commenti dal documento in una raccolta
3. Per estrarre i commenti:
   1. Esamina la raccolta utilizzando l'operatore foreach
   2. Estrai ed elenca il nome dell'autore, la data, l'ora e il testo di tutti i commenti
   3. Estrai ed elenca il nome dell'autore, la data e l'ora e il testo dei commenti scritti da un autore specifico, in questo caso l'autore 'ks'
4. Per rimuovere i commenti:
   1. Vai indietro nella raccolta utilizzando l'operatore for
   2. Rimuovere i commenti
5. Salva le modifiche

### Come estrarre tutti i commenti

Il metodo **GetChildNodes** è molto utile e puoi usarlo ogni volta che hai bisogno di ottenere un elenco di nodi di documenti di qualsiasi tipo. La raccolta risultante non crea un sovraccarico immediato poiché i nodi vengono selezionati in questa raccolta solo quando si enumerano o si accedono agli elementi al suo interno.

Il seguente esempio di codice mostra come estrarre il nome dell'autore, la data e l'ora e il testo di tutti i commenti nel documento:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Come estrarre i commenti di un autore specifico

Dopo aver selezionato i nodi **Comment** in una raccolta, tutto ciò che devi fare è estrarre le informazioni di cui hai bisogno. In questo esempio, le iniziali dell'autore, la data, l'ora e il testo semplice del commento sono combinati in un'unica stringa; potresti invece scegliere di memorizzarlo in altri modi.

Il metodo sovraccaricato che estrae i commenti da un particolare autore è quasi lo stesso, controlla semplicemente il nome dell'autore prima di aggiungere le informazioni nell'array.

Il seguente esempio di codice mostra come estrarre il nome dell'autore, la data e l'ora e il testo dei commenti dell'autore specificato:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Come rimuovere i commenti

Se stai rimuovendo tutti i commenti, non è necessario spostarti nella raccolta eliminando i commenti uno per uno. Puoi rimuoverli chiamando il metodo [Clear](https://reference.aspose.com/words/it/net/aspose.words/nodecollection/clear/) nella raccolta dei commenti.

L'esempio di codice seguente mostra come rimuovere tutti i commenti nel documento:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Quando è necessario rimuovere selettivamente i commenti, il processo diventa più simile al codice che abbiamo utilizzato per l'estrazione dei commenti.

Il seguente esempio di codice mostra come rimuovere i commenti dell'autore specificato:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Il punto principale da evidenziare qui è l'uso dell'operatore for. A differenza della semplice estrazione, qui si desidera eliminare un commento. Un trucco adatto è ripetere la raccolta all'indietro dall'ultimo commento al primo. Il motivo di ciò se inizi dalla fine e ti sposti all'indietro, l'indice degli elementi precedenti rimane invariato e puoi tornare al primo elemento della raccolta.

Il seguente esempio di codice mostra i metodi per l'estrazione e la rimozione dei commenti:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Come rimuovere un commento tra CommentRangeStart e CommentRangeEnd

Utilizzando Aspose.Words puoi anche rimuovere i commenti tra i nodi **CommentRangeStart** e **CommentRangeEnd**.

L'esempio di codice seguente mostra come rimuovere il testo tra **CommentRangeStart** e **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Aggiungi o rimuovi la risposta al commento

Il metodo [AddReply](https://reference.aspose.com/words/it/net/aspose.words/comment/addreply/) aggiunge una risposta a questo commento. Tieni presente che, a causa delle limitazioni esistenti di Microsoft Office, nel documento è consentito solo 1 livello di risposte. Verrà sollevata un'eccezione di tipo *InvalidOperationException* se questo metodo viene chiamato sul commento Reply esistente.

Puoi utilizzare il metodo [RemoveReply](https://reference.aspose.com/words/it/net/aspose.words/comment/removereply/) per rimuovere la risposta specificata a questo commento.

L'esempio di codice seguente mostra come aggiungere una risposta al commento e rimuovere la risposta del commento:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Leggi la risposta del commento

La proprietà [Replies](https://reference.aspose.com/words/it/net/aspose.words/comment/replies/) restituisce una raccolta di oggetti [Comment](https://reference.aspose.com/words/it/net/aspose.words/comment/) che sono figli immediati del commento specificato.

L'esempio di codice seguente mostra come scorrere le risposte di un commento e risolverle:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
