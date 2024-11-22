---
title: Manipularea și substituirea fonturilor TrueType în C#
second_title: Aspose.Words pentru .NET
articleTitle: Manipulează şi înlocuieşte Fonturile TrueType
linktitle: Manipulează şi înlocuieşte Fonturile TrueType
description: "Aspose.Words pentru .NET poate insera fonturile corecte TrueType în documentul rezultat pentru a se asigura că acesta este afișat corect folosind C#. Dacă un font sau caracter specific nu este disponibil, Aspose.Words caută o înlocuire a fontului sau folosește mecanismul de recuperare a fontului."
type: docs
weight: 10
url: /ro/net/manipulating-and-substitution-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words necesită fonturi TrueType pentru o varietate de sarcini, inclusiv redarea documentelor la format fix pagină, de exemplu, PDF sau XPS. Când Aspose.Words redă un document, acesta trebuie să efectueze inserarea și inserarea subconjuctelor de fonturi TrueType în documentul rezultat, care este o practică obișnuită în timpul generării unui document, inclusiv în formate populare PDF sau XPS. Aceasta asigură ca documentul să apară la fel pentru orice vizualizator. În plus, specificația XPS impune ca fonturile să fie întotdeauna încorporate în document.

Pentru a garanta că Aspose.Words măsoară cu precizie caracterele și încorporează cu succes fonturile relevante, următoarele condiții trebuie îndeplinite:

1. Aspose.Words ar trebui să poată găsi și accesa fișierele de tip font TrueType din sistem.
1. Trebuie să fie suficiente fonturi TrueType disponibile la Aspose.Words, preferabil cu aceleași nume de familie de font ca cele folosite în document.

Notă că fontul din document reprezintă o entitate, cum ar fi prenumele, stilul, mărimea sau culoarea, care este diferită de entitatea font (font fizic) `TrueType`. Aspose.Words rezolvă fontul din document într-un font fizic în anumite etape ale procesării. Aceasta permite anumite sarcini, cele mai des întâlnite sarcini fiind calcularea mărimii textului în timpul construcției de aranjare și încorporarea/subsetarea pentru formate de pagină fixe. Un număr de alte sarcini mai puțin populare, cum ar fi rezolvarea și substituția fontului în timp ce se încarcă HTML-ul sau inserarea / subsetting către unele formate de flux, sunt de asemenea permise.

## Manipularea fontului și problemele de performanță

Toate mecanismele de manipulare a fontului disponibile sunt conținute în clasa [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). Această clasă este responsabilă de aducerea fonturilor din surse de fonturi definite precum și pentru procesul de substituire a fontului, așa cum se descrie mai jos.

Fonturile sunt analizate în mai multe etape:

1. Obținerea informațiilor pentru font, rezolvarea de la toate fonturile disponibile.
1. Analiza fonturilor rezolvate pentru a obține glifele disponibile și metricile (orizontale și verticale).
1. Parsând fonturile rezolvate pentru încorporare și subsetting.

Atunci când Aspose.Words întâlnește un font în document pentru prima dată, încearcă să obțină informații de bază despre font, cum ar fi numele complet al fontului, numele familiei, versiunea și stilul, din fișierele de font localizate în fiecare sursă de font. După ce toate fonturile sunt recuperate, Aspose.Words utilizează aceste detalii pentru a găsi datele fontului necesar sau o înlocuire potrivită pentru fontul solicitat.

Deoarece procedura descrisă mai sus este consumatoare de timp, poate afecta negativ performanța aplicației la prima lansare. "Cu toate acestea, fiecare instanță a **FontSettings** are propriul său cache, ceea ce ar putea reduce timpul de procesare pentru documentele ulterioare." De exemplu, puteți împărtăși o instanță a clasei **FontSettings** între documente diferite, care vă permite să accelerați încărcarea documentelor. Exemplul următor demonstrează acest lucru:

{{< gist "aspose-words-gists" "a08698f540d47082b4e2dbb1cb67fc1b" "load-option-font-settings.cs" >}}

În cazul în care **FontSettings** nu este definit explicit, Aspose.Words folosește exemplarul implicit **FontSettings**. Această instanță este, de asemenea, distribuită automat între documente și poate fi extrasă după cum urmează:

