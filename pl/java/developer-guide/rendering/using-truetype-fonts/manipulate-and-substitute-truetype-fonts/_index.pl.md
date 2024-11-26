---
title: Manipuluj i zastępuj czcionki TrueType
second_title: Aspose.Words zamiast Java
articleTitle: Manipuluj i zastępuj czcionki TrueType
linktitle: Manipuluj i zastępuj czcionki TrueType
description: "Aspose.Words zamiast Java może osadzić poprawne czcionki TrueType w dokumencie, który został uzyskany, aby upewnić się, że wyświetla się dokładnie lub szuka odpowiedniej wymiany czcionki lub korzysta z mechanizmu awaryjnego Font."
type: docs
weight: 10
url: /pl/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words wymaga True Czcionki typu do różnych zadań, w tym renderowanie dokumentów do ustalonych formatów stron, na przykład PDF lub XPS. Kiedy Aspose.Words renderuje dokument, musi on wykonać osadzanie i podzbiór osadzania czcionek TrueType do otrzymanego dokumentu, co jest normalną praktyką podczas generowania dokumentów, w tym popularnego PDF lub XPS formaty. Gwarantuje to, że dokument pojawi się w dowolnym przeglądarce. Ponadto XPS Specyfikacja wymaga umieszczania czcionek w dokumencie.

Aby zapewnić Aspose.Words dokładnie mierzy znaki i skutecznie osadza odpowiednie czcionki, muszą być spełnione następujące warunki:

1. Aspose.Words powinien być w stanie znaleźć i uzyskać dostęp do plików czcionek TrueType w systemie.
1. Musi istnieć wystarczająca ilość czcionek TrueType dostępnych dla Aspose.Words, najlepiej z takimi samymi nazwami rodziny czcionek, jak te użyte w dokumencie.

Należy zauważyć, że czcionka w dokumencie reprezentuje podmiot, taki jak nazwa rodziny, styl, rozmiar, kolor, który różni się od `TrueType` czcionka (fizyczna czcionka) podmiot. Aspose.Words na pewnym etapie przetwarzania oddaje czcionkę w dokumencie do fizycznej czcionki. Umożliwia to pewne zadania, najczęściej zadanie obliczania rozmiaru tekstu podczas konstrukcji układu i osadzania / podstawiania do formatów stron stałych. Wiele innych mniej popularnych zadań, takich jak rozwiązanie czcionki i podstawienie podczas wczytywania HTML lub osadzanie / podstawianie do niektórych formatów przepływu, są również włączone.

## Problemy z manipulacją czcionką i wydajnością

Wszystkie dostępne mechanizmy manipulacji czcionką są zawarte w [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) Klasa. Ta klasa jest odpowiedzialna za pobieranie czcionek w określonych źródłach czcionki, jak również za proces substytucji czcionki, jak opisano poniżej.

Czcionki są sortowane w kilku etapach:

1. Uzyskanie informacji o czcionce, rozwiązanie z wszystkich dostępnych czcionek.
1. Parsing the required fonts to get available glyphs i miary (poziome i pionowe).
1. Parowanie sprawdzonych czcionek do osadzania i podstawiania.

Kiedy Aspose.Words napotyka czcionkę w dokumencie po raz pierwszy, stara się uzyskać podstawowe informacje o czcionce, takie jak pełna nazwa czcionki, nazwa rodziny, wersja, styl, z plików czcionek znajdujących się w każdym źródle czcionki. Po odzyskaniu wszystkich czcionek, Aspose.Words wykorzystuje te dane w celu znalezienia wymaganych danych dotyczących czcionki lub odpowiedniego zastąpienia żądanej czcionki.

Ponieważ procedura opisana powyżej jest czasochłonna, może mieć negatywny wpływ na skuteczność aplikacji podczas jej pierwszego uruchomienia. Jednak każdy przypadek **FontSettings** posiada własną pamięć podręczną, która może skrócić czas przetwarzania kolejnych dokumentów. Na przykład, można podzielić się przykładem **FontSettings** klasy między różnymi dokumentami, co pozwala przyspieszyć załadunek dokumentów. Poniższy przykład pokazuje to:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

