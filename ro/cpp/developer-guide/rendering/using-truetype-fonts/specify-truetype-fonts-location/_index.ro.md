---
title: Specificați TrueType locația fonturilor în C++
second_title: Aspose.Words pentru C++
articleTitle: Specificați TrueType Locația Fonturilor
linktitle: Specificați TrueType Locația Fonturilor
description: "Specificați diverse surse de fonturi TrueType: folder de sistem, surse de utilizator, încărcarea fonturilor dintr-un flux, un sistem de fișiere sau memorie."
type: docs
weight: 30
url: /ro/cpp/specify-truetype-fonts-location/
---

Acest subiect descrie comportamentul implicit al Aspose.Words atunci când caută fonturi TrueType, inclusiv diferențe specifice sistemului de operare, și demonstrează cum să specificați sursele de fonturi ale utilizatorului.

Clasa [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) este utilizată pentru a specifica diferite surse de fonturi. Există mai multe implementări ale clasei **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

Detaliile de implementare pentru unele clase sunt explicate mai jos.

## Încărcați fonturi din sistem {#loading-fonts-from-system}

Există o clasă specială [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) care este întotdeauna utilizată în mod implicit. Reprezintă toate fonturile TrueType instalate pe sistem. Prin urmare, este posibil să creați o listă de surse cu **SystemFontSource** și orice alte surse necesare:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

O singură instanță a clasei **SystemFontSource** este definită implicit în [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). Pe diferite sisteme de operare, fonturile pot fi localizate în locuri diferite. Cu toate acestea, utilizarea unei instanțe **FontSettings** pentru fiecare document nu este o soluție optimă. În majoritatea cazurilor, utilizarea [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) ar trebui să fie suficientă.

Instanțele per document sunt necesare numai dacă este necesar să se utilizeze diferite surse de fonturi pentru diferite documente, ceea ce este un caz rar. Utilizarea mai multor instanțe **FontSettings** scade performanța deoarece nu partajează memoria cache.

### Unde Aspose.Words caută TrueType fonturi pe Windows

În majoritatea cazurilor, Windows Utilizatorii nu se confruntă cu probleme semnificative cu fonturile ratate sau cu machete incorecte. De obicei, Aspose.Words trece printr-un document și, atunci când întâlnește legătura unui font, preia cu succes datele fontului din folderul de sistem.

Pe Windows, Aspose.Words Ia mai întâi toate fonturile disponibile din folderul _%windir%\Fonts. Această setare va funcționa pentru dvs. de cele mai multe ori. Specificați propriile foldere de fonturi numai dacă aveți nevoie. Aspose.Words caută, de asemenea, fonturi suplimentare înregistrate în cheia de registry HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. În plus, Windows 10 permite instalarea fonturilor pentru utilizatorul curent. Fonturile sunt plasate în folderul %userprofile%\AppData\Local\Microsoft\Windows\Fonts și, de asemenea, specificate în registrul HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, unde Aspose.Words va căuta aceste fonturi.

Dacă un document conține fonturi încorporate, Aspose.Words poate citi datele relevante ale fontului din document și le poate folosi pentru a crea aspectul documentului. Documentele pot conține, de asemenea, linkuri către fonturi care nu se află în folderele de sistem, caz în care următoarele scenarii vin să funcționeze:

- Utilizatorii pot configura noi surse de fonturi prin clasa **FontSettings**
- Aspose.Words poate încerca să înlocuiască fontul ratat cu unul similar

{{% alert color="primary" %}}

Aspose.Words redarea pe un server nu va funcționa de obicei cu o aplicație ASP.NET configurată pentru a rula sub nivelul de încredere mediu, deoarece interzice accesul la registru și limitează accesul la sistemul de fișiere.

{{% /alert %}}

### Fonturi pe sisteme Non - Windows

