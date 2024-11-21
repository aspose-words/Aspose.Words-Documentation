---
title: Specificați locația fonturilor TrueType în C#
second_title: Aspose.Words pentru .NET
articleTitle: Specificați locația fonturilor TrueType
linktitle: Specificați locația fonturilor TrueType
description: "Specifica diferite surse de fonturi TrueType: folderul sistemului, sursele utilizatorului, încărcarea fonturilor dintr-un flux, un sistem de fișiere sau memorie folosind C#."
type: docs
weight: 30
url: /ro/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Acest subiect descrie comportamentul implicit al Aspose.Words atunci când caută fonturi TrueType, inclusiv diferențele specifice sistemului de operare, și demonstrează cum se pot specifica surse de font ale utilizatorului.

Clasa [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) este folosită pentru a specifica diferite surse de fonturi. Există mai multe implementări ale clasei **FontSourceBase**:"

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

Implementarea detaliilor pentru unele clase sunt explicate mai jos.

## Încarcă fonturi din sistem {#loading-fonts-from-system}

Există o clasă specială [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) care este întotdeauna utilizată în mod implicit. El reprezintă toate fonturile TrueType instalate pe sistem. Prin urmare este posibil să se creeze o listă de surse cu **SystemFontSource** și orice alte surse necesare:

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "fonts-folders.cs" >}}

Un singur exemplu al clasei **SystemFontSource** este definit implicit în [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). Pe diferite sisteme de operare, fonturile pot fi amplasate în locuri diferite. Cu toate acestea, utilizarea unei **FontSettings** instanțe pentru fiecare document nu este o soluție optimă. În majoritatea cazurilor, folosirea lui [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) ar trebui să fie de ajunsă.

Instantele per document sunt necesare doar dacă este necesar să se folosească surse de fonturi diferite pentru documente diferite, ceea ce este un caz rar. Folosind mai multe **FontSettings** instanțe scade performanța deoarece nu partajează cache-ul.

### Unde Aspose.Words Caută fonturi TrueType pe Windows

În majoritatea cazurilor, Windows utilizatorii nu întâmpină probleme semnificative cu fonturile lipsă sau layout-uri incorecte. Tipic, Aspose.Words trece printr-un document și atunci când întâlnește o legătură către un font, obține cu succes datele fontului din dosarul sistemului.

În Windows, Aspose.Words ia mai întâi toate fonturile disponibile din _%windir%\Fonts folder. Această setare va funcționa pentru tine majoritatea timpului. Tu specifici doar dosarele tale de fonturi dacă ai nevoie. Aspose.Words pentru .NET caută, de asemenea, fonturi suplimentare înregistrate la cheia de registry HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. În plus, Windows 10 permite instalarea fonturilor pentru utilizatorul curent. Fonturile sunt plasate în folderul %userprofile%\AppData\Local\Microsoft\Windows\Fonts şi sunt de asemenea specificate în registrul HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, unde Aspose.Words va căuta aceste fonturi.

Dacă un document conține fonturi încorporate, Aspose.Words poate citi datele de font relevante din document și să le folosească pentru a crea dispunerea documentului. Documentele pot conține și legături către fonturi care nu se află în folderele sistemului, caz în care următoarele scenarii intră în funcțiune

"- Utilizatorii pot seta noi surse de font prin clasa **FontSettings**"
- Aspose.Words poate încerca să înlocuiască fontul lipsă cu unul asemănător

{{% alert color="primary" %}}

Aspose.Words randarea pe un server nu va funcționa de obicei cu o ASP.NET aplicație configurată să ruleze la nivelul de încredere "Medium", deoarece interzice accesul la registry și limitează accesul la sistemul de fișiere.

{{% /alert %}}

### Fonturi pe sisteme non- Windows

