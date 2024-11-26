---
title: Cum se aplică logica personalizată Regiunilor Nemergate
second_title: Aspose.Words pentru Java
articleTitle: Cum se aplică logica personalizată Regiunilor Nemergate
linktitle: Cum se aplică logica personalizată Regiunilor Nemergate
type: docs
description: "Aplicați logica personalizată regiunilor nemergate în timpul unei operații Mail Merge folosind Java."
weight: 70
url: /ro/java/how-to-apply-custom-logic-to-unmerged-regions/
timestamp: 2024-01-27-14-07-04
---

Există unele situații în care eliminarea completă a regiunilor nemergate din document în timpul Mail Merge nu este dorită sau rezultă în documentul care pare incomplet. Acest lucru poate apărea atunci când absența datelor de intrare ar trebui să fie afișată utilizatorului sub forma unui mesaj în loc ca regiunea să fie complet eliminată.

Există, de asemenea, momente în care eliminarea regiunii neutilizate în sine nu este suficientă, de exemplu, dacă regiunea este precedată de un titlu sau dacă regiunea este conținută într-un tabel. Dacă această regiune este neutilizată, atunci titlul și tabelul vor rămâne în continuare după ce regiunea este eliminată, care va părea deplasată în document.

Acest articol oferă o soluție pentru a defini manual modul în care sunt gestionate regiunile neutilizate din document. Codul de bază pentru această funcționalitate este furnizat și poate fi reutilizat cu ușurință într-un alt proiect.

Logica care trebuie aplicată fiecărei regiuni este definită în interiorul unei clase care implementează interfața [IFieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/). În același mod, un handler Mail Merge poate fi configurat pentru a controla modul în care fiecare câmp este fuzionat, acest handler poate fi configurat pentru a efectua acțiuni pe fiecare câmp într-o regiune neutilizată sau pe regiune în ansamblu. În cadrul acestui handler, puteți seta codul pentru a schimba textul unei regiuni, pentru a elimina noduri sau rânduri și celule goale etc.

În acest eșantion, vom folosi documentul afișat mai jos. Conține regiuni imbricate și o regiune conținută într-un tabel.

![apply-custom-logic-to-unmerged-regions-aspose-words-java](how-to-apply-custom-logic-to-unmerged-regions-1.png)

Ca o demonstrație rapidă, putem executa o bază de date eșantion pe documentul eșantion cu indicatorul [MailMergeCleanupOptions.REMOVE_UNUSED_REGIONS](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/) activat. Această proprietate va elimina automat regiunile nemergate din document în timpul unui mail merge.

Sursa de date include două înregistrări pentru regiunea **StoreDetails**, dar are în mod intenționat date pentru regiunile **ContactDetails** copil pentru una dintre înregistrări. În plus, regiunea **Suppliers** nu are nici rânduri de date. Acest lucru va face ca regiunile neutilizate să rămână în document. Rezultatul după îmbinarea documentului cu această sursă de date este mai jos.

![merged-regions-aspose-words-java](how-to-apply-custom-logic-to-unmerged-regions-2.png)

După cum se menționează în imagine, puteți vedea că regiunea **ContactDetails** pentru a doua înregistrare și regiunile **Suppliers** au fost eliminate automat de motorul mail merge, deoarece nu au date. Cu toate acestea, există câteva probleme care fac ca acest document de ieșire să pară incomplet:

- Regiunea **ContactDetails** lasă încă un paragraf cu textul"detalii de Contact".
- În același caz, nu există niciun indiciu că nu există numere de telefon, ci doar un spațiu gol care ar putea duce la confuzie.
- Tabelul și titlul legate de regiunea **Suppliers** rămân, de asemenea, după ce regiunea din interiorul tabelului este eliminată.

Tehnica furnizată în acest articol demonstrează modul de aplicare a logicii personalizate fiecărei regiuni nemergate pentru a evita aceste probleme.

**Soluția**

Pentru a aplica manual logica fiecărei regiuni neutilizate din document, profităm de caracteristicile deja disponibile în Aspose.Words.

Motorul Mail Merge oferă o proprietate pentru a elimina regiunile neutilizate prin steagul **MailMergeCleanupOptions.RemoveUnusedRegions**. Acest lucru poate fi dezactivat astfel încât astfel de regiuni să fie lăsate neatinse în timpul unui mail merge. Acest lucru ne permite să lăsăm regiunile nemergate din document și să le gestionăm manual noi înșine.

Putem profita apoi de proprietatea **MailMerge.FieldMergingCallback** ca mijloc de a aplica propria noastră logică personalizată acestor regiuni nemergate în timpul Mail Merge prin utilizarea unei clase de manipulare care implementează interfața **IFieldMergingCallback**.

Acest cod din clasa handler este singura clasă pe care va trebui să o modificați pentru a controla logica aplicată regiunilor nemergate. Celălalt cod din acest eșantion poate fi reutilizat fără modificări în niciun proiect.

Acest proiect de probă demonstrează această tehnică. Aceasta implică următorii pași:

