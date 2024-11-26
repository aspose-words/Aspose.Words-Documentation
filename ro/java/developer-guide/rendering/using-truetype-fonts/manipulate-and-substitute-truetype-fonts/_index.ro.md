---
title: Manipulați și înlocuiți fonturile TrueType
second_title: Aspose.Words pentru Java
articleTitle: Manipulați și înlocuiți fonturile TrueType
linktitle: Manipulați și înlocuiți fonturile TrueType
description: "Aspose.Words pentru Java poate încorpora corect TrueType fonturile în documentul rezultat pentru a se asigura că se afișează cu precizie, sau căutați un înlocuitor de font adecvat, sau utilizează mecanismul de rezervă Font."
type: docs
weight: 10
url: /ro/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words necesită fonturi TrueType pentru o varietate de sarcini, inclusiv redarea documentelor în formate de pagini fixe, de exemplu, PDF sau XPS. Când Aspose.Words redă un document, acesta trebuie să efectueze încorporarea și încorporarea subsetului de fonturi TrueType în documentul rezultat, ceea ce este o practică normală în timpul generării unui document, inclusiv formatele populare PDF sau XPS. Acest lucru asigură că documentul va apărea la fel pentru orice vizualizator. Mai mult, specificația XPS necesită ca fonturile să fie întotdeauna încorporate în document.

Pentru a vă asigura că Aspose.Words măsoară cu precizie caracterele și încorporează cu succes fonturile relevante, trebuie îndeplinite următoarele condiții:

1. Aspose.Words ar trebui să poată găsi și accesa fișierele de fonturi TrueType din sistem.
1. Trebuie să existe suficiente fonturi TrueType disponibile pentru Aspose.Words, de preferință cu aceleași nume de familie de fonturi ca cele utilizate în document.

Rețineți că fontul din document reprezintă o entitate, cum ar fi numele de familie, stilul, dimensiunea, culoarea, care este diferită de entitatea `TrueType` font (font fizic). Aspose.Words rezolvă fontul din document într-un font fizic la un moment dat de procesare. Acest lucru permite anumite sarcini, cel mai frecvent sarcina de a calcula dimensiunea textului în timpul construcției aspectului și încorporarea/subsetarea la formate de pagini fixe. O serie de alte sarcini mai puțin populare, cum ar fi rezolvarea fontului și substituirea în timpul încărcării HTML sau încorporarea/subsetarea la unele formate de flux, sunt, de asemenea, activate.

## Manipularea fontului și probleme de performanță