W przypadku **FontSettings** nie jest definiowana wyraźnie, Aspose.Words używa domyślnej **FontSettings** Przykład. Przykład ten jest również automatycznie udostępniany między dokumentami i można go wyodrębnić w następujący sposób:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Jeśli jesteś pewien, że wszystkie dokumenty procesowe wymagają tych samych ustawień czcionki, zaleca się skonfigurowanie i wykorzystanie domyślnej **FontSettings** Przykład. Załóżmy, że musisz użyć tych samych źródeł czcionki dla wszystkich dokumentów. W tym przypadku można zmienić domyślną instancję w następujący sposób:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

Zwyczaje **FontSettings** mają wyższy priorytet niż domyślna instancja.

{{% /alert %}}

## Dostępność i zastępowanie czcionki

Tekst w dokumencie może być sformatowany różnymi czcionkami, takimi jak Arial, Times New Roman, Verdana i inne. Kiedy Aspose.Words renderuje dokument, próbuje wybrać czcionki, które są określone w dokumencie.

Istnieją jednak sytuacje, w których nie można znaleźć dokładnej czcionki i Aspose.Words musi zastąpić ją podobną czcionką. Aspose.Words wybiera czcionkę według następującego procesu:

1. Aspose.Words próbuje znaleźć czcionkę wśród dostępnych źródeł czcionki o dokładnej nazwie czcionki.
1. Aspose.Words próbuje znaleźć wymaganą czcionkę wśród czcionek osadzonych w oryginalnym dokumencie. Niektóre formaty dokumentów, takie jak DOCX, mogą zawierać wbudowane czcionki.
1. Jeśli Aspose.Words nie jest w stanie zlokalizować wymaganej czcionki z dokładną nazwą dopasowania, a [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) właściwość zdefiniowana dla tej czcionki, następnie Aspose.Words znajdzie czcionkę zdefiniowaną z **AltName** od [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) klasa, która określa informacje o czcionce.
1. Jeśli Aspose.Words nie jest w stanie zlokalizować zdefiniowanej czcionki, oraz **AltName** nie jest również zdefiniowane, a następnie zasady zastępowania czcionek są stosowane one- by- one, jak opisano poniżej (gdy zostanie znaleziona odpowiednia zamiana, proces substytucji czcionki ustaje i następny krok nie zostanie wykonany):
   1. Aspose.Words będzie próbował zastosować ustawienia czcionki OS, jeśli są dostępne, za pomocą `FontConfig` użyteczność. To nie...Windows funkcja musi być używana z systemem operacyjnym kompatybilnym z FontConfig-. Prawie każdy system operacyjny oparty na Unixu ma już `FontConfig` biblioteka zaprojektowana w celu zapewnienia systemowej konfiguracji czcionki, dostosowania i dostępu do aplikacji. W przeciwnym razie biblioteka ta może być łatwo zainstalowana przez użytkownika.<br/>
      Aspose.Words wie jak zapytania danych i interpretować wyniki FontConfig dla własnych celów. Domyślnie `FontConfig` narzędzie jest wyłączone. Można go włączyć w następujący sposób:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Kolejnym krokiem jest prosty, ale niewiarygodnie potężny mechanizm zwany [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). Domyślnie ta funkcja jest aktywna i dostępna dla dowolnego systemu operacyjnego. Aspose.Words używa tabel XML, które definiują podstawowe zasady zastępowania różnych systemów operacyjnych. Zgodnie z regułą zastępowania tabeli zostanie zastosowana lista nazw czcionek zastępczych.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - czcionka do zastąpienia, SubstituteFonts - lista wariantów zastępczych, oddzielona przecinkiem. Pierwsza dostępna czcionka jest używana do wymiany.<br/>
      Główną cechą tej reguły jest możliwość wczytania własnych tablic zastępczych, jak to pokazano w poniższym przykładzie:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Jako podstawę można przyjąć istniejącą tabelę ze słoika lub zapisać ją programowo w następujący sposób:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Pomimo elastyczności tego mechanizmu, istnieją przypadki, w których lepiej jest go wyłączyć, jak pokazano poniżej:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. **FontInfo** zasada substytucji będzie stosowana, jeżeli zasada substytucji tabeli nie może znaleźć czcionki. Mechanizm ten jest domyślnie włączony. Aspose.Words znajduje najbardziej odpowiednią czcionkę zgodnie z informacjami zawartymi w danym dokumencie. Informacje te można uzyskać od **FontInfo** klasa jak pokazano poniżej:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Użytkownicy nie mogą ingerować w przepływ pracy tej funkcji, chyba że zdecydują się ją wyłączyć w przypadku niezadowalających wyników:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Jeśli **FontInfo** nie jest dostępna dla brakującej czcionki, następnie proces się kończy.
   1. **DefaultFont** zasada substytucji będzie stosowana w przypadku `FontInfo` Zastąpienie również nie powiodło się. Ta zasada jest również domyślnie włączona. Zgodnie z tą zasadą, Aspose.Words będzie próbował użyć domyślnej czcionki określonej w [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) nieruchomości. Jeśli użytkownik nie wybrał własnej domyślnej czcionki, jako domyślną czcionkę zostanie użyty "Times New Roman". Zasada ta może być wyłączona w następujący sposób:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Aby sprawdzić aktualną domyślną czcionkę, użyj:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Aby skonfigurować własną opcję wymiany, należy zastosować:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Jeśli Aspose.Words nie jest w stanie wykonać podstawienia czcionki, stara się uzyskać pierwszą dostępną czcionkę z dostępnych źródeł czcionki.
