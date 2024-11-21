---
title: Specificați TrueType Locația Fonturilor
second_title: Aspose.Words pentru Python via .NET
articleTitle: Specificați TrueType Locația Fonturilor
linktitle: Specificați TrueType Locația Fonturilor
description: "Specificați diverse surse de fonturi TrueType: folder de sistem, surse de utilizator, încărcarea fonturilor dintr-un flux, un sistem de fișiere sau memorie folosind Python."
type: docs
weight: 30
url: /ro/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Acest subiect descrie comportamentul implicit al Aspose.Words atunci când caută fonturi TrueType, inclusiv diferențe specifice sistemului de operare, și demonstrează cum să specificați sursele de fonturi ale utilizatorului.

Clasa [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) este utilizată pentru a specifica diferite surse de fonturi. Există mai multe implementări ale clasei [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/):

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Detaliile de implementare pentru unele clase sunt explicate mai jos.

## Încărcarea fonturilor din sistem

Există o clasă specială [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) care este întotdeauna utilizată în mod implicit. Reprezintă toate fonturile TrueType instalate pe sistem. Prin urmare, este posibil să creați o listă de surse cu [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) și orice alte surse necesare:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

O singură instanță a clasei [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) este definită implicit în [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Pe diferite sisteme de operare, fonturile pot fi localizate în locuri diferite. Cu toate acestea, utilizarea unei instanțe [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) pentru fiecare document nu este o soluție optimă. În majoritatea cazurilor, utilizarea [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) ar trebui să fie suficientă.

Instanțele per document sunt necesare numai dacă este necesar să se utilizeze diferite surse de fonturi pentru diferite documente, ceea ce este un caz rar. Utilizarea mai multor instanțe [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) scade performanța deoarece nu partajează memoria cache.

### Unde Aspose.Words caută TrueType fonturi pe Windows

În majoritatea cazurilor, Windows Utilizatorii nu se confruntă cu probleme semnificative cu fonturile ratate sau cu machete incorecte. De obicei, Aspose.Words trece printr-un document și, atunci când întâlnește legătura unui font, preia cu succes datele fontului din folderul de sistem.

Pe Windows, Aspose.Words ia mai întâi toate fonturile disponibile din folderul _%windir%\Fonts. Această setare va funcționa pentru dvs. de cele mai multe ori. Specificați propriile foldere de fonturi numai dacă aveți nevoie. Aspose.Words pentru .NET de asemenea, caută fonturi suplimentare înregistrate în cheia de registry *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts*. În plus, Windows 10 permite instalarea fonturilor pentru utilizatorul curent. Fonturile sunt plasate în folderul * %userprofile%\AppData\Local\Microsoft\Windows\Fonts * și, de asemenea, specificate în registrul *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts*, Unde Aspose.Words va căuta aceste fonturi.

Dacă un document conține fonturi încorporate, Aspose.Words poate citi datele relevante ale fontului din document și le poate folosi pentru a crea aspectul documentului. Documentele pot conține, de asemenea, linkuri către fonturi care nu se află în folderele de sistem, caz în care următoarele scenarii vin să funcționeze:

- Utilizatorii pot configura noi surse de fonturi prin clasa [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)
- Aspose.Words poate încerca să înlocuiască fontul ratat cu unul similar


### Fonturi pe sisteme Non - Windows

Aspose.Words va căuta fonturile din folderele de fonturi ale sistemului. O listă a acestor foldere poate fi văzută prin metoda [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/). Dacă nu sunt găsite fonturi acceptate, Aspose.Words va folosi fontul implicit încorporat Fanwood.ttf.

Deoarece valorile fontului Windows și non - Windows OS sunt diferite, Aspose.Words face tot posibilul pentru a găsi un font similar și pentru a construi un aspect similar cu originalul. Cu toate acestea, acest lucru nu este întotdeauna posibil. În aceste cazuri, clasa [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) ar trebui utilizată pentru a adăuga fonturi personalizate sau reguli de substituție.

#### Unde Aspose.Words caută TrueType fonturi pe Linux

Diferite distribuții Linux pot stoca fonturi în foldere diferite. Aspose.Words caută fonturi în mai multe locații. În mod implicit, Aspose.Words caută fonturile în toate locațiile următoare: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. Acest comportament implicit va funcționa pentru majoritatea distribuțiilor Linux, dar nu este garantat să funcționeze tot timpul, caz în care ar putea fi necesar să specificați în mod explicit locația fonturilor True type. Pentru a face acest lucru, trebuie să știți unde sunt instalate fonturile TrueType pe distribuția Linux.

#### Unde Aspose.Words caută TrueType fonturi pe Mac OS X

Aspose.Words caută fonturi în folderul `/Library/Fonts`, care este locația standard pentru TrueType fonturi pe Mac OS X. Deși această setare va funcționa pentru dvs. de cele mai multe ori, poate fi necesar să specificați propriile foldere de fonturi în cazul în care aveți nevoie.

## Încărcarea fonturilor din dosar

Dacă documentul procesat conține linkuri către fonturi care nu sunt în sistem sau nu doriți să le adăugați în folderul de sistem sau nu aveți permisiuni, atunci cea mai bună soluție ar fi să adăugați un folder cu propriile fonturi folosind metoda [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/). Acest lucru va permite înlocuirea sursei de sistem cu o sursă de utilizator. Aspose.Words nu va mai căuta fonturi în registru sau în folderul Windows\Font și, în schimb, va scana doar fonturile din folderul(folderele) specificat (e). Metoda [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) va returna valorile corespunzătoare.

### Specificarea unuia sau mai multor foldere de fonturi

Metodele [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) și [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) sunt scurtături către metoda [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) cu una sau mai multe instanțe [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/). Aceste metode sunt folosite pentru a indica unde Aspose.Words ar trebui să caute fonturi. Dacă un folder nu există sau nu este accesibil, Aspose.Words ignoră acest folder. Dacă toate folderele, inclusiv sursele pentru înlocuirea fontului, au fost ignorate, Aspose.Words va folosi fontul Fanwood ca implicit.

Următorul exemplu demonstrează cum să setați folderul sau sursa, pe care Aspose.Words le va folosi ulterior pentru a căuta fonturi TrueType în timpul redării sau încorporării fonturilor:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Un parametru Boolean suplimentar controlează dacă fonturile sunt scanate recursiv prin toate folderele, scanând astfel toate folderele copil ale unui folder specificat. Următorul exemplu demonstrează cum să setați Aspose.Words să caute în mai multe foldere fonturi TrueType atunci când redați sau încorporați fonturi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Rețineți prioritățile. Dacă există fonturi cu același nume de familie și stil în diferite surse de fonturi, atunci Aspose.Words va selecta fontul din sursă cu o prioritate mai mare. Consultați descrierea câmpului "prioritate" de mai jos.

Dacă nu doriți deloc să utilizați fonturi de sistem, Aspose.Words vă permite să le ignorați și să utilizați numai propriile fonturi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Proprietate Prioritară

Proprietatea **priority** este utilizată atunci când există fonturi cu același nume de familie și stil în diferite surse de fonturi. În acest caz, Aspose.Words Selectează fontul din sursă cu valoarea prioritară mai mare. De exemplu, există o versiune veche a fontului în folderul de sistem și clientul a adăugat o nouă versiune a aceluiași font într-un folder personalizat.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Obținerea unei liste de fonturi disponibile

Dacă doriți să obțineți lista fonturilor disponibile, care, de exemplu, pot fi utilizate pentru a reda un document PDF, puteți utiliza metoda [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/), așa cum se arată în următorul exemplu de cod. Clasa [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) specifică informații despre fontul fizic disponibil pentru motorul de fonturi Aspose.Words:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
