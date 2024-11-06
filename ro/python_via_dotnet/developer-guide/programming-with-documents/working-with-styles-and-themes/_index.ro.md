---
title: Lucrul cu stiluri și teme
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu stiluri și teme
linktitle: Lucrul cu stiluri și teme
description: "Accesați și gestionați stiluri și teme într-un document folosind Python."
type: docs
weight: 110
url: /ro/python-net/working-with-styles-and-themes/
---

Clasa [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) este utilizată pentru a gestiona setările încorporate și pentru a aplica setările definite de utilizator stilurilor.

## Accesarea Stilurilor

Puteți obține o colecție de stiluri definite în document folosind proprietatea [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/). Această colecție deține atât stilurile încorporate, cât și cele definite de utilizator într-un document. Un anumit stil ar putea fi obținut prin numele/aliasul său, identificatorul de stil sau indexul său. Următorul exemplu de cod demonstrează cum să obțineți acces la colecția de stiluri definite în document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Cum să extrageți conținut pe baza stilurilor

La un nivel simplu, preluarea conținutului pe baza stilurilor dintr-un document Word poate fi utilă pentru identificarea, listarea și numărarea paragrafelor și a rulărilor de text formatate cu un anumit stil. De exemplu, poate fi necesar să identificați anumite tipuri de conținut din document, cum ar fi exemple, titluri, referințe, cuvinte cheie, nume de figuri și studii de caz.

Pentru a face acest lucru câțiva pași mai departe, acest lucru poate fi, de asemenea, utilizat pentru a valorifica structura documentului, definită de stilurile pe care le folosește, pentru a reutiliza documentul pentru o altă ieșire, cum ar fi HTML. Acesta este de fapt modul în care este construită documentația Aspose, punând Aspose.Words la încercare. Un instrument construit folosind Aspose.Words ia documentele Word sursă și le împarte în subiecte la anumite niveluri de titlu. Un fișier XML este produs folosind Aspose.Words care este folosit pentru a construi arborele de navigare pe care îl puteți vedea în stânga. Și apoi Aspose.Words convertește fiecare subiect în HTML.

Soluția pentru recuperarea textului formatat cu stiluri specifice într-un document Word este de obicei economică și simplă folosind Aspose.Words.

### Soluția

Pentru a ilustra cât de ușor gestionează Aspose.Words preluarea conținutului pe baza stilurilor, să ne uităm la un exemplu. În acest exemplu, vom prelua text formatat cu un anumit stil de paragraf și un stil de caractere dintr-un exemplu de document Word. La un nivel înalt, acest lucru va implica:
- Deschiderea unui document Word folosind clasa [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).
- Obținerea colecțiilor tuturor paragrafelor și a tuturor rulărilor din document.
- Selectarea numai paragrafele necesare și se execută. Mai exact, vom prelua textul formatat cu stilul de paragraf 'Heading 1 'și stilul de caractere 'intens accent' din acest exemplu de document Word.

![working-with-styles-and-themes-aspose-words-net](working-with-styles-and-themes-1.png)


În acest exemplu de document, textul formatat cu stilul de paragraf' Heading 1 ' este 'Insert Tab', ' Quick Styles 'și' Theme', iar textul formatat cu stilul de caractere' Intense accounts 'este format din mai multe instanțe de text Albastru, cursiv, aldin, cum ar fi' galerii 'și'look general'.

### Codul

Implementarea unei interogări bazate pe stil este destul de simplă în modelul obiectului document Aspose.Words, deoarece folosește pur și simplu instrumente care sunt deja în vigoare. Pentru această soluție sunt implementate două metode de clasă:
- **paragraphs_by_style_name** - această metodă preia o serie de paragrafe din document care au un nume de stil specific.
- **runs_by_style_name** - această metodă preia o matrice a acelor rulări din document care au un nume de stil specific. Ambele metode sunt foarte similare, singurele diferențe fiind tipurile de noduri și reprezentarea informațiilor de stil în cadrul nodurilor paragraf și run. Iată o implementare a `paragraphs_by_style_name`: exemplul de mai jos găsiți toate paragrafele formatate cu stilul specificat.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

Această implementare utilizează, de asemenea, metoda [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) a clasei [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), care returnează o colecție a tuturor nodurilor cu tipul specificat, care în acest caz în toate paragrafele.

Rețineți că al doilea parametru al metodei [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) este setat la `True`. Acest lucru forțează metoda [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) să selecteze recursiv din toate nodurile copil, mai degrabă decât să selecteze doar copiii imediati.

{{% /alert %}}

De asemenea, merită subliniat faptul că colecția paragrafe nu creează o cheltuială imediată, deoarece paragrafele sunt încărcate în această colecție numai atunci când accesați articole din ele. Apoi, tot ce trebuie să faceți este să Parcurgeți colecția, folosind operatorul standard foreach și să adăugați paragrafe care au stilul specificat la matricea paragraphs_with_style. Numele stilului `Paragraph` poate fi găsit în proprietatea [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) a obiectului [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/). Implementarea **runs_by_style_name** este aproape aceeași, deși evident folosim [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) pentru a prelua nodurile run. Proprietatea [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) a unui obiect [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) este utilizată pentru a accesa informații de stil în nodurile [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). Exemplul de mai jos găsiți toate rulările formatate cu stilul specificat.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Când ambele interogări sunt implementate, tot ce trebuie să faceți este să treceți un obiect document și să specificați numele stilului conținutului pe care doriți să îl preluați: mai jos exemplu rulați interogări și afișați rezultatele. Puteți descărca fișierul șablon al acestui exemplu din [aici](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Rezultatul Final

Când totul se face, rularea eșantionului va afișa următoarea ieșire:

![styles-and-themes-aspose-words-net](working-with-styles-and-themes-2.png)


După cum puteți vedea, acesta este un exemplu foarte simplu, care arată numărul și textul paragrafelor colectate și rulează în documentul Word eșantion.

## Copiați toate stilurile din șablon

Există cazuri în care doriți să copiați toate stilurile dintr-un document în altul. Puteți utiliza metoda [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) pentru a copia stiluri din șablonul specificat într-un document. Când stilurile sunt copiate dintr-un șablon într-un document, stilurile cu nume similare din document sunt redefinite pentru a se potrivi descrierilor de stil din șablon. Stilurile unice din șablon sunt copiate în document. Stilurile unice din document rămân intacte. Below code exemplu arată cum să copiați stiluri dintr-un document în altul.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Cum să manipulați proprietățile temei

Am adăugat basic API în Aspose.Words pentru a accesa proprietățile temei documentului. Pentru moment, acest API include următoarele obiecte publice:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Iată cum puteți obține proprietăți tematice:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

Iată cum puteți seta proprietățile temei:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