1. Wreszcie, jeśli Aspose.Words nie może znaleźć żadnych czcionek wśród dostępnych źródeł czcionki, to sprawia, że dokument za pomocą darmowej czcionki Fanwood, który jest wbudowany w Aspose.Words montaż.

{{% alert color="primary" %}}

Jeśli **FontInfo** jest dostępna, zasada * FontInfo * zawsze rozwiązuje czcionkę i nadpisuje domyślną regułę czcionki. Jeśli chcesz użyć domyślnej reguły czcionek, powinieneś wyłączyć zasadę podstawienia * FontInfo. Zauważ, że zasada podstawienia * FontConfig * w większości przypadków rozwiązuje czcionkę i tym samym zastępuje wszystkie inne zasady.

{{% /alert %}}

## Jak rozpoznać Że czcionka została zastąpiona

Czasami może być niejasne, dlaczego układ dokumentu uległ zmianie lub dlaczego jakaś czcionka nie wygląda tak jak oczekiwano. W takich przypadkach komunikaty o ostrzeżeniach o zastępowaniu czcionki wprowadzone przez [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) Interfejs przychodzi na ratunek. Mają [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) typ ostrzeżenia i standardowy format tekstowy opisu, "Czcionka"<originalfont>'nie znaleziono. Używanie'<substitutionfont>'zamiast font. Powód: <reason>"z następujących powodów:</reason></substitutionfont></originalfont>