Aspose.Words va căuta fonturile din folderele de fonturi ale sistemului. O listă a acestor foldere poate fi văzută prin metoda [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Dacă nu sunt găsite fonturi acceptate, Aspose.Words va folosi fontul implicit încorporat Fanwood.ttf.

Deoarece valorile fontului Windows și non - Windows OS sunt diferite, Aspose.Words face tot posibilul pentru a găsi un font similar și pentru a construi un aspect similar cu originalul. Cu toate acestea, acest lucru nu este întotdeauna posibil. În aceste cazuri, clasa **FontSettings** ar trebui utilizată pentru a adăuga fonturi personalizate sau reguli de substituție.

#### Unde Aspose.Words caută TrueType fonturi pe Linux

Diferite distribuții Linux pot stoca fonturi în foldere diferite. Aspose.Words caută fonturi în mai multe locații. În mod implicit, Aspose.Words caută fonturile în toate locațiile următoare: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Acest comportament implicit va funcționa pentru majoritatea distribuțiilor Linux, dar nu este garantat să funcționeze tot timpul, caz în care ar putea fi necesar să specificați în mod explicit locația fonturilor True type. Pentru a face acest lucru, trebuie să știți unde sunt instalate fonturile TrueType pe distribuția Linux.

#### Unde Aspose.Words caută TrueType fonturi pe Mac OS X

Aspose.Words caută fonturi în folderul `/Library/Fonts`, care este locația standard pentru TrueType fonturi pe Mac OS X. Deși această setare va funcționa pentru dvs. de cele mai multe ori, poate fi necesar să specificați propriile foldere de fonturi în cazul în care aveți nevoie.

#### TrueType fonturi pe Android

Pe Android, fluxul de lucru al fonturilor este încapsulat în clasa Typeface.
Există cinci tipuri de fonturi, fiecare tipografie reprezintă un grup de familii de fonturi similare:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

De exemplu, în conformitate cu Android [fonturi.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) fișier de configurare, " times "aparține familiei" serif " deci NotoSerif-Regular.ttf va fi utilizat atunci când se solicită "times":

**Fonturi.xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

Pentru a căuta fonturi similare, se folosesc strategiile descrise mai devreme.

Pe lângă acestea, Aspose.Words are propria listă de înlocuitori pentru platforma Android.

Să presupunem că documentul conține fontul PMingLiU - ExtB, în primul rând, Aspose.Words caută fontul necesar în sursele de sistem.

Lista implicită a folderelor fontului Android este:

- /sistem / fonturi
- /sistem / font
- / date / fonturi

Aspose.Words se uită prin surse definite de utilizator care au fost setate cu metoda:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

În cazul în care a fost specificată o înlocuire explicită, Aspose.Words înlocuiește fontul lipsă cu sugestia utilizatorului:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

Dacă niciuna dintre reguli nu a funcționat, Aspose.Words Verificați tabelul de înlocuire internă. Dacă tabelul conține informații despre o potrivire bună, atunci fontul este înlocuit. În cazul nostru, Aspose.Words va selecta `Typeface.SERIF`. Dar dacă tabelul nu știe nimic despre fontul solicitat, atunci Aspose.Words preia un font bazat pe reguli speciale de cuvinte MS sau pe cea mai apropiată distanță din spațiul Panose.

#### TrueType fonturi pe .NET Core și Xamarin

Pentru .NET Core și Xamarin se aplică aceeași regulă ca și pentru Aspose.Words pentru Java versiune. În mod implicit, toate fonturile de sistem ale platformei pe care rulează aplicația sunt disponibile.
Lista folderelor în care va fi efectuată căutarea poate fi găsită apelând metoda:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## Încărcați fonturi din folderul {#loading-fonts-from-folder}

Dacă documentul procesat conține linkuri către fonturi care nu sunt în sistem sau nu doriți să le adăugați în folderul de sistem sau nu aveți permisiuni, atunci cea mai bună soluție ar fi să adăugați un folder cu propriile fonturi folosind metoda [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). Acest lucru va permite înlocuirea sursei de sistem cu o sursă de utilizator. Aspose.Words nu va mai căuta fonturi în registru sau în folderul Windows\Font și, în schimb, va scana doar fonturile din folderul(folderele) specificat (e). Metoda [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) va returna valorile corespunzătoare.

### Specificați unul sau mai multe foldere de fonturi

Metodele [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) și [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) sunt scurtături către metoda **SetFontSources** cu una sau mai multe instanțe [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/). Aceste metode sunt folosite pentru a indica unde Aspose.Words ar trebui să caute fonturi. Dacă un folder nu există sau nu este accesibil, Aspose.Words ignoră acest folder. Dacă toate folderele, inclusiv sursele pentru înlocuirea fontului, au fost ignorate, Aspose.Words va folosi fontul Fanwood ca implicit.

Următorul exemplu demonstrează cum să setați folderul sau sursa, pe care Aspose.Words le va folosi ulterior pentru a căuta fonturi TrueType în timpul redării sau încorporării fonturilor:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Un parametru Boolean suplimentar controlează dacă fonturile sunt scanate recursiv prin toate folderele, scanând astfel toate folderele copil ale unui folder specificat. Următorul exemplu demonstrează cum să setați Aspose.Words să caute în mai multe foldere fonturi TrueType atunci când redați sau încorporați fonturi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Rețineți prioritățile. Dacă există fonturi cu același nume de familie și stil în diferite surse de fonturi, atunci Aspose.Words va selecta fontul din sursă cu o prioritate mai mare. Consultați descrierea câmpului "prioritate" de mai jos.

Dacă nu doriți deloc să utilizați fonturi de sistem, Aspose.Words vă permite să le ignorați și să utilizați numai propriile fonturi:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Proprietate Prioritară

Proprietatea [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) este utilizată atunci când există fonturi cu același nume de familie și stil în diferite surse de fonturi. În acest caz, Aspose.Words Selectează fontul din sursă cu valoarea prioritară mai mare. De exemplu, există o versiune veche a fontului în folderul de sistem și clientul a adăugat o nouă versiune a aceluiași font într-un folder personalizat.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## Încărcați fonturi din Flux {#loading-fonts-from-stream}

Aspose.Words oferă clasa [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource), care permite încărcarea fonturilor din flux. Pentru a utiliza sursa fontului de flux, un utilizator trebuie să creeze o clasă derivată din **StreamFontSource** și să furnizeze o implementare a metodei [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/). Metoda **OpenFontDataStream** ar putea fi apelată de mai multe ori. Pentru prima dată, va fi apelat atunci când Aspose.Words scanează sursele de fonturi furnizate pentru a obține o listă de fonturi disponibile. Mai târziu, poate fi apelat dacă fontul este utilizat în document pentru a analiza datele fontului și pentru a încorpora datele fontului în unele formate de ieșire. **StreamFontSource** poate fi util deoarece permite încărcarea datelor fontului numai atunci când este necesar, și nu pentru a le stoca în memorie pentru durata de viață [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Salvați și încărcați o memorie Cache de căutare a fonturilor

Când căutați un font pentru prima dată, Aspose.Words iterează peste sursele de font specificate de utilizator și formează un cache de căutare a fontului pe baza datelor din aceste surse. Astfel, memoria cache va colecta informații despre fonturile disponibile: familia de fonturi, stilul, numele complet al fontului și altele. La apelurile ulterioare, Aspose.Words caută informații despre fontul dorit după numele său în memoria cache de căutare a fontului, după care analizează fișierele specificate pentru a utiliza fontul.

Procedura de analiză a tuturor fișierelor de fonturi disponibile pentru a inițializa memoria cache consumă destul de mult timp. Aspose.Words vă permite să salvați și să încărcați memoria cache folosind metoda [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) pentru a rezolva problema de performanță. Adică, utilizatorul poate încărca o memorie cache salvată anterior dintr-un fișier și poate sări peste pasul de analiză a tuturor fișierelor de fonturi disponibile.

{{% alert color="primary" %}}

Utilizați aceeași metodă **SaveSearchCache** pentru a actualiza memoria cache.

{{% /alert %}}

{{% alert color="primary" %}}

Memoria cache este potrivită și pentru alte scenarii atunci când fonturile sunt încărcate în rețea. Sau pentru scenarii în care nu există nicio modalitate de a stoca o instanță `FontSettings` cu un cache încărcat.

{{% /alert %}}

## Obțineți o listă de fonturi disponibile {#get-a-list-of-available-fonts}

Dacă doriți să obțineți lista fonturilor disponibile, care, de exemplu, pot fi utilizate pentru a reda un document PDF, puteți utiliza metoda [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/), așa cum se arată în următorul exemplu de cod. Clasa [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) specifică informații despre fontul fizic disponibil pentru motorul de fonturi Aspose.Words:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
