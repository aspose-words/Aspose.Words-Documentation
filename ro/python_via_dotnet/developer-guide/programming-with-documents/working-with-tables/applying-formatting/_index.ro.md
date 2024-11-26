---
title: Formatarea tabelului în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Aplicați Formatarea
linktitle: Aplicați Formatarea
description: "Formatarea tabelului în detalii folosind Python. Utilizați Python pentru a formata fiecare parte a tabelului."
type: docs
weight: 70
url: /ro/python-net/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Fiecare element al unui tabel poate fi aplicat cu formatare diferită. De exemplu, formatarea tabelului va fi aplicată întregului tabel, formatarea rândurilor doar la anumite rânduri, formatarea celulelor doar la anumite celule.

Aspose.Words oferă un bogat API pentru a prelua și aplica formatarea unui tabel. Puteți utiliza nodurile [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) și [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) pentru a seta formatarea.

În acest articol, vom vorbi despre cum să aplicați formatarea la diferite noduri de tabel și ce setări de formatare a tabelului Aspose.Words acceptă.

## Aplicați formatarea la diferite noduri

În această secțiune, vom analiza aplicarea formatării la diferite noduri de tabel.

### Formatarea La Nivel De Tabel

Pentru a aplica formatarea unui tabel, puteți utiliza proprietățile disponibile pe nodul **Table** corespunzător folosind clasele [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) și [TableCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Rețineți că tabelul trebuie să aibă cel puțin un rând înainte ca proprietățile tabelului să poată fi aplicate. Aceasta înseamnă că atunci când construiți un tabel cu [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), această formatare trebuie făcută după primul apel la [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/#default) sau după ce primul rând este adăugat la tabel sau când nodurile sunt inserate direct în DOM.

{{% /alert %}}

Imaginile de mai jos prezintă o reprezentare a **Table** caracteristici de formatare în Microsoft Word și proprietățile lor corespunzătoare în Aspose.Words.

![formattin-features-table-level-aspose-words-python](applying-formatting-1.png)




![formatting-table-options-aspose-words-python](applying-formatting-2.png)

Următorul exemplu de cod arată cum să aplicați o margine de contur la un tabel:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-outline-border.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Următorul exemplu de cod arată cum să construiți un tabel cu toate frontierele activate (grilă):

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "build-table-with-borders.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formatarea La Nivel De Rând

**Nivel de rând**

{{% alert color="primary" %}}

Rețineți că un **Row** poate fi doar un nod copil al unui **Table**. În același timp, trebuie să existe cel puțin un **Cell** în **Row**, astfel încât formatarea să poată fi aplicată.

{{% /alert %}}

Imaginile de mai jos prezintă o reprezentare a **Row** caracteristici de formatare în Microsoft Word și proprietățile lor corespunzătoare în Aspose.Words.

![formatting-row-level-aspose-words-python](applying-formatting-3.png)


Următorul exemplu de cod arată cum să modificați formatarea rândului tabelului:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-row-formatting.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formatarea La Nivel De Celulă

Formatarea la nivel de celulă este controlată de clasele [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/cell_format/) și [CellCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Rețineți că un **Cell** poate fi doar un nod copil al unui **Row**. În același timp, trebuie să existe cel puțin un [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) în **Cell**, astfel încât formatarea să poată fi aplicată.

În plus față de **Paragraph**, puteți introduce și un **Table** într-un **Cell**.

{{% /alert %}}

Imaginile de mai jos prezintă o reprezentare a **Cell** caracteristici de formatare în Microsoft Word și proprietățile lor corespunzătoare în Aspose.Words.

![formatting-cell-level-aspose-words-python](applying-formatting-4.png)




![auto-formatting-cell-level-aspose-words-python](applying-formatting-5.png)


Următorul exemplu de cod arată cum să modificați formatarea unei celule de tabel:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-cell-formatting.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Următorul exemplu de cod arată cum să setați cantitatea de spațiu (în puncte) de adăugat în stânga / sus / dreapta / jos a conținutului celulei:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "cell-padding.py" >}}

## Specificați Înălțimile Rândurilor

Cel mai simplu mod de a seta înălțimea rândului este să folosiți **DocumentBuilder**. Folosind proprietățile corespunzătoare **RowFormat**, Puteți seta setarea implicită a înălțimii sau puteți aplica o înălțime diferită pentru fiecare rând din tabel.

În Aspose.Words, înălțimea rândului tabelului este controlată de:

- proprietatea înălțimea rândului - [Height](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height/)
- proprietatea regulii de înălțime pentru rândul dat - [HeightRule](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height_rule/)

În același timp, poate fi setată o înălțime diferită pentru fiecare rând – acest lucru vă permite să controlați pe scară largă setările tabelului.

{{% alert color="primary" %}}

Opțiunile de regulă pentru specificarea înălțimii unui obiect pot fi setate folosind enumerarea [HeightRule](https://reference.aspose.com/words/python-net/aspose.words/heightrule/).

{{% /alert %}}

Următorul exemplu de cod arată cum să creați un tabel care conține o singură celulă și să aplicați formatarea rândurilor:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-row-formatting.py" >}}

## Specificarea lățimilor tabelului și a celulelor

Un tabel dintr-un document Microsoft Word oferă mai multe moduri diferite de redimensionare a tabelului și a celulelor individuale. Aceste proprietăți permit un control considerabil asupra aspectului și comportamentului tabelului, astfel încât Aspose.Words să susțină comportamentul tabelelor, ca în Microsoft Word.

Este important să știți că elementele tabelului prezintă mai multe proprietăți diferite care pot afecta modul în care se calculează lățimile tabelului general, precum și celulele individuale:

- Lățimea preferată pe masă
- Lățimea preferată pe celule individuale
- Permiterea autofit pe masă

Acest articol detaliază modul în care funcționează diferitele proprietăți de calcul al lățimii tabelului și cum să obțineți control complet asupra calculului lățimii tabelului. Aceasta este
este deosebit de util să știți în astfel de cazuri în care aspectul tabelului nu apare așa cum era de așteptat.

{{% alert color="primary" %}}

În majoritatea cazurilor, celula preferată este recomandată decât lățimea mesei. Lățimea preferată a celulei este mai în concordanță cu specificația formatului DOCX, precum și cu modelul Aspose.Words.

Lățimea celulei este de fapt o valoare calculată pentru formatul DOCX. Lățimea reală a celulei poate depinde de multe lucruri. De exemplu, modificarea marginilor paginii sau a lățimii preferate a tabelului poate afecta lățimea reală a celulei.

Lățimea de celulă preferată este o proprietate de celulă care este stocată în document. Nu depinde de nimic și nu se schimbă atunci când schimbați tabelul sau alte proprietăți ale celulei.

{{% /alert %}}

{{% alert color="primary" %}}

Toate proprietățile și metodele descrise în acest articol sunt legate de modul în care funcționează tabelele în Microsoft Word. Deci, în majoritatea cazurilor, dacă vă construiți tabelul programatic, dar vă este greu să creați tabelul dorit, puteți încerca mai întâi să îl creați vizual în Microsoft Word și apoi să copiați pur și simplu valorile de formatare în aplicația dvs.

{{% /alert %}}

### Cum se utilizează lățimea preferată

Lățimea dorită a unui tabel sau a celulelor individuale este definită prin proprietatea lățimii preferate, care este dimensiunea pe care un element se străduiește să o potrivească. Adică, lățimea preferată poate fi specificată pentru întregul tabel sau pentru celulele individuale. În unele situații este posibil să nu fie posibilă încadrarea exactă a acestei lățimi, dar lățimea reală va fi apropiată de această valoare în majoritatea cazurilor.

Tipul și valoarea lățimii preferate corespunzătoare sunt setate folosind metodele clasei [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/):

- metoda [Auto](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) pentru a specifica auto sau "fără lățime preferată"
- metoda [FromPercent](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) pentru a specifica o lățime procentuală
- metoda [FromPoints](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) pentru a specifica lățimea în puncte

Imaginile de mai jos prezintă o reprezentare a *preferred width setting features* în Microsoft Word și proprietățile lor corespunzătoare în Aspose.Words.

![formatting-table-properties-aspose-words-python](applying-formatting-8.png)

Un exemplu despre modul în care aceste opțiuni sunt aplicate unui tabel real dintr-un document poate fi văzut în imaginea de mai jos.

![tables-applying-options-python](applying-formatting-9.png)

{{% alert color="primary" %}}

Înainte de a putea utiliza lățimea preferată într-un tabel, trebuie să vă asigurați că tabelul conține cel puțin un rând. Acest lucru se datorează faptului că o astfel de formatare a tabelului într-un document Microsoft Word sau într-un document creat în Aspose.Words este stocată în rândurile tabelului.

{{% /alert %}}

#### Specificați tabelul preferat sau lățimea celulei

În Aspose.Words, lățimile tabelului și celulei sunt setate folosind proprietatea [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) și proprietatea [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/), cu opțiuni disponibile în enumerarea [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/):

- **Auto**, care este echivalent cu nici un set de lățime preferat
- **Percent**, care se potrivește elementului în raport cu spațiul disponibil din fereastră sau dimensiunea containerului și recalculează valoarea atunci când lățimea disponibilă se modifică
- **Points**, care corespunde unui element cu lățimea specificată în puncte

{{% alert color="primary" %}}

În mod implicit, un tabel poate fi descris ca fiind montat la 100% din spațiul disponibil pe pagină. În acest caz, aceasta înseamnă că tabelul va încerca să ocupe spațiul dintre marginile paginii din stânga și din dreapta.

{{% /alert %}}

Utilizarea proprietății [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) va ajusta lățimea preferată în raport cu containerul său: pagină, coloană de text sau celulă de tabel exterioară dacă este un tabel imbricat.

Următorul exemplu de cod arată cum să setați tabelul să se potrivească automat la 50% din lățimea paginii:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

Utilizarea proprietății [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) pe o anumită celulă va ajusta lățimea preferată.

Următorul exemplu de cod arată cum să setați diferitele setări de lățime preferate:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "preferred-width-settings.py" >}}