- "alternatywna nazwa z dokumentu" - do zastąpienia przez [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "fontconfig substitution" - for substitution by font config rule
- "substytut tabeli" - do zastąpienia zasadą tabeli
- "font info substitution" - for substitution by font info rule
- "domyślna substytucja czcionki" - do zastąpienia domyślną regułą czcionek
- "pierwsza dostępna czcionka" - do zastąpienia pierwszą dostępną czcionką

## Ustawienia czcionek FallBack z XML

Istnieją dwa różne mechanizmy stosowane w Aspose.Words - Zastąpienie czcionki i powrót czcionki. Zastąpienie czcionki jest stosowane, gdy nie można znaleźć czcionki określonej w dokumencie wśród źródeł czcionki, jak opisano w powyższych sekcjach. Mechanizm awaryjny Czcionka jest stosowany po rozwiązaniu czcionki, ale nie zawiera określonego znaku. W tym przypadku, Aspose.Words próbuje użyć jednej z czcionek zapasowych dla znaku.

Jest [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) metoda, która automatycznie buduje ustawienia awaryjne poprzez skanowanie dostępnych czcionek. Ponieważ metoda ta może wytwarzać nieoptymalne ustawienie awaryjne, można kontrolować zachowanie awaryjne czcionki za pomocą właściwości [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) Klasa. Ta klasa określa ustawienia mechanizmu rezerwowego czcionki. Możesz dostać przykład **FontFallbackSettings** klasa:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Podobnie jak * Zasada zastępowania tabeli *, ten mechanizm używa tabel XML do konfiguracji. Te tabele XML można wczytać i zapisać za pomocą następujących metod:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

W Aspose.Words wydanie zawiera dwie tabele: *MsOfficeFallbackSetting.xml* oraz *NotoFallbackSetting.xml*.

W *MsOfficeFallbackSetting* tabela określa strategię zastępczą dla szeregu znaków, która jest podobna do strategii stosowanej przez Microsoft Word. W związku z tym, strategia wymaga instalacji Microsoft Czcionki biurowe. *MsOfficeFallbackSetting* można aktywować przy użyciu następującej metody:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

W *NotoFallbackSetting* tabela jest tworzona specjalnie do użytku z Google Noto czcionki (zobacz więcej o Google Noto ustawienia czcionki w następnej sekcji) i mogą być włączone w następujący sposób:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

Poniższy przykład kodu pokazuje jak wczytać ustawienia awaryjne czcionek z pliku XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

W powyższym przykładzie kodu stosuje się następujący plik XML:

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

## Predefiniowane ustawienia czcionki FallBack dla Google Noto Czcionki

Aspose.Words zapewnia wstępnie zdefiniowane ustawienia zapasowe czcionki dla Google Noto czcionki. Są to darmowe czcionki z licencją na SIL Open Font License, które można pobrać z Google Noto Czcionki. W **FontFallbackSettings** klasa zapewnia [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) Metoda. Ładuje wstępnie zdefiniowane ustawienia awaryjne, które używają Google Noto czcionki pokazane w poniższym przykładzie kodu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Tylko czcionki typu Sans Noto o regularnej wadze są używane w zdefiniowanych wcześniej ustawieniach.

{{% /alert %}}

## Gdzie Aspose.Words Poszukuje czcionek

Aspose.Words próbuje automatycznie znaleźć czcionki TrueType w systemie plików. Zazwyczaj można polegać na domyślnym zachowaniu Aspose.Words znaleźć `TrueType` czcionki, ale czasami trzeba określić własne foldery zawierające czcionki TrueType. W [Określ prawo Typ Czcionki Lokalizacja](/words/pl/java/specify-truetype-fonts-location/) temat opisuje jak i gdzie Aspose.Words szuka czcionek, jak również jak określić własne lokalizacje czcionek.

## Różnice w przetwarzaniu formatów czcionek w Aspose.Words oraz Microsoft Word

Istnieją pewne różnice w przetwarzaniu formatów czcionki w Aspose.Words oraz Microsoft Word jak pokazano w poniższej tabeli:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Czcionki TrueType i czcionki OpenType z zarysem TrueType | Wspierany. | Wspierany. |
| Czcionki OpenType z zarysem PostScript | Obsługiwane dla większości scenariuszy. Zamocowanie do utrwalonych formatów stron, takich jak PDF i XPS nie są wspierane. Tekst zastępuje się obrazami bitmap. | Obsługiwane dla większości scenariuszy, w tym osadzanie się do utrwalonych formatów stron. |
| Zmiany czcionek OpenType | Tylko nazwy instancji są obsługiwane. Nieobsługiwane ciągłe zmiany. | Obsługiwane tylko dla domyślnej instancji. Nie obsługuje się nazw instancji i ciągłych zmian. |
| Czcionki type1 | Obsługiwane Windows wersje sprzed 2013 roku i w wersji MacOS. Wsparcie zostaje wycofane Windows wersje począwszy od 2013 roku. | Brak wsparcia. |

## Zobacz również

- [Google Noto Czcionki](https://fonts.google.com/noto) do pobrania za darmo czcionki