Aspose.Words va căuta fonturile în folderele de fonturi ale sistemului. O listă a acestor dosare poate fi văzută prin metoda [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Dacă nu se găsesc fonturi suportate, Aspose.Words va folosi fontul implicit încorporat Fanwood.ttf.

Din moment ce metricele de tipărire ale sistemelor de operare Windows și non-Windows sunt diferite, Aspose.Words face tot posibilul să găsească o sursă asemănătoare și să construiască un layout asemănător cu cel original. Totuși, acest lucru nu este întotdeauna posibil. În aceste cazuri, clasa **FontSettings** ar trebui folosită pentru a adăuga fonturi personalizate sau reguli de substituție.

#### Unde Aspose.Words caută fonturi TrueType pe Linux

Diferite Linux distribuții pot depozita fonturi în foldere diferite. Aspose.Words caută fonturi în mai multe locații. În mod implicit, Aspose.Words caută fonturile în toate locațiile următoare: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fontsAcest comportament implicit va funcționa pentru majoritatea distribuțiilor de tip Linux, dar nu este garantat să funcționeze în orice moment, caz în care ar trebui să specificați locația fonturilor de tip true explicit. Pentru asta trebuie să știi unde sunt instalate fonturile TrueType pe distribuția ta Linux

#### Unde Aspose.Words Caută Fonturi TrueType pe Mac OS X

Aspose.Words caută fonturi în folderul /Library/Fonts care este locația standard pentru fonturile TrueType pe Mac OS X. În timp ce această setare va funcționa pentru tine majoritatea timpului, ai putea avea nevoie să specificați propriile dvs. foldere de fonturi în cazul când aveți nevoie de ea.

## Încarcă fonturi din folderul {#loading-fonts-from-folder}

Dacă documentul care este procesat conține link-uri către fonturi care nu sunt pe sistem, sau nu doriți să le adăugați în dosarul sistemului, sau nu aveți permisiuni, atunci cea mai bună soluție ar fi să adăugați un dosar cu propriile dvs. fonturi folosind metoda [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/). Acest lucru va permite să înlocuiți sursa sistemului cu o sursă de utilizator. Aspose.Words nu va mai căuta fonturi în registrul sau Windows\Font folder și, în schimb, va scana doar pentru fonturi în cadrul folderului (lor) specificat(e). Metoda [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) va returnează valorile corespondente.

### Specifică Un sau Mai Multe Foldsere de Fonturi

Metodele [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) și [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) sunt scurtături către metoda **SetFontSources**, folosind una sau mai multe [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/) instanțe. "Aceste metode sunt folosite pentru a indica unde Aspose.Words ar trebui să caute fonturi." Dacă un folder nu există sau este inaccesibil, Aspose.Words să ignore pur și simplu acest folder. Dacă toate folderele, inclusiv sursele pentru înlocuirea fontului, ar fi ignorate, Aspose.Words va folosi fontul Fanwood ca implicit.

Exemplul următor demonstrează cum să se stabilească folderul sau sursa, care Aspose.Words va utiliza ulterior pentru a căuta fonturi TrueType în timpul redării sau încorporării acestora:

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "true-type-fonts-folder.cs" >}}

Puteți descărca fișierul șablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Un parametru boolean extra controlează dacă fonturile sunt scanate recursiv prin toate folderele, deci scanarea tuturor sub-folderele unui anumit folder. Exemplul de mai jos demonstrează cum să setezi Aspose.Words pentru a căuta în mai multe foldere pentru fonturile TrueType atunci când redai sau încorporezi fonturi:

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "multiple-folders.cs" >}}

{{% alert color="primary" %}}

Poţi descărca fișierul șablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Notă prioritățile. Dacă există fonturi cu același nume de familie și stil în diferite surse de font, atunci Aspose.Words va selecta fontul din sursa cu prioritate mai mare. Vedeţi descrierea câmpului "Prioritate" de mai jos.

Dacă nu doriți să folosiți deloc fonturi de sistem Aspose.Words vă permite să le ignorați și să folosiți doar fonturile proprii:

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "default-instance.cs" >}}

### Proprietate Prioritară

