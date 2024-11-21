---
title: Lucrul cu Comentarii în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu comentariile
linktitle: Lucrul cu comentariile
description: "`Lucrul cu comentariile folosind C#`"
type: docs
weight: 260
url: /ro/net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Încercaţi-l online**

Puteți încerca această funcționalitate cu [Free online remove annotations](https://products.aspose.app/words/annotation) nostru.

{{% /alert %}}

Aspose.Words permite utilizatorilor să lucreze cu comentarii – comentariile într-un document în Aspose.Words sunt reprezentate de clasa [Comment](https://reference.aspose.com/words/net/aspose.words/comment/). Utilizați și clasele [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) și [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) pentru a specifica regiunea de text care ar trebui să fie asociată cu un comentariu.

## Adaugă un comentariu

Aspose.Words vă permite să adăugați comentarii în mai multe moduri:

1. Folosind clasa [Comment](https://reference.aspose.com/words/net/aspose.words/comment/)
2. Folosind clasele [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) și [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

Exemplul de cod următor arată cum să adăugați un comentariu la un paragraf folosind clasa **Comment**":

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

Exemplul de cod următor arată cum să adăugați o remarcă la un paragraf folosind o regiune de text și clasele **CommentRangeStart** și **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Extrage sau elimină comentarii

Folosirea comentariilor într-un document Word (în plus față de Track Changes) este o practică comună atunci când se revizuiesc documente, mai ales atunci când sunt mai mulți recenzenti. Pot apărea situații în care singura chestie de care ai nevoie dintr-un document sunt comentariile. Spune că vrei să generezi o listă cu constatări de revizuire sau poate ai colectat toate informațiile utile din document și pur și simplu vrei să elimini comentariile inutile. Poate doriţi să vizualizaţi sau să eliminaţi comentariile unui anumit recenzent.

În acest exemplu vom arunca o privire asupra unor metode simple atât pentru colectarea de informaţii din comentariile unui document, cât şi pentru eliminarea comentariilor dintr-un document. În mod special vom acoperi cum să:

- Extrage toate comentariile dintr-un document sau doar cele făcute de un anumit autor
- Elimina toate comentariile dintr-un document sau doar de la un anumit autor

### Cum să extragi sau să elimini comentariile

Codul din acest exemplu este de fapt destul de simplu și toate metodele se bazează pe aceeași abordare. Un comentariu în cadrul unui document Word este reprezentat de un [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) obiect în modelul Aspose.Words al obiectelor documentului. Pentru a colecta toate comentariile într-un document utilizați metoda [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) cu primul parametru setat la [NodeType.Comment](https://reference.aspose.com/words/net/aspose.words/nodetype/). Asigurați-vă că al doilea parametru al metodei **GetChildNodes** este setat la true: acest lucru forțează metoda **GetChildNodes** să selecteze în mod recursiv din toți copiii nodului, mai degrabă decât să colecteze doar copiii imediati.

Pentru a ilustra modul de extragere și eliminare a comentariilor dintr-un document vom trece prin pașii următori:

1. Deschide un fișier Word folosind clasa [Document](https://reference.aspose.com/words/net/aspose.words/document/)
2. Obțineți toate comentariile din document într-o colecție
3. Pentru a extrage comentarii:
   1. Parcurge colecția folosind operatorul foreach
   2. Extrăge și listează numele autorului, data și ora precum și textul tuturor comentariilor
   3. Extrage și listează numele autorului, data & ora și textul comentariilor scrise de un anumit autor, în acest caz autorul 'ks'
4. Pentru a elimina comentariile:
   1. Du-te înapoi prin colecția folosind operatorul pentru
   2. Elimină comentariile
5. Salvează modificările

### Cum să extragi toate comentariile

Metoda **GetChildNodes** este foarte utilă și o puteți folosi de fiecare dată când aveți nevoie să obțineți un listă cu noduri de document de orice tip. "Colecția rezultată nu creează un suprasarcin imediat deoarece nodurile sunt selectate în această colecție numai atunci când enumerăm sau accesăm articole din ea."

Exemplul de cod de mai sus arată cum să extragem numele autorului, data și ora și textul tuturor comentariilor din document

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Cum se extrag comentariile unui autor specificat

După ce ai selectat **Comment** noduri într-o colecție, tot ce trebuie să faci este să extragi informațiile de care ai nevoie. În acest exemplu, iniţialele autorului, data, ora şi textul simplu al comentariului sunt combinate într-un singur şir; ai putea alege să îl stochezi în alte moduri.

Metoda supraîncărcată care extrage comentariile de la un anumit autor este aproape aceeași, ea verifică doar numele autorului înainte de a adăuga informațiile în matrice.

Exemplul de cod următor arată cum să extrageți numele autorului, data și ora și textul comentariilor făcute de autorul specificat:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Cum se elimină comentariile

Dacă elimini toate comentariile, nu este necesar să parcurgi colecția ștergând comentariile unul câte unul. Puteți să le eliminați apelând metoda [Clear](https://reference.aspose.com/words/net/aspose.words/nodecollection/clear/) pe colecția de comentarii.

Exemplul următor de cod arată cum se elimină toate comentariile din document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Când ai nevoie să scoţi comentariile în mod selectiv, procesul devine mai asemănător cu codul pe care l-am folosit pentru extragerea de comentarii.

Exemplul de cod de mai jos arată cum se elimină comentariile făcute de autorul specificat:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Punctul principal de evidențiat aici este folosirea operatorului for. Spre deosebire de extracția simplă, aici vrei să ștergi un comentariu. Un truc potrivit este de a itera colecția în ordine inversă de la ultimul comentariu la primul. Motivul pentru aceasta dacă începeți din sfârșit și vă mutați înapoi, indicele elementelor anterioare rămâne neschimbat, și puteți lucra la întoarcerea la primul articol din colecție.

Exemplul următor de cod prezintă metodele pentru extragerea și eliminarea comentariilor:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### "Cum să ştergeţi un comentariu între CommentRangeStart şi CommentRangeEnd"

Folosind Aspose.Words puteți elimina, de asemenea, comentariile dintre nodurile **CommentRangeStart** și **CommentRangeEnd**.

Exemplul de cod următor arată cum să eliminați textul dintre **CommentRangeStart** și **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Adăugați sau ștergeți "Răspunsul comentariului

Metoda [AddReply](https://reference.aspose.com/words/net/aspose.words/comment/addreply/) adaugă o replică la acest comentariu. Notă te rog că datorită limitărilor existente Microsoft în birou, numai 1 nivel de răspunsuri este permis în document. Se va ridica o excepție de tip *InvalidOperationException* dacă acest metod este chemat pe comentariul existent al răspunsului.

Poţi folosi metoda [RemoveReply](https://reference.aspose.com/words/net/aspose.words/comment/removereply/) pentru a elimina răspunsul specificat la acest comentariu.

Exemplul de cod următor arată cum să adăugați un răspuns la comentariu și să eliminați răspunsul la comentariu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Citeşte Răspunsul Comentariului

Proprietatea [Replies](https://reference.aspose.com/words/net/aspose.words/comment/replies/) returnează o colecție de obiectele [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) care sunt copii imediate ale comentariului specificat.

Exemplul următor de cod arată cum să parcurgem prin răspunsurile unui comentariu și să le rezolvăm:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