#### Găsirea tipului și valorii lățimii preferate

Puteți utiliza proprietățile [Type](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/type/) și [Value](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/value/) pentru a găsi detaliile de lățime preferate ale tabelului sau celulei dorite.

Următorul exemplu de cod arată cum să recuperați tipul de lățime preferat al unei celule de tabel:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "retrieve-preferred-width-type.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Cum să setați Autofit

Proprietatea [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) permite celulelor dintr-un tabel să crească și să se micșoreze conform unui criteriu selectat. De exemplu, puteți utiliza opțiunea **AutoFit to Window** pentru a potrivi tabelul la lățimea paginii și opțiunea **AutoFit to Content** pentru a permite fiecărei celule să crească sau să se micșoreze în funcție de conținutul său.

{{% alert color="primary" %}}

În plus, proprietatea **AllowAutoFit** poate fi utilizată împreună cu o lățime de celulă preferată pentru a formata o celulă care se potrivește automat conținutului său, dar are și o lățime inițială. Dacă este necesar, Lățimea celulei poate crește apoi peste această lățime.

{{% /alert %}}

În mod implicit, Aspose.Words introduce un nou tabel folosind **AutoFit to Window**. Tabelul va fi dimensionat în funcție de lățimea paginii disponibile. Pentru a redimensiona un tabel, puteți apela metoda [AutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/auto_fit/#autofitbehavior). Această metodă acceptă o enumerare [AutoFitBehavior](https://reference.aspose.com/words/python-net/aspose.words.tables/autofitbehavior/) care specifică ce tip de autofit este aplicat tabelului.

Este important să știți că metoda autofit este de fapt o comandă rapidă care aplică proprietăți diferite tabelului în același timp. Acestea sunt proprietăți care dau de fapt tabelului comportamentul observat. Vom discuta aceste proprietăți pentru fiecare opțiune de autofit.

Următorul exemplu de cod arată cum să setați un tabel pentru a micșora sau crește fiecare celulă în funcție de conținutul său:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-auto-fit.py" >}}

#### AutoFit tabel la fereastră

Când autofitting la o fereastră este aplicat la un tabel, următoarele operații sunt de fapt efectuate în spatele scenei:

1. Proprietatea **Table.AllowAutoFit** este activată pentru a redimensiona automat coloanele pentru a se potrivi conținutului disponibil, utilizând o valoare **Table.PreferredWidth** de 100%
2. **CellFormat.PreferredWidth** este eliminat din toate celulele tabelului
   {{% alert color="primary" %}}
   Rețineți că acest lucru este ușor diferit de comportamentul Microsoft Word, unde lățimea preferată a fiecărei celule este setată la valori adecvate pe baza dimensiunii și conținutului lor curent. Aspose.Words nu actualizează lățimea preferată, astfel încât acestea să fie șterse.
   {{% /alert %}}
3. Lățimile coloanelor sunt recalculate pentru conținutul curent al tabelului-rezultatul final este un tabel care ocupă întreaga lățime disponibilă
4. Lățimea coloanelor din tabel se modifică automat pe măsură ce utilizatorul editează textul

Următorul exemplu de cod arată cum se ajustează automat un tabel la lățimea paginii:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### AutoFit tabel la conținut

Când tabelul este autofitted conținutul, următorii pași sunt de fapt efectuate în spatele scenei:

1. Proprietatea **Table.AllowAutoFit** este activată pentru a redimensiona automat fiecare celulă în funcție de conținutul său

2. Lățimea tabelului preferat este eliminată din **Table.PreferredWidth**, **CellFormat.PreferredWidth** este eliminată pentru fiecare celulă de tabel
   {{% alert color="primary" %}}

   Rețineți că această opțiune autofit elimină lățimea preferată din celule, la fel ca în Microsoft Word. Dacă doriți să păstrați dimensiunile coloanelor și să măriți sau să micșorați coloanele pentru a se potrivi conținutului, ar trebui să setați proprietatea **Table.AllowAutoFit** la **True** pe cont propriu, mai degrabă decât să utilizați comanda rapidă autofit.{{% /alert %}}

3. Lățimile coloanelor sunt recalculate pentru conținutul curent al tabelului-rezultatul final este un tabel în care lățimile coloanelor și lățimea întregului tabel sunt redimensionate automat pentru a se potrivi cel mai bine conținutului pe măsură ce utilizatorul editează textul

Următorul exemplu de cod arată cum să se adapteze automat un tabel la conținutul său:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-contents.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Dezactivați AutoFit în tabel și utilizați lățimi fixe ale coloanelor

Dacă un tabel are autofit dezactivat și sunt utilizate lățimi fixe ale coloanelor, se efectuează următorii pași:

1. **Table.AllowAutoFit** proprietatea este dezactivată, astfel încât coloanele să nu crească sau să se micșoreze la conținutul lor
2. Lățimea preferată a întregului tabel este eliminată din **Table.PreferredWidth**, **CellFormat.PreferredWidth** este eliminată din toate celulele tabelului
3. Rezultatul final este un tabel ale cărui lățimi de coloană sunt determinate de proprietatea [CellFormat.Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/) și ale căror coloane nu sunt redimensionate automat atunci când utilizatorul introduce text sau când pagina este redimensionată

{{% alert color="primary" %}}

Rețineți că dacă nu este specificată nicio lățime pentru **CellFormat.Width**, se utilizează valoarea implicită de un inch (72 puncte).

{{% /alert %}}

Următorul exemplu de cod arată cum să dezactivați autofit și să activați lățimea fixă pentru tabelul specificat:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-fixed-column-widths.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Ordinea de prioritate la calcularea lățimii celulei

Aspose.Words permite utilizatorilor să definească lățimea unui tabel sau a unei celule prin mai multe obiecte, inclusiv [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) – proprietatea sa [Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/q) este în mare parte rămasă din versiunile anterioare, cu toate acestea, este încă utilă pentru simplificarea setării lățimii celulei.

Este important să știți că proprietatea **CellFormat.Width** funcționează diferit în funcție de care dintre celelalte proprietăți De lățime există deja în tabel.

Aspose.Words utilizează următoarea ordine pentru calcularea lățimilor celulelor:

| Comandă | Proprietate | Descriere |
| ----- | ------------------------------------------------------------ | ------------------------------------------------------------ |
|  | [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) este determinat | Dacă **AutoFit** este activat:<br>- tabelul poate crește dincolo de lățimea preferată pentru a se potrivi conținutului-de obicei nu se micșorează sub lățimea preferată<br>- orice modificare a valorii **CellFormat.Width** este ignorată și celula se va potrivi conținutului său |
|  | [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) cu o valoare de **Points** sau **Percent** | **CellFormat.Width** este ignorat |
|  | [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) cu o valoare de **Auto** | Valoarea de la **CellFormat.Width** este copiată și devine lățimea preferată a celulei (în puncte) |

{{% alert color="primary" %}}

Orice modificări ale proprietății lățime nu sunt actualizate în lățimea preferată și trebuie aplicate în schimb la lățimea preferată.

{{% /alert %}}

{{% alert color="primary" %}}

În timp ce creați un aspect fix al tabelului, specificați lățimea celulei. O celulă fără lățime nu poate fi salvată în format DOC. Formatele de documente, altele decât DOC, cum ar fi DOCX, permit, în principiu, salvarea celulelor fără lățime într-un aspect fix al tabelului.

{{% /alert %}}

## Permiteți Spațierea Între Celule

Puteți obține sau seta orice spațiu suplimentar între celulele tabelului similar cu opțiunea "spațierea celulelor" din Microsoft Word. Acest lucru se poate face folosind proprietatea [AllowCellSpacing](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_cell_spacing/).

Un exemplu despre modul în care aceste opțiuni sunt aplicate unui tabel real dintr-un document poate fi văzut în imaginea de mai jos.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-python" style="width:500px"/>

Următorul exemplu de cod arată cum să setați spațiul dintre celule:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-cell-spacing.py" >}}

## Aplicarea frontierelor și umbrirea

Bordurile și umbrirea pot fi aplicate fie întregului tabel folosind [Table.SetBorder](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_border/), [Table.SetBorders](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_borders/) și [Table.SetShading](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_shading/), fie numai celulelor specifice folosind [CellFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/borders/) și [CellFormat.Shading](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/shading/). În plus, marginile rândurilor pot fi setate folosind [RowFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/borders/), cu toate acestea umbrirea nu poate fi aplicată în acest fel.

Imaginile de mai jos Arată setările de margine și umbră în Microsoft Word și proprietățile lor corespunzătoare în Aspose.Words.

![formatting-border-line-aspose-words-python](applying-formatting-6.png)

![formatting-cell-color-aspose-words-python](applying-formatting-7.png)

Următorul exemplu de cod arată cum să formatați un tabel și o celulă cu margini și nuanțe diferite:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "format-table-and-cell-with-different-borders.py" >}}