Proprietatea [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) se folosește atunci când există fonturi cu același nume de familie și stil în surse de fonturi diferite. În acest caz Aspose.Words selectează fontul de la sursă cu valoarea prioritară cea mai mare. Spre exemplu, există o versiune veche a fontului în sistemul folder și clientul a adăugat o nouă versiune a aceluiași font într-un folder personalizat.

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "fonts-folders-with-priority.cs" >}}

## Încarcă fonturi din fluxul {#loading-fonts-from-stream}

Aspose.Words oferă clasa [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/), care permite încărcarea fonturilor din flux. Pentru a folosi sursa de fonturi, un utilizator trebuie să creeze o subclasă din **StreamFontSource** și să furnizeze o implementare a metodei [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/). Metoda **OpenFontDataStream** poate fi invocată de mai multe ori. Pentru prima dată, acesta va fi apelat atunci când Aspose.Words scanează sursele de font furnizate pentru a obține o listă de fonturi disponibile. Mai târziu ar putea fi apelat dacă fontul este utilizat în document pentru a analiza datele fontului și pentru a insera datele fontului în unele formate de ieșire. **StreamFontSource** ar putea fi util deoarece permite încărcarea datelor fontului doar atunci când este necesar, și nu pentru a le stoca în memorie pentru durata de viață a [FontSettings](https://fontsettings/)

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "resource-steam.cs" >}}

**StreamFontSource** este o alternativă la [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/), deoarece este întotdeauna posibil să se încarce un flux în memorie și să îl trecem la **MemoryFontSource**. Diferența este că **MemoryFontSource** e stocat în memorie tot timpul, iar **StreamFontSource** e încărcat la cerere și eliminat imediat după aceea. Dar acesta se poate încărca de mai multe ori, aşa cum s-a descris mai sus. În unele cazuri, **MemoryFontSource** este preferabil, iar în altele, **StreamFontSource**.

## Salvează și Încarcă un cache de căutare a fontului

Când cauți o font pentru prima dată Aspose.Words parcurgere surse de font specificate de utilizator și formează un cache de căutare de font pe baza datelor de aceste surse. Astfel, cache-ul va colecta informaţii despre fonturile disponibile: familie de fonturi, stil, nume complet al fontului, şi altele. În apelurile ulterioare, Aspose.Words caută informații despre fontul dorit după nume în cache-ul de căutare a fonturilor și apoi analizează fișierele specificate pentru a folosi fontul.

Procedura de analizare a tuturor fișierelor tipografice disponibile pentru inițializarea cache-ului este destul de consumatoare din punct de vedere al timpului. Aspose.Words vă permite să salvați și să încărcați cache-ul folosind metoda [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) pentru a rezolva problema performanței. Adică utilizatorul poate încărca un cache salvat anterior dintr-un fișier și sări peste etapa de analiză a tuturor fișierelor de fonturi disponibile.

{{% alert color="primary" %}}

Foloseşte aceeaşi **SaveSearchCache** metodă pentru a actualiza cache-ul.

{{% /alert %}}

Exemplul următor de cod arată cum să pregătești sursele fontului și să generezi cache-ul de căutare a fontului în avans:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

Exemplul de cod următor arată cum să se stabilească sursele de fonturi și să se încarce memoria cache de căutare înainte de procesarea documentelor:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Căutare fonturi cache este grozav pentru Aspose.Words integrarea în AWS Lambda din cauza unui număr de limitări. De exemplu, asupra dimensiunii containerului principal și, ca rezultat, asupra numărului de fonturi.

Cache-ul este de asemenea potrivit pentru alte scenarii în care fonturile sunt încărcate pe rețea. Sau pentru scenarii în care nu există modalitate de a stoca o `FontSettings` instanță cu un cache încărcat.

{{% /alert %}}

## Obțineți o listă cu fonturi disponibile {#get-a-list-of-available-fonts}

Dacă doriți să obțineți lista fonturilor disponibile, care pot fi utilizate, de exemplu, pentru a redarea unui document PDF, puteți utiliza metoda [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/), așa cum se arată în exemplul următor de cod. Clasa [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) specifică informații despre fontul fizic disponibil pentru motorul de font Aspose.Words:

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "available-fonts.cs" >}}
