---
title: Formatarea tabelelor în C#
second_title: Aspose.Words pentru .NET
articleTitle: Aplică formatarea tabelelor
linktitle: Aplică formatarea tabelelor
description: "Formatarea tabelelor în detalii folosind C#. Foloseşte C# pentru a formata fiecare parte a tabelelor."
type: docs
weight: 70
url: /ro/net/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Fiecare element al unei tabele poate fi aplicat cu diferite formatări. De exemplu, formatarea tabelelor va fi aplicată întregului tabel, formatarea rândurilor doar anumitor rânduri, iar formatarea celulelor doar anumitor celule.

Aspose.Words oferă un API bogat pentru a recupera și aplica formatare la o tabelă. Puteți folosi nodurile [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) și [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) pentru a seta formatarea.

În acest articol vom vorbi despre cum să aplicăm formatare diferitelor noduri de tabel și ce setări de formatare a tabelelor suportă Aspose.Words.

## Aplică formatare la noduri diferite

În această secțiune, vom analiza aplicarea formatării la diverse noduri de tabelă.

### Formatarea nivelului de masă

Pentru a aplica formatarea unei tabele, puteți utiliza proprietățile disponibile pe nodul **Table** corespunzător folosind clasele [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/) și [TableCollection](https://reference.aspose.com/words/net/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Notă că tabelul trebuie să aibă cel puțin o rând înainte de ca proprietățile de tabel să poată fi aplicate. Aceasta înseamnă că atunci când construiți o masă cu [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), formatarea trebuie efectuată după prima chemare la [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/), sau după primul rând este adăugat la tabel, sau atunci când noduri sunt introduse direct în DOM.

{{% /alert %}}

Imaginea de mai jos prezintă o reprezentare a caracteristicilor **Table** de formatare în Microsoft Word și proprietățile lor corespondente în Aspose.Words.

![formattin-features-table-level-aspose-words-net](applying-formatting-1.png)




![formatting-table-options-aspose-words-net](applying-formatting-2.png)

Exemplul de cod următor arată cum să aplici o margine de contur la un tabel:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-outline-border.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Exemplul de cod următor prezintă modul în care se poate construi o tabelă cu toate marginile activate (grilă):

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "build-table-with-borders.cs" >}}

{{% alert color="primary" %}}

Puteţi descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formatarea la nivel de rând

**Row-level** formatarea poate fi controlată folosind clasele [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) și [RowCollection](https://reference.aspose.com/words/net/aspose.words.tables/rowcollection/).

{{% alert color="primary" %}}

Observați că un **Row** poate fi doar nod copil al unui **Table**. În același timp, trebuie să existe cel puțin unul **Cell** în **Row** astfel încât formatarea poate fi aplicată acestuia.

{{% /alert %}}

Imaginea de mai jos prezintă o reprezentare a caracteristicilor de formatare **Row** în Microsoft Word și proprietățile lor corespunzătoare în Aspose.Words.

![formatting-row-level-aspose-words-net](applying-formatting-3.png)

Exemplul de cod următor arată cum se modifică formatarea rândului de tabelă:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-row-formatting.cs" >}}

{{% alert color="primary" %}}

Poţi descărca fişierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formatare la nivelul celulelor

Formatarea la nivel de celulă este controlată de [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) și [CellCollection](https://reference.aspose.com/words/net/aspose.words.tables/cellcollection/) clase.

{{% alert color="primary" %}}

Notă că un **Cell** poate fi doar nod copil al unui **Row**. În același timp, trebuie să existe cel puțin un [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) în **Cell**, astfel încât formatarea poate fi aplicată la acesta.

Pe lângă **Paragraph**, puteți insera și o **Table** într-o **Cell**.

{{% /alert %}}

Imaginile de mai jos prezintă o reprezentare a caracteristicilor de formatare **Cell** în Microsoft Word și proprietățile lor corespunzătoare în Aspose.Words.

![formatting-cell-level-aspose-words-net](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-net](applying-formatting-5.png)

Exemplul următor de cod arată cum să modifici formatarea unei celule de tabelă:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-cell-formatting.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Exemplul de cod de mai jos arată cum să se stabilească cantitatea de spațiu (în puncte) pentru a adăuga la stânga/sus/dreapta/jos de conținutul celulei:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "cell-padding.cs" >}}

