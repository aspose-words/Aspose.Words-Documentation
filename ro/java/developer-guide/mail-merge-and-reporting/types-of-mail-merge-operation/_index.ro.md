---
title: Tipuri de operații Mail Merge în Java
second_title: Aspose.Words pentru Java
articleTitle: Tipuri de operațiuni Mail Merge
linktitle: Tipuri de operațiuni Mail Merge
type: docs
description: "Efectuați două tipuri diferite de operații mail merge: simple Mail Merge și Mail Merge cu regiuni. Simplu Mail Merge repetă întregul document pentru fiecare înregistrare sursă de date, în timp ce Mail Merge cu regiuni repetă numai regiunile desemnate pentru fiecare înregistrare folosind Java."
keywords: "how to execute Mail Merge java, Mail Merge Java, Simple Mail Merge"
weight: 20
url: /ro/java/types-of-mail-merge-operations/
timestamp: 2024-01-27-14-07-04
---

Ideea principală a Mail Merge este să creați automat un document sau mai multe documente pe baza șablonului și a datelor preluate din sursa de date. Aspose.Words vă permite să efectuați două tipuri diferite de operații mail merge: simple Mail Merge și Mail Merge cu regiuni.

Cel mai comun exemplu de utilizare a simplului Mail Merge este atunci când doriți să trimiteți un document pentru diferiți clienți, incluzând numele acestora la începutul documentului. Pentru a face acest lucru, trebuie să creați câmpuri de îmbinare, cum ar fi *First Name* și *Last Name* în șablonul dvs., apoi să le completați cu date din sursa de date. În timp ce cel mai comun exemplu de utilizare a Mail Merge cu regiuni este atunci când doriți să trimiteți un document care include comenzi specifice cu lista tuturor articolelor din fiecare comandă. Pentru a face acest lucru, va trebui să creați regiuni de îmbinare în interiorul șablonului dvs. – Regiune proprie pentru fiecare comandă, pentru a o completa cu toate datele necesare pentru articole.

Principala diferență dintre ambele operații de fuziune este că Mail Merge simplu (fără regiuni) repetă întregul document pentru fiecare înregistrare sursă de date, în timp ce Mail Merge cu regiuni repetă doar regiunile desemnate pentru fiecare înregistrare. Vă puteți gândi la o operație simplă Mail Merge ca la un caz particular de îmbinare cu regiuni în care singura regiune este întregul document.

{{% alert color="primary" %}}

Clasa [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) reprezintă o funcționalitate mail merge. Cu proprietățile sale, puteți personaliza comportamentul necesar înainte de a executa o operație mail merge.

{{% /alert %}}

## Operație Simplă Mail Merge {#simple-mail-merge-operation}

Un simplu Mail Merge este folosit pentru a umple câmpurile Mail Merge din șablonul dvs. cu datele necesare din sursa de date (reprezentarea unui singur tabel). Deci este similar cu clasicul Mail Merge din Microsoft Word.

Puteți adăuga unul sau mai multe câmpuri de îmbinare în șablonul dvs. și apoi executați operația simplă mail merge. Este recomandat să îl utilizați dacă șablonul dvs. nu conține regiuni de îmbinare.

Principala limitare a utilizării acestui tip este că întregul conținut al documentului va fi repetat pentru fiecare înregistrare din sursa de date.

### Cum se execută o operație simplă Mail Merge {#how-to-execute-a-simple-mail-merge-operation}

Odată ce șablonul este gata, puteți începe să efectuați operația simplă mail merge. Aspose.Words vă permite să executați o operație simplă Mail Merge folosind diferite [Execute methods](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-com.aspose.words.IMailMergeDataSource) care acceptă diverse obiecte de date ca sursă de date.

Următorul exemplu de cod arată cum să executați o operație simplă Mail Merge folosind una dintre metodele [Execute](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-java.lang.String---java.lang.Object):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-ExecuteSimpleMailMerge.java" >}}