{{< gist "aspose-words-gists" "a08698f540d47082b4e2dbb1cb67fc1b" "font-settings-default-instance.cs" >}}

Dacă eşti sigur că toate documentele de prelucrare necesită aceleaşi setări pentru fonturi, atunci este recomandat să configurezi şi să foloseşti instanţa implicită **FontSettings**. Imaginează-ți că ai nevoie să folosești aceleași surse de font pentru toate documentele tale. În acest caz, poți doar să modifici instanța implicită după cum urmează:

{{< gist "aspose-words-gists" "a08698f540d47082b4e2dbb1cb67fc1b" "font-settings-font-source.cs" >}}

{{% alert color="primary" %}}

Funcția personalizată **FontSettings** are prioritate mai mare decât instanța implicită.

{{% /alert %}}

## Disponibilitatea fontului și substituirea acestuia

Un text într-un document poate fi formatat cu diverse fonturi cum ar fi Arial, Times New Roman, Verdana și altele. Atunci când Aspose.Words redă un document, încearcă să selecteze fonturile care sunt specificate în document.

Cu toate acestea există situații în care nu se poate găsi fontul exact și Aspose.Words trebuie să îl înlocuiască cu un font asemănător. Aspose.Words selectează fontul după următorul proces:
1. Aspose.Words încearcă să găsească o fontură printre sursele de fonturi disponibile cu un nume de font exact.
1. Aspose.Words încearcă să găsească fontul necesar printre fonturile încorporate în documentul original. Unele formate de documente, cum ar fi DOCX, pot conține fonturi încorporate.
1. Dacă Aspose.Words nu este capabil să găsească fontul necesar cu potrivirea exactă a numelui și proprietatea [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/altname/) definită pentru acest font, atunci Aspose.Words va găsi fontul definit cu **AltName** din clasa [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/), care specifică informațiile despre font.
1. Dacă Aspose.Words nu poate găsi fontul definit, și **AltName** nu este nici el definit, atunci regulile de substituție a fonturilor sunt aplicate unul câte unul, după cum se descrie mai jos (când înlocuirea corespunzătoare este găsită, procesul de substituție a fontului se oprește și următorul pas nu este executat):
   1. În primul rând, Aspose.Words încearcă să proceseze numele fontului pentru a obține substituția, mai exact încearcă să elimine sufixele cu separatoare "- " și ", ". <br>
      Dacă această regulă de substituție are loc, o "Font ’<OriginalFont>’ nu a fost găsită. Folosind fontul " <SubstitutionFont> " în schimb. Motivul: înlocuirea numelui de font." apare avertizare.<br/>
{{< gist "aspose-words-gists" "a08698f540d47082b4e2dbb1cb67fc1b" "get-substitution-without-suffixes.cs" >}}
   1. Apoi Aspose.Words încearcă să aplice setările de font al sistemului de operare, dacă sunt disponibile, folosind utilitarul **FontConfig**. Această caracteristică non-Windows trebuie folosită cu un sistem de operare compatibil FontConfig. Mai aproape orice sistem de operare bazat pe Unix are deja o `FontConfig` bibliotecă care este proiectată să furnizeze configurarea și personalizarea fonturilor la nivel de sistem și accesul la aplicații. În caz contrar această bibliotecă poate fi instalată cu ușurință de către utilizator.
      Aspose.Words știe cum să interogheze date și să interpreteze rezultatele pentru propriile sale scopuri. În mod implicit, utilitarul `FontConfig` este dezactivat. Poţi să o activezi după cum urmează:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1. Următorul pas foloseşte un mecanism simplu dar puternic numit regula de substituţie **Table**. Prin setările implicite această caracteristică este activă și disponibilă pentru sistemul de operare dat. Aspose.Words va înlocui fontul cu această regulă dacă nu este înlocuit prin regula de substituție `FontConfig`. <br>
      Aspose.Words folosește tabele XML care definesc regulile de substituție de bază pentru diferite sisteme de operare. Potrivit regulii de înlocuire a tabelelor, lista numelor de fonturi va fi folosită.<br>
      **XML**<br>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      Caracteristica principală a acestei reguli este capacitatea de a încărca tabelele proprii de substituție, așa cum se arată în exemplul următor:" <br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      În ciuda flexibilității acestui mecanism, există unele cazuri în care este mai bine să-l dezactivezi, așa cum se arată mai jos:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1. Regulile de substituție **FontInfo** se va aplica dacă regula de substituție a tabelului nu poate găsi fontul. Acest mecanism este activat în mod implicit. Aspose.Words găsește cea mai potrivită fontă conform informațiilor privind fontul conținute într-un document specific. Această informaţie poate fi obţinută din clasa **FontInfo** așa cum este arătat mai jos:<br>
      **.NET** <br>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      Utilizatorii nu pot interveni în fluxul de lucru al acestei caracteristici, cu excepția cazului în care decid să o dezactiveze în cazul unor rezultate nesatisfăcătoare:<br>
      **.Net**<br>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      Dacă **FontInfo** nu este disponibil pentru fontul lipsă, procesul se oprește.<br>
   1. regula de substituție **DefaultFont** va fi aplicată în cazul în care substituția `FontInfo` a eșuat, de asemenea. Această regulă este de asemenea activată din fabrică. În conformitate cu această regulă, Aspose.Words va încerca să folosească fontul implicit specificat în proprietatea [DefaultFontName](https://reference.aspose.com/words/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/). Dacă utilizatorul nu a ales propria sa fontă implicită, atunci "Times New Roman" va fi folosită ca font implicit. Această regulă poate fi dezactivată așa cum se arată mai jos:<br>
      **.NET** <br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      Pentru a verifica fontul implicit curent utilizați: <br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      Pentru a seta opțiunea ta de înlocuire, aplică:<br>
      **.Net**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. Dacă Aspose.Words nu este capabil să realizeze substituția fontului, încearcă să obțină primul font disponibil din surse de font disponibile.
1. În final dacă Aspose.Words nu poate găsi nici un font printre sursele de fonturi disponibile, acesta redă documentul folosind fontul gratuit Fanwood care este încorporat în asamblarea Aspose.Words.<br>

Dacă **FontInfo** este disponibil, regula de substituție *FontInfo* va rezolva întotdeauna fontul și va anula regula fontului implicit. Dacă doriți să utilizați regula de font implicită, ar trebui să dezactivați regula de substituție *FontInfo*. Notă că regula de substituție *FontConfig* va rezolva fontul în majoritatea cazurilor și astfel va anula toate celelalte reguli.

## Cum să Recunoaștem Că Fontul a fost Înlocuit

Uneori poate fi neclar de ce s-a schimbat dispunerea documentului sau de ce o anumită fontă nu arată așa cum era de așteptat. În astfel de cazuri, mesajele de avertizare a substituției fontului implementate prin interfața [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) vin să salveze ziua. Ele au tipul de avertisment [FontSubstitution](https://reference.aspose.com/words/net/aspose.words/warningtype/) și formatul textului descrierii standard, "Fontul '<OriginalFont>' nu a fost găsit. Utilizare "<SubstitutionFont>" font în schimb. Motivul: <reason>", cu următoarele motive:</reason>

- "numele alternativ din document" – pentru substituție prin [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/properties/altname)
- "fontconfig substituție" – pentru înlocuire de către regula de configurare a fontului
- "substitutie de tabel" - pentru substituție prin regula de tabel
"- substituție de informații despre font" - "pentru înlocuirea cu regula de informații despre font"
- "substitutie de font implicit" - pentru substituția regulii de font implicit
- prima fontă disponibilă" - pentru substituire cu prima fontă disponibilă

## Setări Font FallBack de la XML

Există două mecanisme diferite utilizate în Aspose.Words - substituția fontului și căderea fontului. Substituirea fontului este utilizată atunci când fontul specificat în document nu poate fi găsit printre surse de font așa cum se descrie în secțiunile de mai sus. Mecanismul de redundanță a fontului este utilizat atunci când fontul este rezolvat, dar nu conține un caracter specific. În acest caz Aspose.Words încearcă să folosească una din fonturile de rezervă pentru caracterul respectiv.

Există o [BuildAutomatic](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/) metodă care construiește automat setările de rezervă prin scanarea fonturilor disponibile. Datorită faptului că această metodă poate genera o setare de rezervă neoptimă, poți controla comportamentul de rezervă a fontului utilizând proprietățile clasei [FontFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/). Această clasă specifică setările mecanismului de cădere a fontului. Puteți obține o instanță a clasei **FontFallbackSettings** astfel:

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

Similar cu *Regulile de substituție a tabelelor*, acest mecanism folosește tabelele XML pentru configurare. Aceste tabele XML pot fi încărcate și salvate cu următoarele metode:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

Lansarea Aspose.Words include două tabele: *MsOfficeFallbackSetting.xml* și *NotoFallbackSetting.xml*.

Tabelul *MsOfficeFallbackSetting* definește o strategie de înlocuire pentru un interval de caractere, care este similară cu strategia utilizată de Microsoft Word. Astfel, strategia necesită instalarea a Microsoft fonturi de birou Office. *MsOfficeFallbackSetting* pot fi activate folosind următoarea metodă:"

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Tabelul *NotoFallbackSetting* este creat în mod special pentru a fi utilizat cu fonturi Google Noto (vezi mai multe despre setările de font Google Noto în secțiunea următoare) și poate fi activat după cum urmează:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

Exemplul de cod următor demonstrează cum să se încarce setările de font fallback dintr-un fișier XML:

{{< gist "aspose-words-gists" "a08698f540d47082b4e2dbb1cb67fc1b" "font-fallback-settings.cs" >}}

În exemplul de mai sus se foloseşte următorul fişier XML:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## Setări de font predefinite de rezervă pentru Google Noto fonturi

Aspose.Words furnizează setări predefinite de redirecționare a fonturilor pentru Google Noto fonturi. Acestea sunt fonturi libere licențiate în baza licenței Open Font de la SIL, care pot fi descărcate de pe Google Noto Fonts. Clasa **FontFallbackSettings** oferă o metodă [LoadNotoFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/). Încarcă setările de rezervă predefinite care folosesc Google Noto fonturi așa cum este arătat în exemplul de cod de mai jos:

{{< gist "aspose-words-gists" "a08698f540d47082b4e2dbb1cb67fc1b" "noto-fallback-settings.cs" >}}

{{% alert color="primary" %}}

Numai fonturi fără serife, cu greutate normală sunt folosite în setările predefinite.

{{% /alert %}}

## Unde Aspose.Words caută fonturi

Aspose.Words încearcă să găsească fonturi TrueType pe sistemul de fișiere automat. De obicei, te poți baza pe comportamentul implicit al lui Aspose.Words pentru a găsi fonturile `TrueType`, dar uneori ai nevoie să specifici propriile tale foldere care conțin fonturi TrueType. Subiectul [Specifying TrueType Fonts Location](/words/net/specifying-truetype-fonts-location/) descrie cum și unde Aspose.Words caută fonturi, precum și modul de specificare a propriilor locații de fonturi.

## Diferențe în procesarea formatelor de font Aspose.Words și Microsoft Word

Sunt unele diferențe în procesarea formatelor de font în Aspose.Words și Microsoft Word, după cum se arată în tabelul de mai jos:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| Fonturi TrueType și fonturi OpenType cu contururi TrueType | Susținut. | Suportat. |
| Fonturi OpenType cu contururi PostScript | Susținut pentru majoritatea scenariilor. Încorporarea în formate cu pagină fixă, cum ar fi PDF și XPS, nu este acceptată. Textul este înlocuit cu imagini bit-map. | Susținut pentru majoritatea scenariilor, inclusiv încorporarea în formate cu pagină fixă. |
| Variații de font OpenType | Se acceptă doar instanțe denumite. Variații continue nu sunt suportate. | Sostenut doar pentru instanța implicită. Instanțele numite și variațiile continue nu sunt acceptate. |
| Fonturi tip1 | Suportat pe Windows versiuni anterioare la 2013 și pe versiuni de MacOS. Suport este abandonat la Windows versiuni începând cu 2013. | Nu este suportat. |

## Vezi și

"- [Google Noto Fonts](https://fonts.google.com/noto) pentru a descărca fonturi gratuite"