Toate mecanismele de manipulare a fontului disponibile sunt conținute în clasa [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Această clasă este responsabilă pentru preluarea fonturilor în sursele de fonturi definite, precum și pentru procesul de substituire a fontului, așa cum este descris mai jos.

Fonturile sunt analizate în mai multe etape:

1. Obținerea de informații pentru font, rezolvarea de la toate fonturile disponibile.
1. Parsarea fonturilor rezolvate pentru a obține glife și valori disponibile (orizontale și verticale).
1. Parsarea fonturilor rezolvate pentru încorporare și subsetare.

Când Aspose.Words întâlnește un font în document pentru prima dată, încearcă să obțină informații de bază despre font, cum ar fi numele complet al fontului, numele de familie, versiunea, stilul, din fișierele de font situate în fiecare sursă de font. După ce toate fonturile sunt recuperate, Aspose.Words folosește aceste detalii pentru a găsi datele de font necesare sau un înlocuitor adecvat pentru fontul solicitat.

Deoarece procedura descrisă mai sus consumă mult timp, aceasta poate afecta negativ performanța aplicației la prima lansare. Cu toate acestea, fiecare instanță de **FontSettings** are propriul cache, ceea ce ar putea reduce timpul de procesare a documentelor ulterioare. De exemplu, puteți partaja o instanță a clasei **FontSettings** între diferite documente, ceea ce vă permite să accelerați încărcarea documentelor. Următorul exemplu demonstrează acest lucru:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

În cazul în care **FontSettings** nu este definit în mod explicit, Aspose.Words utilizează instanța implicită **FontSettings**. Această instanță este, de asemenea, partajată automat între documente și poate fi extrasă după cum urmează:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Dacă sunteți sigur că toate documentele de procesare necesită aceleași setări de font, atunci este recomandat să configurați și să utilizați instanța implicită **FontSettings**. Să presupunem că trebuie să utilizați aceleași surse de fonturi pentru toate documentele dvs. În acest caz, puteți modifica instanța implicită după cum urmează:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

Personalizat **FontSettings** au prioritate mai mare decât instanța implicită.

{{% /alert %}}

## Disponibilitatea și înlocuirea fontului

Un text dintr-un document poate fi formatat cu diferite fonturi, cum ar fi Arial, Times New Roman, Verdana și altele. Când Aspose.Words redă un document, acesta încearcă să selecteze fonturile specificate în document.

Cu toate acestea, există situații în care fontul exact nu poate fi găsit și Aspose.Words trebuie să-l înlocuiască cu un font similar. Aspose.Words Selectează fontul conform următorului proces:

1. Aspose.Words încearcă să găsească un font printre sursele de fonturi disponibile cu un nume exact al fontului.
1. Aspose.Words încearcă să găsească fontul necesar printre fonturile încorporate în documentul original. Unele formate de documente, cum ar fi DOCX, pot conține fonturi încorporate.
1. Dacă Aspose.Words nu poate localiza fontul necesar cu potrivirea exactă a numelui și proprietatea [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) definită pentru acest font, atunci Aspose.Words va găsi fontul definit cu **AltName** din clasa [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/), care specifică informațiile despre font.
1. Dacă Aspose.Words nu poate localiza fontul definit și **AltName** nu este, de asemenea, definit, atunci regulile de substituire a fontului sunt aplicate unul câte unul, așa cum este descris mai jos (când se găsește înlocuirea corespunzătoare, procesul de substituire a fontului se oprește și următorul pas nu este executat):
   1. Aspose.Words va încerca să aplice OS setările fontului, dacă sunt disponibile, utilizând utilitarul `FontConfig`. Această caracteristică Non - Windows trebuie utilizată cu un FontConfig compatibil OS. Aproape orice OS bazat pe Unix are deja o bibliotecă `FontConfig` care este concepută pentru a oferi configurarea fontului la nivel de sistem, personalizarea și accesul la aplicații. În caz contrar, această bibliotecă poate fi instalată cu ușurință de către utilizator.<br>
      Aspose.Words știe cum să interogheze datele și să interpreteze rezultatele FontConfig în scopuri proprii. În mod implicit, utilitarul `FontConfig` este dezactivat. Îl puteți activa după cum urmează:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Următorul pas este un mecanism simplu, dar incredibil de puternic numit [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). În mod implicit, această caracteristică este activă și disponibilă pentru orice OS. Aspose.Words utilizează XML tabele care definesc regulile de substituție de bază pentru diferite OS. Conform regulii de substituire a tabelului, va fi utilizată lista numelor de fonturi înlocuitoare.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - un font care trebuie înlocuit, SubstituteFonts - lista variantelor de substituție, separate printr-o virgulă. Primul font disponibil este utilizat pentru înlocuire.<br>
      Caracteristica principală a acestei reguli este capacitatea de a încărca propriile tabele de substituție, așa cum se arată în exemplul următor:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Puteți lua ca bază tabelul existent din borcan sau îl puteți salva programatic în felul următor:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      În ciuda flexibilității acestui mecanism, există unele cazuri când este mai bine să îl dezactivați, așa cum se arată mai jos:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. Regula de substituție **FontInfo** va fi aplicată dacă regula de substituție a tabelului nu poate găsi fontul. Acest mecanism este activat în mod implicit. Aspose.Words găsește fontul cel mai potrivit în funcție de informațiile despre font conținute într-un anumit document. Aceste informații pot fi obținute din clasa **FontInfo** după cum se arată mai jos:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Utilizatorii nu pot interveni în fluxul de lucru al acestei funcții decât dacă decid să o dezactiveze în caz de rezultate nesatisfăcătoare:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Dacă **FontInfo** nu este disponibil pentru fontul lipsă, atunci procesul se oprește.
   1. **DefaultFont** Regula de substituție va fi aplicată în cazul în care substituția `FontInfo` a eșuat, de asemenea. Această regulă este, de asemenea, activată în mod implicit. Conform acestei reguli, Aspose.Words va încerca să utilizeze fontul implicit specificat în proprietatea [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName). Dacă utilizatorul nu și-a ales propriul font implicit, atunci "Times New Roman" va fi folosit ca font implicit. Această regulă poate fi dezactivată după cum se arată mai jos:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Pentru a verifica fontul implicit curent, utilizați:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Pentru a configura propria opțiune de înlocuire, aplicați:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Dacă Aspose.Words nu poate efectua substituirea fontului, încearcă să obțină primul font disponibil din sursele de font disponibile.
1. În cele din urmă, dacă Aspose.Words nu poate găsi niciun font printre sursele de fonturi disponibile, acesta redă documentul folosind fontul Fanwood gratuit care este încorporat în ansamblul Aspose.Words.

{{% alert color="primary" %}}

Dacă **FontInfo** este disponibil, *FontInfo substitution rule* va rezolva întotdeauna fontul și va suprascrie regula implicită a fontului. Dacă doriți să utilizați regula implicită a fontului, ar trebui să dezactivați *FontInfo substitution rule*. Rețineți că *FontConfig substitution rule* va rezolva fontul în majoritatea cazurilor și, prin urmare, va înlocui toate celelalte reguli.

{{% /alert %}}

## Cum să recunoașteți că fontul a fost înlocuit

Uneori, poate fi neclar de ce s-a schimbat aspectul documentului sau de ce un font nu arată așa cum era de așteptat. În astfel de cazuri, mesajele de avertizare privind înlocuirea fonturilor implementate de interfața [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) vin în ajutor. Au tipul de avertizare [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) și formatul standard al textului de descriere, "Fontul "<OriginalFont>" nu a fost găsit. Folosind fontul "<SubstitutionFont>". Motiv:<Reason> ", cu următoarele motive:

- "nume alternativ din document" - pentru înlocuire cu [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "substituirea fontconfig" - pentru substituirea prin regula de configurare a fontului
- "substituirea tabelului" - pentru substituirea prin regula tabelului
- "substituirea informațiilor despre fonturi" - pentru înlocuirea cu regula informațiilor despre fonturi
- "substituirea fontului implicit" - pentru substituirea prin regula fontului implicit
- "primul font disponibil" - pentru înlocuirea cu primul font disponibil

## Font FallBack Setări din XML

Există două mecanisme diferite utilizate în Aspose.Words - substituirea fontului și rezerva fontului. Substituirea fontului este utilizată atunci când fontul specificat în document nu a putut fi găsit printre sursele de font așa cum a fost descris în secțiunile de mai sus. Mecanismul de rezervă a fontului este utilizat atunci când fontul este rezolvat, dar nu conține un caracter specific. În acest caz, Aspose.Words încearcă să utilizeze unul dintre fonturile de rezervă pentru personaj.

Există o metodă [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) care construiește automat setările de rezervă prin scanarea fonturilor disponibile. Deoarece această metodă poate produce o setare de rezervă non-optimă, puteți controla comportamentul de rezervă a fontului utilizând proprietățile clasei [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/). Această clasă specifică setările mecanismului de rezervă a fontului. Puteți obține o instanță a clasei **FontFallbackSettings** După cum urmează:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

În mod similar cu *Table substitution rule*, acest mecanism utilizează tabele XML pentru configurare. Aceste tabele XML pot fi încărcate și salvate cu următoarele metode:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Versiunea Aspose.Words include două tabele: *MsOfficeFallbackSetting.xml* și *NotoFallbackSetting.xml*.

Tabelul *MsOfficeFallbackSetting* definește o strategie de înlocuire pentru o serie de caractere, care este similară cu strategia utilizată de Microsoft Word. Astfel, strategia necesită instalarea Microsoft fonturi Office. *MsOfficeFallbackSetting* poate fi activat folosind următoarea metodă:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

Tabelul *NotoFallbackSetting* este creat special pentru utilizarea cu fonturi Google Noto (vezi mai multe despre setările fontului Google Noto în secțiunea următoare) și poate fi activat după cum urmează:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

Următorul exemplu de cod demonstrează cum să încărcați setările de rezervă ale fontului dintr-un fișier XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

În exemplul de cod de mai sus, se utilizează următorul fișier XML:

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

## Font predefinit FallBack Setări pentru Google Noto fonturi

Aspose.Words oferă setări predefinite de rezervă a fonturilor pentru Google Noto fonturi. Acestea sunt fonturi gratuite licențiate sub SIL Open Font License, care pot fi descărcate din Google Noto fonturi. Clasa **FontFallbackSettings** oferă o metodă [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings). Se încarcă setările de rezervă predefinite, care utilizează Google Noto fonturi așa cum se arată în exemplul de cod de mai jos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Numai fonturile Noto în stil Sans cu greutate obișnuită sunt utilizate în setări predefinite.

{{% /alert %}}

## Unde Aspose.Words caută fonturi

Aspose.Words încearcă să găsească TrueType fonturi pe sistemul de Fișiere automat. De obicei, vă puteți baza pe comportamentul implicit al Aspose.Words pentru a găsi fonturile `TrueType`, dar uneori trebuie să specificați propriile foldere care conțin fonturi TrueType. A [Specificați TrueType Locația Fonturilor](/words/java/specify-truetype-fonts-location/) subiectul descrie cum și unde Aspose.Words caută fonturi, precum și cum să specificați propriile locații de fonturi.

## Diferențe în procesarea formatelor de fonturi în Aspose.Words și Microsoft Word

Există unele diferențe în procesarea formatelor de font în Aspose.Words și Microsoft Word, așa cum se arată în tabelul de mai jos:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType fonturi și OpenType fonturi cu TrueType contururi | Sprijinit. | Sprijinit. |
| OpenType fonturi cu PostScript contururi | Suportat pentru majoritatea scenariilor. Încorporarea în formate de pagini fixe, cum ar fi PDF și XPS nu sunt acceptate. Textul este înlocuit cu imagini bitmap. | Suportat pentru majoritatea scenariilor, inclusiv încorporarea în formate de pagini fixe. |
| OpenType Variații De Font | Numai instanțele numite sunt acceptate. Variațiile continue nu sunt acceptate. | Suportat pentru singura instanță implicită. Instanțele numite și variațiile continue nu sunt acceptate. |
| Tip1 fonturi | Suportat pe Windows versiuni anterioare 2013 și pe MacOS versiuni. Suportul este abandonat pe Windows versiuni începând de la 2013. | Nu este acceptat. |

## Vezi Și

- [Google Noto fonturi](https://fonts.google.com/noto) pentru a descărca fonturi gratuite