1. Executați Mail Merge pe document folosind sursa de date. Steagul **MailMergeCleanupOptions.RemoveUnusedRegions** este dezactivat deocamdată vrem ca regiunile să rămână astfel încât să le putem gestiona manual. Orice regiuni fără date vor fi lăsate nemergate în document.
1. Apelați metoda **ExecuteCustomLogicOnEmptyRegions**. Această metodă este furnizată în acest eșantion. Efectuează acțiuni care permit apelarea manipulatorului specificat pentru fiecare regiune nemergată. Această metodă este reutilizabilă și poate fi copiată nealterată în orice proiect care o necesită (împreună cu orice metode dependente).Această metodă execută următorii pași:
   1. Setează manipulatorul specificat de utilizator la proprietatea **MailMerge.FieldMergingCallback**.
   1. Apelează metoda **CreateDataSourceFromDocumentRegions** care acceptă numele regiunilor **Document** și **ArrayList** ale utilizatorului care conțin. Această metodă va crea o sursă de date fictivă care conține tabele pentru fiecare regiune nemergată din document.
   1. Execută Mail Merge pe document folosind sursa de date fictivă. Când Mail Merge este executat cu această sursă de date, permite apelarea manipulatorului specificat de utilizator pentru fiecare regiune unmerge și logica personalizată aplicată

**Codul**

Implementarea metodei **ExecuteCustomLogicOnEmptyRegions** se găsește mai jos. Această metodă acceptă mai mulți parametri:

1. Obiectul [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) care conține regiuni nemergate care urmează să fie manipulate de handler-ul trecut.
1. Clasa handler care definește logica de aplicat regiunilor nemergate. Acest handler trebuie să pună în aplicare [IFieldMergingCallback](https://www.aspose.com/api/java/words/com.aspose.words/interfaces/IFieldMergingCallback) interfață.
1. Prin utilizarea supraîncărcării corespunzătoare, metoda poate accepta și un al treilea parametru-o listă de nume de regiuni ca șiruri. Dacă acest lucru este specificat, atunci numai numele regiunilor rămase din documentul specificat în listă vor fi tratate manual. Alte regiuni care sunt întâlnite nu vor fi apelate de către handler și eliminate automat. Când este specificată supraîncărcarea cu doar doi parametri, fiecare regiune rămasă în document este inclusă prin metoda care trebuie gestionată manual.

**Exemplu**

Arată cum să execute logica personalizat pe regiuni neutilizate folosind handler specificat.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ExecuteCustomLogicOnUnusedRegions.java" >}}

{{% alert color="primary" %}}

Dacă vă gândiți să rulați metoda **ExecuteCustomLogicOnEmptyRegions** consecutiv cu diferite Handlere (de exemplu, fiecare handler aplică logică anumitor câmpuri), atunci va trebui să dezactivați eliminarea regiunilor neutilizate, astfel încât aceste regiuni să nu fie eliminate între aceste apeluri.

{{% /alert %}}

**Exemplu**

Definește metoda utilizată pentru a gestiona manual regiunile nemergate.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ManuallyHandleUnmergedRegions.java" >}}

Această metodă implică găsirea tuturor regiunilor nemergate din document. Acest lucru se realizează folosind metoda **MailMerge.GetFieldNames**. Această metodă returnează toate câmpurile de îmbinare din document, inclusiv markerii de început și de sfârșit ai regiunii (reprezentați prin câmpuri de îmbinare cu prefixul *TableStart* sau *TableEnd*).

Când se întâlnește un câmp de îmbinare `TableStart`, Acesta este adăugat ca un nou **DataTable** la **DataSet**. Deoarece o regiune poate apărea de mai multe ori (de exemplu, deoarece este o regiune imbricată în care regiunea părinte a fost fuzionată cu mai multe înregistrări), tabelul este creat și adăugat numai dacă nu există deja în **DataSet**.

Când a fost găsit un început de regiune adecvat și adăugat la baza de date, câmpul următor (care corespunde primului câmp din regiune) este adăugat la **DataTable**. Este necesar să se adauge doar primul câmp pentru fiecare câmp din regiune care urmează să fie fuzionat și transmis manipulatorului.

De asemenea, setăm valoarea câmpului primului câmp la "FirstField" pentru a facilita aplicarea logicii primului sau altor câmpuri din regiune. Prin includerea acestui lucru înseamnă că nu este necesar să codificați cu greu numele primului câmp sau să implementați cod suplimentar pentru a verifica dacă câmpul curent este primul din Codul handler.

Codul de mai jos demonstrează modul în care funcționează acest sistem. Documentul prezentat la începutul acestui articol este remerged cu aceeași sursă de date, dar de data aceasta, regiunile neutilizate sunt manipulate de cod personalizat.

**Exemplu**

Arată cum să se ocupe de regiuni unmerged după Mail Merge cu cod definit de utilizator.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-HandleUnmergedRegionsAfterMailMerge.java" >}}


Codul efectuează diferite operații bazate pe numele regiunii preluate folosind proprietatea **FieldMergingArgs.TableName**. Rețineți că, în funcție de document și regiuni, puteți codifica handler-ul pentru a rula logica în funcție de fiecare regiune sau cod care se aplică fiecărei regiuni nemergate din document sau unei combinații a ambelor.

Logica pentru regiunea **ContactDetails** implică schimbarea textului fiecărui câmp din regiunea **ContactDetails** cu un mesaj adecvat care să ateste că nu există date. Numele fiecărui câmp sunt potrivite în cadrul manipulatorului folosind proprietatea **FieldMergingArgs.FieldName**.

Un proces similar este aplicat regiunii **Suppliers** cu adăugarea unui cod suplimentar pentru a gestiona tabelul care conține Regiunea. Codul va verifica dacă regiunea este conținută într-un tabel (deoarece este posibil să fi fost deja eliminată). Dacă este, va elimina întregul tabel din document, precum și paragraful care îl precede, atâta timp cât este formatat cu un stil de titlu, de exemplu "Heading 1".

**Exemplu**

Arată cum se definește logica personalizată într-un handler care implementează IFieldMergingCallback care este executat pentru regiunile nemergate din document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-EmptyRegionsHandler.java" >}}

Rezultatul codului de mai sus este prezentat mai jos. Câmpurile nemergate din prima regiune sunt înlocuite cu text informativ, iar eliminarea tabelului și a titlului permite documentului să pară complet.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-2](how-to-apply-custom-logic-to-unmerged-regions-3.png)