Puteți observa diferența dintre document înainte de a executa simplu mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template_aspose_words_java" style="width:300px"/>

Și după executarea simplă mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge_aspose_words_java" style="width:300px"/>

### Cum se creează mai multe documente îmbinate

În Aspose.Words, operația standard Mail Merge umple doar un singur document cu conținut din sursa de date. Deci, va trebui să executați operația Mail Merge de mai multe ori pentru a crea mai multe documente îmbinate ca ieșire.

Următorul exemplu de cod arată cum să generați mai multe documente îmbinate în timpul unei operații mail merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-ProduceMultipleDocumentsDuringMailMerge-ProduceMultipleDocumentsDuringMailMerge.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

## Mail Merge cu regiuni

Puteți crea diferite regiuni în șablonul dvs. pentru a avea zone speciale pe care le puteți completa pur și simplu cu datele dvs. Utilizați Mail Merge cu regiuni dacă doriți să inserați tabele, rânduri cu date repetate pentru ca documentele dvs. să crească dinamic, specificând acele regiuni din șablonul dvs.

Puteți crea regiuni imbricate (copil), precum și regiuni de îmbinare. Principalul avantaj al utilizării acestui tip este creșterea dinamică a părților din interiorul unui document. Vedeți mai multe detalii în articolul următor "imbricat Mail Merge cu regiuni".

{{% alert color="primary" %}}

Informațiile despre o regiune Mail Merge pot fi obținute folosind clasa [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/).

{{% /alert %}}

### Cum se execută Mail Merge cu regiuni

O regiune Mail Merge este o parte specifică din interiorul unui document care are un punct de început și un punct final. Ambele puncte sunt reprezentate ca Mail Merge câmpuri care au nume specifice *"TableStart:XXX"* și *"TableEnd:XXX"*. Tot conținutul care este inclus într-o regiune Mail Merge va fi repetat automat pentru fiecare înregistrare din sursa de date.

Aspose.Words vă permite să executați Mail Merge cu regiuni folosind diferite [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) care acceptă diverse obiecte de date ca sursă de date.

Ca prim pas, trebuie să creăm `DataSet` pentru a-l transmite mai târziu ca parametru de intrare la metoda `ExecuteWithRegions`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-CreateDataSet.java" >}}

Următorul exemplu de cod arată cum se execută Mail Merge cu regiuni folosind metoda [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#executeWithRegions-com.aspose.words.net.System.Data.DataSet):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-MailMergeWithRegions.java" >}}

Puteți observa diferența dintre document înainte de a executa Mail Merge cu regiuni:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template_aspose_words_java" style="width:850px"/>

Și după executarea Mail Merge cu regiuni:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute_aspose_words_java" style="width:850px"/>

### Limitări ale Mail Merge cu regiuni

Există câteva puncte importante pe care trebuie să le luați în considerare atunci când efectuați un Mail Merge cu regiuni:

* Punctul de pornire *TableStart:Orders* și punctul final *TableEnd:Orders* trebuie să fie ambele în același rând sau celulă. De exemplu, dacă începeți o regiune de îmbinare într-o celulă a unui tabel, trebuie să terminați regiunea de îmbinare în același rând cu prima celulă.
* Numele câmpului de îmbinare trebuie să se potrivească cu numele coloanei din DataTable. Dacă nu ați specificat câmpuri mapate, Mail Merge cu regiuni nu va avea succes pentru niciun câmp de îmbinare care are un nume diferit de numele coloanei.

Dacă una dintre aceste reguli este încălcată, veți obține rezultate neașteptate sau poate fi aruncată o excepție.

{{% alert color="primary" %}}

Dacă nu utilizați regiuni mail merge, atunci va fi similar cu Microsoft Word mail merge, iar întregul conținut al documentului va fi repetat pentru fiecare înregistrare din sursa de date.

{{% /alert %}}

