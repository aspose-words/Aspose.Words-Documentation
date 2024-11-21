---
title: Lucrul cu comentarii în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu comentarii
linktitle: Lucrul cu comentarii
description: "Cum se adaugă, se elimină sau se manipulează comentariile dintr-un document folosind Python."
type: docs
weight: 260
url: /ro/python-net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Încercați online**

Puteți încerca această funcționalitate cu [Online gratuit elimina adnotări](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permite utilizatorilor să lucreze cu comentarii-comentariile dintr-un document din Aspose.Words sunt reprezentate de clasa [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). De asemenea, utilizați clasele [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) și [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) pentru a specifica regiunea de text care ar trebui asociată cu un comentariu.

## Adaugă un comentariu

Aspose.Words vă permite să adăugați comentarii în mai multe moduri:

1. Folosind clasa [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
2. Folosind clasele [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) și [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)

Următorul exemplu de cod arată cum să adăugați un comentariu la un paragraf folosind clasa **Comment**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

Următorul exemplu de cod arată cum să adăugați un comentariu la un paragraf folosind o regiune de text și clasele **CommentRangeStart** și **CommentRangeEnd**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Extrageți sau eliminați comentariile

Utilizarea comentariilor într-un document Word (în plus față de modificările de urmărire) este o practică obișnuită atunci când revizuiți documente, în special atunci când există mai mulți recenzenți. Pot exista situații în care singurul lucru de care aveți nevoie dintr-un document sunt comentariile. Spuneți că doriți să generați o listă de constatări ale revizuirii sau poate că ați colectat toate informațiile utile din document și pur și simplu doriți să eliminați comentariile inutile. Poate doriți să vizualizați sau să eliminați comentariile unui anumit recenzent.

În acest eșantion vom analiza câteva metode simple atât pentru colectarea informațiilor din comentariile dintr-un document, cât și pentru eliminarea comentariilor dintr-un document. În mod specific, vom acoperi cum să:

- Extrageți toate comentariile dintr-un document sau numai cele făcute de un anumit autor.
- Eliminați toate comentariile dintr-un document sau numai de la un anumit autor.

### Cum să extrageți sau să eliminați comentariile

Codul din acest eșantion este de fapt destul de simplu și toate metodele se bazează pe aceeași abordare. Un comentariu într-un document Word este reprezentat de un obiect [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) în modelul de obiect document Aspose.Words. Pentru a colecta toate comentariile dintr-un document, utilizați metoda [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) cu primul parametru setat la [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). Asigurați-vă că al doilea parametru al metodei **get_child_nodes** este setat la true: acest lucru forțează **get_child_nodes** să selecteze recursiv din toate nodurile copil, mai degrabă decât să colecteze doar copiii imediati.

Pentru a ilustra modul de extragere și eliminare a comentariilor dintr-un document, vom parcurge următorii pași:

1. Deschideți un document Word folosind clasa [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)
1. Obțineți toate comentariile din document într-o colecție
1. Pentru a extrage comentarii:
   1. Parcurgeți colecția folosind operatorul foreach
   1. Extrageți și listați numele autorului, data și ora și textul tuturor comentariilor
   1. Extrageți și enumerați numele autorului, data și ora și textul comentariilor scrise de un anumit autor, în acest caz autorul'ks'
1. Pentru a elimina comentariile:
   1. Mergeți înapoi prin colecție folosind operatorul for
   1. Eliminați comentariile
1. Salvați modificările

### Cum să extrageți toate comentariile

Metoda [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) este foarte utilă și o puteți folosi de fiecare dată când aveți nevoie pentru a obține o listă de noduri de documente de orice tip. Colecția rezultată nu creează o cheltuială imediată, deoarece nodurile sunt selectate în această colecție numai atunci când enumerați sau accesați elemente din ea.

Următorul exemplu de cod arată cum să extrageți numele autorului, data și ora și textul tuturor comentariilor din document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### Cum să extrageți comentariile unui autor specificat

După ce ați selectat [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) noduri într-o colecție, tot ce trebuie să faceți este să extrageți informațiile de care aveți nevoie. În acest eșantion, inițialele autorului, data, ora și textul simplu al comentariului sunt combinate într-un singur șir; puteți alege să îl stocați în alte moduri.

Metoda supraîncărcată care extrage comentariile de la un anumit autor este aproape aceeași, doar verifică numele autorului înainte de a adăuga informațiile în matrice.

Următorul exemplu de cod arată cum să extrageți numele autorului,data și ora și textul comentariilor de către autorul specificat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### Cum să eliminați comentariile

Dacă eliminați toate comentariile, nu este nevoie să treceți prin colecție ștergând comentariile unul câte unul; le puteți elimina apelând [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) din colecția de comentarii.

Următorul exemplu de cod arată cum să eliminați toate comentariile din document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

Când trebuie să eliminați selectiv comentariile, procesul devine mai asemănător cu codul pe care l-am folosit pentru extragerea comentariilor.

Următorul exemplu de cod arată cum să eliminați comentariile autorului specificat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

Principalul punct de evidențiat aici este utilizarea operatorului for. Spre deosebire de extragerea simplă, aici doriți să ștergeți un comentariu. Un truc potrivit este să iterați colecția înapoi de la ultimul [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) la primul. Motivul pentru aceasta dacă începeți de la sfârșit și vă deplasați înapoi, indexul articolelor precedente rămâne neschimbat și vă puteți întoarce la primul articol din colecție.

Următorul exemplu de cod prezintă metodele de extragere și eliminare a comentariilor:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Cum să eliminați un comentariu între CommentRangeStart și CommentRangeEnd

Folosind Aspose.Words de asemenea, puteți elimina comentariile dintre nodurile **CommentRangeStart** și **CommentRangeEnd**.

Următorul exemplu de cod arată cum să eliminați textul între **CommentRangeStart** și **CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## Adăugați sau eliminați răspunsul comentariului

Metoda [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) adaugă un răspuns la acest comentariu. Vă rugăm să rețineți că, din cauza limitărilor office existente Microsoft, numai 1 Nivelul de răspunsuri este permis în document. O excepție de tip **InvalidOperationException** va fi ridicată dacă această metodă este apelată la comentariul de răspuns existent.

Puteți utiliza metoda [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) pentru a elimina răspunsul specificat la acest comentariu.

Următorul exemplu de cod arată cum să adăugați un răspuns la comentariu și să eliminați răspunsul comentariului:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Citiți răspunsul comentariului

Proprietatea [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) returnează o colecție de obiecte [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) care sunt copii imediați ai comentariului specificat.

Următorul exemplu de cod arată cum să iterați răspunsurile unui comentariu și să le rezolvați:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}