## Specificați înălțimile rândurilor

Cea mai simplă cale pentru a seta înălțimea rândului este de a folosi **DocumentBuilder**. Utilizând proprietățile **RowFormat** potrivite, poți seta înălțimea implicită sau aplica o înălțime diferită pentru fiecare rând din tabelă.

În Aspose.Words înălţimea rândului de tabel este controlată de:

- proprietatea înălțimii rândului - [Height](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/height/)
- proprietatea înălțimii regulii pentru rândul dat - [HeightRule](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/heightrule/)

În același timp, o înălțime diferită poate fi stabilită pentru fiecare rând - aceasta permite un control larg asupra setărilor tabelului.

{{% alert color="primary" %}}

Opțiuni de regulă pentru specificarea înălțimii unui obiect pot fi stabilite folosind enumerarea [HeightRule](https://reference.aspose.com/words/net/aspose.words/heightrule/).

{{% /alert %}}

Exemplul de cod următor arată cum să creați o tabelă care conține o singură celulă și să aplicați formatarea rândului:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-row-formatting.cs" >}}

## Specificaţi lăţimea tabelelor şi a celulelor

O masă dintr-un Microsoft Word document oferă mai multe moduri diferite de a redimensiona tabelul și celulele individuale. Aceste proprietăți permit un control considerabil asupra aspectului și comportamentului tabelului, astfel încât Aspose.Words suportă comportamentul tabelelor, așa cum este în Microsoft Word.

Este important să știți că elementele de tabel prezintă mai multe proprietăți diferite care pot afecta modul în care se calculează lățimea generală a tabelului, precum și a celulelor individuale

"- Lățimea preferată pe masă"
- Lățimea preferată pentru celule individuale
- Permițând autofitul pe masă

Acest articol detaliază modul în care funcționează diferitele proprietăți de calcul al lățimii tabelului și modul de a obține controlul complet asupra procesului de calcul. Aceasta este
în special util să știi în astfel de cazuri, unde aranjamentul tabelei nu apare așa cum se așteaptă.

{{% alert color="primary" %}}

În majoritatea cazurilor, se recomandă o celulă preferată decât lățimea tabelului. Lățimea celulelor preferată este mai în concordanță cu specificația DOCX precum și cu Aspose.Words șablonului.

Lățimea celulei este de fapt o valoare calculată pentru formatul DOCX. Lățimea reală a celulelor depinde de multe lucruri. De exemplu, modificarea marginilor paginii sau lățimii de tabel preferată poate afecta lățimea reală a celulei.

"Lățimea de celulă preferată este o proprietate care se stochează în document." Nu depinde de nimic și nu se schimbă atunci când schimbați tabelul sau alte proprietăți ale celulei.

{{% /alert %}}

{{% alert color="primary" %}}

Toate proprietățile și metodele descrise în acest articol sunt legate de modul în care funcționează tabelele în Microsoft Word. În majoritatea cazurilor, dacă construiești tabelele în mod programatic dar îți este greu să creezi tabelul dorit, poți în schimb încerca crearea vizuală a acestuia în Microsoft Word și apoi copia pur și simplu valorile formatării în aplicația ta.

{{% /alert %}}

### Cum să folosești lățimea preferată

Lățimea dorită a unei tabele sau a celulelor individuale este definită prin proprietatea lățime preferată, care este mărimea la care un element încearcă să se potrivească. "Adică, lăţimea preferată poate fi specificată pentru întreaga tabelă sau pentru celule individuale." În unele situații nu este posibil să se potrivească exact această lățime, dar lățimea reală va fi aproape de această valoare în majoritatea cazurilor.

Tipul și valoarea preferate a lățimii potrivite sunt stabilite folosind metodele clasei [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/):

* metoda [Auto](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/auto/) pentru a specifica auto sau "fără lățime preferată"
* metoda [FromPercent](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompercent/) pentru specificaţia unei lățimi procentuale
* metoda [FromPoints](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompoints/) pentru a specifica lățimea în puncte

Imaginea de mai jos prezintă o reprezentare a setărilor caracteristicilor *lățime preferată* în Microsoft Word și proprietățile lor corespunzătoare în Aspose.Words.

![formatting-table-properties-aspose-words-net](applying-formatting-8.png)

Un exemplu de modul în care aceste opțiuni sunt aplicate la o masă reală dintr-un document îl puteți vedea în imaginea de mai jos.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Înainte de a putea folosi lăţimea preferată într-o tabelă, trebuie să te asiguri că tabelul conţine cel puţin un rând. Acest lucru se datorează faptului că formatarea tabelelor într-un Microsoft Word document sau într-un document creat în Aspose.Words este stocată în rândurile tabelului.

{{% /alert %}}

#### Specifica lățimea tabelului sau a celulei preferate

În Aspose.Words, lățimile tabelelor și a celulelor sunt setate folosind proprietatea [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) și proprietatea [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/), cu opțiuni disponibile în enumerarea [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/):

- **Auto**, care este echivalent cu o lățime preferată nsetată
- **Percent**, care se potrivește cu elementul relativ la spațiul disponibil în fereastra sau dimensiunea recipientului, și recalculează valoarea atunci când lățimea disponibilă se schimbă
- **Points**, care corespunde unui element cu lățimea specificată în puncte

{{% alert color="primary" %}}

Din setarea implicită, un tabel poate fi descris ca fiind adaptat la 100% din spațiul disponibil pe pagină. În acest caz, înseamnă că tabelul va încerca să ocupe spațiul dintre marginile paginii din stânga și din dreapta.

{{% /alert %}}

Folosind proprietatea [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) se va ajusta lățimea sa preferată în raport cu containerul său: pagină, coloană de text sau celulă de tabel exterioară dacă este un tabel înnscris.

Exemplul de cod următor arată cum să se configureze tabelul pentru a se potrivi automat la 50% din lățimea paginii:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-page-width.cs" >}}

Utilizarea proprietății [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/) pe o anumită celulă va ajusta lățimea sa preferată.

Exemplul de cod următor arată cum să setați setările de lățime preferate diferite:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "preferred-width-settings.cs" >}}