Codul care elimină tabelul părinte ar putea fi, de asemenea, făcut să ruleze pe fiecare regiune neutilizată în loc de doar o anumită regiune prin eliminarea cecului pentru numele tabelului. În acest caz, dacă o regiune din interiorul unui tabel nu a fost îmbinată cu nicio dată, atât Regiunea, cât și tabelul container vor fi eliminate automat.

Putem introduce cod diferit în handler pentru a controla modul în care sunt gestionate regiunile nemergate. Utilizarea codului de mai jos în handler va schimba textul din primul paragraf al regiunii într-un mesaj util, în timp ce orice paragrafe ulterioare din regiune sunt eliminate. Aceste alte paragrafe sunt eliminate, deoarece ar rămâne în regiune după îmbinarea mesajului nostru.

Textul de înlocuire este îmbinat în primul câmp prin setarea textului specificat în proprietatea **FieldMergingArgs.Text**. Textul din această proprietate este îmbinat în câmp de motorul mail merge.

Codul aplică acest lucru numai pentru primul câmp din regiune, verificând proprietatea **FieldMergingArgs.FieldValue**. Valoarea câmpului primului câmp din regiune este marcată cu" FirstField". Acest lucru face ca acest tip de logică să fie mai ușor de implementat în multe regiuni, deoarece nu este necesar un cod suplimentar.

**Exemplu**

Afișează cum să înlocuiți o regiune neutilizată cu un mesaj și să eliminați paragrafe suplimentare.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ReplaceAnUnusedRegionWithAMessage.java" >}}

Documentul rezultat după executarea codului de mai sus este prezentat mai jos. Regiunea neutilizată este înlocuită cu un mesaj care indică faptul că nu există înregistrări de afișat.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-3](how-to-apply-custom-logic-to-unmerged-regions-4.png)


Ca un alt exemplu, putem introduce codul de mai jos în locul codului care a gestionat inițial **SuppliersRegion**. Aceasta va afișa un mesaj în tabel și va îmbina celulele în loc să elimine tabelul din document. Deoarece regiunea se află într-un tabel cu mai multe celule, pare mai frumos ca celulele tabelului să fuzioneze și mesajul să fie centrat.

**Exemplu**

Arată cum să îmbinați toate celulele părinte ale unei regiuni neutilizate și să afișați un mesaj în tabel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-MergeAllTheParentCellsOfAnUnusedRegion.java" >}}

Documentul rezultat după executarea codului de mai sus este prezentat mai jos.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-4](how-to-apply-custom-logic-to-unmerged-regions-5.png)


În cele din urmă, putem apela metoda **ExecuteCustomLogicOnEmptyRegions** și putem specifica numele tabelelor care ar trebui tratate în cadrul metodei noastre handler, specificând în același timp altele care vor fi eliminate automat.

**Exemplu**

Arată cum să specificați numai regiunea `ContactDetails` care trebuie gestionată prin clasa handler.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-HandleTheContactDetailsRegion.java" >}}

Apelarea acestei supraîncărcări cu ArrayList specificat va crea sursa de date care conține doar rânduri de date pentru regiunile specificate. Regiunile altele decât regiunea `ContactDetails` nu vor fi gestionate și vor fi eliminate automat de motorul mail merge. Rezultatul apelului de mai sus folosind codul din handler-ul nostru original este prezentat mai jos.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-5](how-to-apply-custom-logic-to-unmerged-regions-6.png)
