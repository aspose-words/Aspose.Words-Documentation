---
title: Funcții avansate Mail Merge în Java
second_title: Aspose.Words pentru Java
articleTitle: Funcții Avansate Mail Merge
linktitle: Funcții Avansate Mail Merge
type: docs
description: "Aspose.Words pentru Java oferă câteva funcții avansate mail merge care vă permit să efectuați mai multe personalizări mail merge. De exemplu, obținerea de informații despre structura șablonului, stabilirea regulilor, curățarea după o operație mail merge și altele."
keywords: "use advanced mail merge features java, mail merge java"
weight: 50
url: /ro/java/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words oferă câteva proprietăți și metode suplimentare mail merge care vă permit să efectuați personalizarea ulterioară a procesului mail merge fie în mail merge simplu, fie în mail merge cu regiuni.

Caracteristicile avansate mail merge includ, dar nu se limitează la, obținerea de informații despre structura șablonului înainte de a efectua o operație mail merge, setarea regulilor pentru o operație mail merge și curățarea în timpul unei operații mail merge. Acest articol va acoperi doar câteva proprietăți și exemple pentru a vă arăta cum să utilizați funcții avansate.

## Stabiliți reguli pentru operațiunile Mail Merge

Adăugarea de reguli la șablonul dvs. vă permite să faceți procesul de flux de lucru mai eficient și mai flexibil. Folosind regulile mail merge, puteți configura conținut care poate fi schimbat rapid și puteți evita necesitatea de a genera mai multe documente.

Aspose.Words vă permite să personalizați mail merge pe baza regulilor care se execută atunci când efectuați operația mail merge și controlați informațiile de îmbinare. De exemplu, când creați un e-mail sau o scrisoare pe care să o trimiteți tuturor clienților dvs. Puteți configura o regulă astfel încât scrisoarea să poată conține diverse date pe baza diferitelor valori din anumite câmpuri ale sursei dvs. de date.

Aruncați o privire la câteva reguli mail merge pe care le puteți implementa.

### Implementați câmpul următor pentru a îmbina înregistrările de date în documentul curent

Puteți implementa câmpul [Next](https://reference.aspose.com/words/java/com.aspose.words/fieldnext/) pentru a îmbina următoarea înregistrare de date în documentul îmbinat rezultat curent, în loc să începeți un nou document îmbinat. Este folosit pentru a afișa mai multe înregistrări într-un singur document.

### Implementați câmpurile NextIf și SkipIf pentru a compara două expresii

Puteți utiliza fie câmpul [NextIf](https://reference.aspose.com/words/java/com.aspose.words/fieldnextif/), fie câmpul [SkipIf](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/) Dacă doriți să comparați două expresii ([right](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getRightExpression) și [left](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getLeftExpression) expresii) cu unele [operator](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/#getComparisonOperator).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words va îmbina următoarea înregistrare de date în documentul de îmbinare curent și toate câmpurile de îmbinare din șablon care sunt după câmpul *NextIf* vor fi înlocuite cu valori din următoarea înregistrare de date, mai degrabă decât înregistrarea de date curentă. | Aspose.Words va îmbina următoarea înregistrare de date într-un nou document de îmbinare. |
| `SkipIf` | Aspose.Words va anula documentul de îmbinare curent, va trece la următoarea înregistrare de date din sursa de date și va începe un nou document de îmbinare. | Aspose.Words va continua documentul de îmbinare curent. |

Următorul exemplu de cod arată cum se compară două expresii cu **NextIf** sau **SkipIf**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-AdvancedMailMergeFeatures-CompareTwoExpressions.java" >}}

## Obțineți Informații Despre Structura Șablonului

Aspose.Words vă permite să adune informații diferite în șablon prin mai multe metode. De exemplu, poate fi necesar să obțineți numele unor câmpuri de îmbinare sau ierarhia Regiunilor din șablonul dvs. Acum vom explica variantele posibile pentru a obține câteva informații specifice din șablonul dvs.

### Obțineți Nume De Câmpuri De Îmbinare

Puteți întâlni un scenariu în care veți dori să îmbinați datele cu câmpurile de îmbinare create de alții și, în acest caz, nu veți fi siguri de numele exacte ale câmpurilor de îmbinare. Deci, pentru a atinge scopul mail merge, mai întâi, va trebui să citiți și să afișați numele tuturor câmpurilor de îmbinare. Aspose.Words vă permite să obțineți o colecție de nume de câmpuri de îmbinare folosind metoda [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/).

Următorul exemplu de cod arată cum să obțineți numele tuturor câmpurilor de îmbinare din șablon:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}

### Obțineți Informații Despre Merge Regions

Este posibil să aveți un scenariu în care doriți să înțelegeți cum este structurat șablonul dvs. prin regiunile de îmbinare specificate. Puteți utiliza unele metode pentru a aduna toate informațiile necesare despre regiunile de îmbinare sau pentru a obține ierarhia regiunilor de îmbinare în șablonul dvs., cum ar fi metoda [GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy). Puteți utiliza proprietățile și metodele clasei [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/).Următorul exemplu de cod arată cum să obțineți ierarhia regiunilor de îmbinare:

**Java**
{{< highlight java >}}

MailMergeRegionInfo regionInfo = doc.getMailMerge().getRegionsHierarchy();

{{< /highlight >}}

Următorul exemplu de cod arată cum să obțineți anumite regiuni de îmbinare în șablonul dvs. pe baza numelor acestora:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ExecuteMailMergeWithRegions-GetRegionsByName.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

### Adăugați Câmpuri Mapate

Aspose.Words vă permite să mapați automat numele câmpurilor din sursa de date și numele câmpurilor mail merge din șablon folosind proprietatea [MappedDataFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getMappedDataFields). De exemplu, dacă aveți un nume de câmp numit "nume de familie" în șablonul dvs. și în sursa de date aveți numele câmpului "Nume de familie" sau o altă variantă, cum ar fi "Last_Name" sau "LastName", atunci câmpul din sursa de date se va mapa automat la câmpul mapat corespunzător. Dacă un șablon de îmbinare urmează să fie îmbinat cu mai multe surse de date, câmpurile mapate fac inutilă reintroducerea câmpurilor în șablon pentru a fi de acord cu numele câmpurilor din Baza de date.

Următorul exemplu de cod arată cum să adăugați un câmp mapat folosind metoda [Add](https://reference.aspose.com/words/java/com.aspose.words/mappeddatafieldcollection/#add-java.lang.String-java.lang.String) atunci când un câmp de îmbinare dintr-un șablon și un câmp de date dintr-o sursă de date au nume diferite:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-MappedFieldNames.java" >}}