#### Găsiți Tipul și Valoarea Preferate a Lățimii

Puteți folosi proprietățile [Type](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/type/) și [Value](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/value/) pentru a găsi detalii de lățime preferate ale tabelului sau celulei dorite.

Exemplul de cod următor arată cum se obține tipul de lățime preferat al unei celule de tabelă:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "retrieve-preferred-width-type.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Cum să setezi AutoFit

Proprietatea [AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/) permite celulelor dintr-o tabelă să crească şi să se micşoreze în funcţie de un criteriu selectat. De exemplu, puteți folosi opțiunea **Auto Fit la fereastră** pentru a face ca tabelul să se potrivească lăţimii paginii şi opţiunea **AutoFit la conținut** pentru a permite fiecărei celule să crească sau să scadă în funcţie de conţinut.

{{% alert color="primary" %}}

În plus, proprietatea **AllowAutoFit** poate fi folosită în combinație cu o lățime de celulă preferată pentru a formata o celulă care se potrivește automat conținutului său, dar are și o lățime inițială. Dacă este necesar lățimea celulei poate crește dincolo de această lățime.

{{% /alert %}}

În mod implicit, Aspose.Words introduce o nouă tabelă folosind **Auto potrivire la fereastră**. Masa va fi dimensionată în funcție de lățimea paginii disponibile. Pentru a redimensiona o tabele, puteți apela metoda [AutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/autofit/). Acest metode acceptă o enumerare [AutoFitBehavior](https://reference.aspose.com/words/net/aspose.words.tables/autofitbehavior/) care specifică tipul de autofit aplicat la tabel.

Este important să știi că metoda autofit este de fapt o scurtătură care aplică diferite proprietăți la tabel în același timp. Acestea sunt proprietăți care dau efectiv tabelului comportamentul observat. Vom discuta aceste proprietăți pentru fiecare opțiune de autofit.

Exemplul de cod de mai jos arată cum se setează o tabelă să se micșoreze sau să crească fiecare celulă conform conținutului său:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-auto-fit.cs" >}}

#### Auto Fit Tabelă la Fereastră

Când se aplică auto-dimensiunea la o fereastră la o tabelă, următoarele operații sunt efectuate efectiv în spatele scenei:

1. Proprietatea **Table.AllowAutoFit** este activată pentru a redimensiona automat coloanele pentru a se potrivi cu conținutul disponibil, folosind o valoare de **Table.PreferredWidth** de 100%
2. **CellFormat.PreferredWidth** este eliminat din toate celulele de tabelă
      {{% alert color="primary" %}}
   Notă că acest lucru este ușor diferit de comportamentul Microsoft Word, unde lățimea preferată a fiecărei celule se stabilește la valori potrivite în funcție de dimensiunea și conținutul lor actual. Aspose.Words nu actualizează lățimea preferată, deci ele pur și simplu sunt golite.
      {{% /alert %}}
3. Lățimea coloanelor sunt recalculată pentru conținutul curent al tabelului - rezultatul final este un tabel care ocupă lățimea totală disponibilă
4. Lățimea coloanelor din tabel se modifică automat pe măsură ce utilizatorul editează textul

Exemplul de cod următor arată cum să autotajească un tabel la lățimea paginii:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-page-width.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Tabelul AutoFit la Conținut

Când masa este auto-dimensiuni conținutul, pașii următori sunt de fapt efectuate în culise:

1. Proprietatea **Table.AllowAutoFit** este activată pentru a mări automat fiecare celulă în funcție de conținutul său

2. "Lățimea preferată a tabelului este eliminată din **Table.PreferredWidth**, "**CellFormat.PreferredWidth**" este eliminat pentru fiecare celulă de tabelă"
      {{% alert color="primary" %}}

   Notă că această opțiune de autofituire elimină lățimea preferată din celule, la fel ca în Microsoft Word. Dacă vrei să păstrezi dimensiunile coloanei şi să creşti sau să scadă numărul de coloane pentru a se potrivi cu conţinutul, ar trebui să setezi proprietatea **Table.AllowAutoFit** la **True** pe cont propriu mai degrabă decât să foloseşti scurtătura autofit.{{% /alert %}}

3. Lățimea coloanei este recalculată pentru conținutul tabelului curent - rezultatul final este un tabel în care lățimea coloanei și lățimea întregului tabel sunt redimensionate automat pentru a se potrivi cel mai bine conținutului, pe măsură ce utilizatorul editează textul

Exemplul de cod următor arată cum să se adapteze o masă conținutului său:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-contents.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Dezactivați AutoFit în Tabel și Utilizați Lățimea Fixă a Coloanei

Dacă o masă are autofit dezactivat și lățimi de coloane fixe sunt utilizate în schimb, următoarele pași sunt efectuați:

1. **Table.AllowAutoFit** proprietate este dezactivată, astfel încât coloane nu cresc sau se micșorează la conținutul lor

2. Lățimea preferată a întregii tabele este eliminată din **Table.PreferredWidth**, **CellFormat.PreferredWidth** este eliminat din toate celulele de tabel
3. Rezultatul final este o tabelă ale cărui lățimi de coloană sunt determinate de proprietatea [CellFormat.Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/), și ale căror coloane nu se redimensionează automat când utilizatorul introduce text sau când pagina este redimensionată

{{% alert color="primary" %}}

Rețineți că dacă nu se specifică lățimea pentru **CellFormat.Width** se folosește valoarea implicită de un inch (72 puncte).

{{% /alert %}}

Exemplul următor de cod arată cum să dezactiveze autofit și să activeze lățime fixă pentru tabelul specificat:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-fixed-column-widths.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Ordine de precădere atunci când calculăm lățimea celulei

Aspose.Words permite utilizatorilor să definească lățimea unei tabele sau a unei celule prin intermediul mai multor obiecte, inclusiv [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) – proprietatea sa "[Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/)" este în mare parte rămasă din versiunile anterioare, dar este încă utilă pentru simplificarea setării lăţimii celulei.

Este important să ştiţi că proprietatea **CellFormat.Width** funcţionează diferit în funcţie de care dintre celelalte proprietăţi de lăţime există deja în tabel.

Aspose.Words folosește următoarea ordine pentru calcularea lățimilor de celule:

| Comandă | Proprietate | Descrierea |
| ----- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 1 | [AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/)" e determinat | Dacă este activat **AutoFit**: <br>- tabelul poate crește dincolo de lățimea preferată pentru a acomoda conținutul – de obicei nu se reduce sub lățimea preferată <br>- orice modificare a valorii **CellFormat.Width** este ignorată și celula va se potrivi conținutului său în schimb |
| 2 | [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) cu o valoare de **Points** sau **Percent** | **CellFormat.Width** este ignorat |
| 3 | [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) cu o valoare de **Auto** | Valoarea din **CellFormat.Width** este copiată și devine lățimea preferată a celulei (în puncte) |

{{% alert color="primary" %}}

Orice modificări ale proprietății de lățime nu sunt actualizate în lățimea preferată și trebuie aplicate în schimb la lățimea preferată.

{{% /alert %}}

{{% alert color="primary" %}}

"În timp ce creezi o dispoziție fixă de tabel, specifici lățimea celulei." O celulă fără lățime nu poate fi salvată în formatul DOC. Formate de document care nu sunt DOC, cum ar fi DOCX, permit, în principiu, salvarea celulelor fără lățime într-un aspect de masă fix.

{{% /alert %}}

## Permite spațiere între celule

Poți obține sau seta orice spațiu suplimentar între celulele de tabel, asemănător cu opțiunea "Spatiu celule" din Microsoft Word. Aceasta se poate face folosind proprietatea [AllowCellSpacing](https://reference.aspose.com/words/net/aspose.words.tables/table/allowcellspacing/).

Un exemplu al modului în care aceste opțiuni sunt aplicate la o masă reală într-un document poate fi văzut în imaginea de mai jos.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-net" style="width:500px"/>

Exemplul de cod următor arată cum se stabilește spațierea între celule:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-cell-spacing.cs" >}}

## Aplică borduri și umbrirea

Se pot aplica borduri și umbre la întreaga masă folosind [Table.SetBorder](https://reference.aspose.com/words/net/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/net/aspose.words.tables/table/setborders/) și [Table.SetShading](https://reference.aspose.com/words/net/aspose.words.tables/table/setshading/), sau doar la anumite celule folosind [CellFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/borders/) și [CellFormat.Shading](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/shading/). În plus, bordurile rândurilor pot fi setate folosind [RowFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/borders/), totuși nu se poate aplica umbrirea în acest fel.

Imaginea de mai jos prezintă setările de margine și umbră în Microsoft Word și proprietățile lor corespondente în Aspose.Words.

![formatting-border-line-aspose-words-net](applying-formatting-6.png)

![formatting-cell-color-aspose-words-net](applying-formatting-7.png)

Exemplul de cod următor arată cum se poate formata o tabelă și o celulă cu diferite margini și umbre:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "format-table-and-cell-with-different-borders.cs" >}}
