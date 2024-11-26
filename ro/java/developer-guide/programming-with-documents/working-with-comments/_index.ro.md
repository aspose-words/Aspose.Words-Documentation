---
title: Lucrul cu comentarii în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu comentarii
linktitle: Lucrul cu comentarii
description: "Lucrul cu comentarii folosind Java."
type: docs
weight: 260
url: /ro/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Încercați online**

Puteți încerca această funcționalitate cu [Online gratuit elimina adnotări](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permite utilizatorilor să lucreze cu comentarii-comentariile dintr-un document din Aspose.Words sunt reprezentate de clasa [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/). De asemenea, utilizați clasele [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) și [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) pentru a specifica regiunea de text care ar trebui asociată cu un comentariu.

## Adaugă un comentariu

Aspose.Words vă permite să adăugați comentarii în mai multe moduri:

1. Folosind clasa [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)
2. Folosind clasele [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) și [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)

Următorul exemplu de cod arată cum să adăugați un comentariu la un paragraf folosind clasa **Comment**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Următorul exemplu de cod arată cum să adăugați un comentariu la un paragraf folosind o regiune de text și clasele **CommentRangeStart** și **CommentRangeEnd**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Extrageți sau eliminați comentariile

Utilizarea comentariilor într-un document Word (în plus față de modificările de urmărire) este o practică obișnuită atunci când revizuiți documente, în special atunci când există mai mulți recenzenți. Pot exista situații în care singurul lucru de care aveți nevoie dintr-un document sunt comentariile. Spuneți că doriți să generați o listă de constatări ale revizuirii sau poate că ați colectat toate informațiile utile din document și pur și simplu doriți să eliminați comentariile inutile. Poate doriți să vizualizați sau să eliminați comentariile unui anumit recenzent.

În acest eșantion, vom analiza câteva metode simple atât pentru colectarea informațiilor din comentariile dintr-un document, cât și pentru eliminarea comentariilor dintr-un document. Mai exact, vom acoperi cum să:

- Extrageți toate comentariile dintr-un document sau numai cele făcute de un anumit autor.
- Eliminați toate comentariile dintr-un document sau numai de la un anumit autor.

### Cum să extrageți sau să eliminați comentariile

Codul din acest eșantion este destul de simplu și toate metodele se bazează pe aceeași abordare. Un comentariu într-un document Word este reprezentat de un obiect `Comment` în modelul de obiect document Aspose.Words. Pentru a colecta toate comentariile dintr-un document, utilizați metoda [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) cu primul parametru setat la `NodeType.Comment`. Asigurați-vă că al doilea parametru al metodei **getChildNodes** este setat la true: acest lucru forțează **getChildNodes** să selecteze recursiv din toate nodurile copil, mai degrabă decât să colecteze doar copiii imediati.

Pentru a ilustra modul de extragere și eliminare a comentariilor dintr-un document, vom parcurge următorii pași:

1. Deschideți un document Word folosind clasa [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)
1. Obțineți toate comentariile din document într-o colecție
1. Pentru a extrage comentarii:
   1. Treceți prin colecție folosind pentru operator
   1. Extrageți și listați numele autorului, data și ora și textul tuturor comentariilor
   1. Extrageți și listați numele autorului, data și ora și textul comentariilor scrise de un anumit autor, în acest caz, autorul'ks'
1. Pentru a elimina comentariile:
   1. Mergeți înapoi prin colecție folosind pentru operator
   1. Eliminați comentariile
1. Salvați modificările.

Vom folosi următorul document Word pentru acest exercițiu:

![extract-remove-comments-aspose-words-java-1](extract-remove-comments-aspose-words-java-1.png)

După cum puteți vedea, conține mai multe comentarii de la doi autori cu inițialele "pm" și "ks".

### Cum să extrageți toate comentariile

Metoda [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) este foarte utilă și o puteți folosi de fiecare dată când aveți nevoie pentru a obține o listă de noduri de documente de orice tip. Colecția rezultată nu creează o cheltuială imediată, deoarece nodurile sunt selectate în această colecție numai atunci când enumerați sau accesați elemente din ea.

Următorul exemplu de cod arată cum să extrageți numele autorului, data și ora și textul tuturor comentariilor din document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Cum să extrageți comentariile unui autor specificat

După ce ați selectat nodurile de comentarii într-o colecție, tot ce trebuie să faceți este să extrageți informațiile de care aveți nevoie. În acest eșantion, inițialele autorului, data, ora și textul simplu al comentariului sunt combinate într-un singur șir; ați putea alege să îl stocați în alte moduri.

Metoda supraîncărcată care extrage comentariile de la un anumit autor este aproape aceeași, doar verifică numele autorului înainte de a adăuga informațiile în matrice.

Următorul exemplu de cod arată cum să extrageți numele autorului,data și ora și textul comentariilor de către autorul specificat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Cum să eliminați comentariile

Dacă eliminați toate comentariile, nu este nevoie să treceți prin colecție ștergând comentariile unul câte unul; le puteți elimina apelând [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) din colecția de comentarii.

Următorul exemplu de cod arată cum să eliminați toate comentariile din document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Când trebuie să eliminați selectiv comentariile, procesul devine mai asemănător cu codul pe care l-am folosit pentru extragerea comentariilor.

Următorul exemplu de cod arată cum să eliminați comentariile autorului specificat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Principalul punct de evidențiat aici este utilizarea operatorului for. Spre deosebire de extragerea simplă, aici doriți să ștergeți un comentariu. Un truc potrivit este să iterați colecția înapoi de la ultimul comentariu la primul. Motivul pentru aceasta dacă începeți de la sfârșit și vă deplasați înapoi, indexul articolelor precedente rămâne neschimbat și vă puteți întoarce la primul articol din colecție.

Următorul exemplu de cod prezintă metodele de extragere și eliminare a comentariilor:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Când este lansat, eșantionul afișează următoarele rezultate. Mai întâi, listează toate comentariile tuturor autorilor, apoi listează numai comentariile autorului selectat. În cele din urmă, codul eliminarea tuturor comentariilor.

![extract-remove-comments-aspose-words-java-2](extract-remove-comments-aspose-words-java-2.png)

Documentul Word de ieșire are acum Comentarii eliminate din acesta:

![extract-remove-comments-aspose-words-java-3](extract-remove-comments-aspose-words-java-3.png)

### Cum să eliminați textul între CommentRangeStart și CommentRangeEnd

Folosind Aspose.Words de asemenea, puteți elimina comentariile dintre nodurile CommentRangeStart și CommentRangeEnd.

Următorul exemplu de cod arată cum să eliminați textul între CommentRangeStart și CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Adăugați sau eliminați răspunsul comentariului

Metoda [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) adaugă un răspuns la acest comentariu. Vă rugăm să rețineți că, din cauza limitărilor existente ale Biroului MS, în document este permis un singur nivel (1) de răspunsuri. O excepție de tip InvalidOperationException va fi ridicată dacă această metodă este apelată la comentariul de răspuns existent.

Puteți utiliza metoda [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) pentru a elimina răspunsul specificat la acest comentariu.

Următorul exemplu de cod arată cum să adăugați un răspuns la un comentariu și să eliminați răspunsul unui comentariu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Citiți răspunsul comentariului

Aspose.Words suport pentru a citi răspunsul unui comentariu. Proprietatea [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) returnează o colecție de obiecte [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) care sunt copii imediați ai comentariului specificat.

Următorul exemplu de cod arată cum să iterați răspunsurile unui comentariu și să le rezolvați:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
