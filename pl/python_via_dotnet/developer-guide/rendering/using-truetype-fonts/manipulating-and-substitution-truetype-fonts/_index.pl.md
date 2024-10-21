---
title: Zastąp czcionki TrueType
second_title: Aspose.Words dla Python via .NET
articleTitle: Manipuluj i zastępuj czcionki TrueType
linktitle: Manipuluj i zastępuj czcionki TrueType
description: "Aspose.Words for Python via .NET może osadzić prawidłowe czcionki TrueType w dokumencie wynikowym, aby zapewnić jego dokładne wyświetlanie. Jeśli czcionka lub określony znak nie jest dostępny, Aspose.Words wyszukuje odpowiedni zamiennik czcionki lub korzysta z mechanizmu zastępczego czcionki."
type: docs
weight: 10
url: /pl/python-net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words wymaga czcionek TrueType do różnych zadań, w tym renderowania dokumentów do formatów o stałej stronie, na przykład PDF lub XPS. Kiedy Aspose.Words renderuje dokument, musi wykonać osadzanie i osadzanie podzbiorów czcionek TrueType w dokumencie wynikowym, co jest normalną praktyką podczas generowania dokumentu, w tym popularnych formatów PDF lub XPS. Dzięki temu dokument będzie wyglądał tak samo dla każdego przeglądającego. Co więcej, specyfikacja XPS wymaga, aby czcionki zawsze były osadzone w dokumencie.

Aby mieć pewność, że Aspose.Words dokładnie mierzy znaki i pomyślnie osadza odpowiednie czcionki, muszą zostać spełnione następujące warunki:

1. Aspose.Words powinien móc znaleźć i uzyskać dostęp do plików czcionek TrueType w systemie.
1. W Aspose.Words musi być dostępna wystarczająca liczba czcionek TrueType, najlepiej z takimi samymi nazwami rodzin czcionek, jak te użyte w dokumencie.

Należy pamiętać, że czcionka w dokumencie reprezentuje jednostkę, taką jak nazwa rodziny, styl, rozmiar i kolor, która różni się od jednostki czcionki `TrueType` (czcionka fizyczna). Aspose.Words na pewnym etapie przetwarzania przekształca czcionkę w dokumencie w czcionkę fizyczną. Umożliwia to wykonywanie pewnych zadań, najczęściej obliczania rozmiaru tekstu podczas konstruowania układu i osadzania/podzbioru do formatów o stałej stronie. Dostępnych jest również wiele innych mniej popularnych zadań, takich jak rozpoznawanie i podstawianie czcionek podczas ładowania HTML lub osadzanie/podstawianie do niektórych formatów przepływu.

## Problemy z manipulacją czcionkami i wydajnością

Wszystkie dostępne mechanizmy manipulacji czcionkami zawarte są w klasie [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Klasa ta odpowiada za pobieranie czcionek ze zdefiniowanych źródeł czcionek oraz za proces zastępowania czcionek, jak opisano poniżej.

Czcionki są analizowane w kilku etapach:

1. Uzyskanie informacji o czcionce, rozwiązywanie wszystkich dostępnych czcionek.
1. Analizowanie rozwiązanych czcionek w celu uzyskania dostępnych plików glyph i metryk (poziomych i pionowych).
1. Analizowanie rozwiązanych czcionek pod kątem osadzania i podzbioru.

Kiedy Aspose.Words po raz pierwszy spotyka czcionkę w dokumencie, próbuje uzyskać podstawowe informacje o czcionce, takie jak pełna nazwa czcionki, nazwisko, wersja, styl, z plików czcionek znajdujących się w każdym źródle czcionki. Po pobraniu wszystkich czcionek Aspose.Words wykorzystuje te dane w celu znalezienia wymaganych danych czcionki lub odpowiedniego zamiennika żądanej czcionki.

Ponieważ opisana powyżej procedura jest czasochłonna, może negatywnie wpłynąć na wydajność aplikacji przy pierwszym uruchomieniu. Jednak każda instancja [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) ma własną pamięć podręczną, co może skrócić czas przetwarzania kolejnych dokumentów. Można na przykład współdzielić instancję klasy [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) pomiędzy różnymi dokumentami, co pozwala przyspieszyć ładowanie dokumentów. Poniższy przykład to demonstruje:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsWithLoadOption.py" >}}

W przypadku, gdy [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) nie jest jawnie zdefiniowany, Aspose.Words używa domyślnej instancji [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Ta instancja jest również automatycznie udostępniana pomiędzy dokumentami i można ją wyodrębnić w następujący sposób:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsDefaultInstance.py" >}}

Jeśli masz pewność, że wszystkie przetwarzane dokumenty wymagają tych samych ustawień czcionek, zaleca się skonfigurowanie i korzystanie z domyślnej instancji [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Załóżmy, że chcesz używać tych samych źródeł czcionek we wszystkich swoich dokumentach. W takim przypadku możesz po prostu zmienić domyślną instancję w następujący sposób:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsFontSource.py" >}}

{{% alert color="primary" %}}

Niestandardowy [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) ma wyższy priorytet niż instancja domyślna.

{{% /alert %}}

## Dostępność i zastępowanie czcionek

Tekst w dokumencie można sformatować przy użyciu różnych czcionek, takich jak Arial, Times New Roman, Verdana i inne. Kiedy Aspose.Words renderuje dokument, próbuje wybrać czcionki określone w dokumencie.

Zdarzają się jednak sytuacje, gdy nie można znaleźć dokładnej czcionki i Aspose.Words musi zamiast tego zastąpić ją podobną czcionką. Aspose.Words wybiera czcionkę zgodnie z następującym procesem:
1. Aspose.Words próbuje znaleźć czcionkę wśród dostępnych źródeł czcionek z dokładną nazwą czcionki.
1. Aspose.Words próbuje znaleźć wymaganą czcionkę wśród czcionek osadzonych w oryginalnym dokumencie. Niektóre formaty dokumentów, takie jak DOCX, mogą zawierać osadzone czcionki.
1. Jeżeli Aspose.Words nie jest w stanie zlokalizować wymaganej czcionki z dokładnie taką samą nazwą i zdefiniowaną dla tej czcionki właściwością [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/), wówczas Aspose.Words znajdzie czcionkę zdefiniowaną za pomocą [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) z klasy [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/), która określa informacje o czcionce.
1. Jeżeli Aspose.Words nie jest w stanie zlokalizować zdefiniowanej czcionki i nie zdefiniowano również [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/), wówczas stosowane są zasady podstawiania czcionek jedna po drugiej, jak opisano poniżej (po znalezieniu odpowiedniego zamiennika, Proces Podstawiania Czcionek zostaje zatrzymany i następny krok nie jest wykonywany):
   1. Najpierw Aspose.Words próbuje przetworzyć nazwę czcionki w celu uzyskania podstawienia, w szczególności próbuje usunąć przyrostki zawierające separatory "-" i ",".<br>
      Jeśli ta reguła zastępowania ma zastosowanie, nie znaleziono "Czcionki "&lt;OriginalFont&gt;". Zamiast tego użyto czcionki "&lt;SubstitutionFont&gt;". Powód: zamiana nazwy czcionki". pojawia się ostrzeżenie.<br>
   1. Następnie Aspose.Words próbuje zastosować ustawienia czcionek systemu operacyjnego, jeśli są dostępne, za pomocą narzędzia **FontConfig**. Tej funkcji innej niż Windows należy używać w systemie operacyjnym zgodnym z FontConfig. Prawie każdy system operacyjny oparty na uniksie ma już bibliotekę `FontConfig` zaprojektowaną w celu zapewnienia ogólnosystemowej konfiguracji czcionek, dostosowywania i dostępu do aplikacji. W przeciwnym razie użytkownik może łatwo zainstalować tę bibliotekę.
      Aspose.Words wie, jak wysyłać zapytania do danych i interpretować wyniki FontConfig do własnych celów. Domyślnie narzędzie `FontConfig` jest wyłączone. Możesz to włączyć w następujący sposób:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_config_substitution.enabled = True
{{< /highlight >}}
   1. Następny krok wykorzystuje prosty, ale potężny mechanizm zwany regułą podstawienia **Table**. Domyślnie funkcja ta jest aktywna i dostępna dla danego systemu operacyjnego. Aspose.Words zastąpi czcionkę tą regułą, jeśli nie zostanie ona zastąpiona regułą podstawienia `FontConfig`.<br>
      Aspose.Words wykorzystuje tabele XML, które definiują podstawowe zasady zastępowania dla różnych systemów operacyjnych. Zgodnie z regułą podstawiania tabeli, zastosowana zostanie lista nazw czcionek zastępczych.<br>
      **XML**<br>
{{< highlight html >}}
<TableSubstitutionSettings xmlns="Aspose.Words"> 
<SubstitutesTable> 
<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
… 
</SubstitutesTable> 
</TableSubstitutionSettings>
{{< /highlight >}}
      Główną cechą tej reguły jest możliwość załadowania własnych tabel podstawień, co pokazano w poniższym przykładzie:<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.load("Table.xml")
{{< /highlight >}}
      Pomimo elastyczności tego mechanizmu, w niektórych przypadkach lepiej jest go wyłączyć, jak pokazano poniżej:<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.enabled = False
{{< /highlight >}}
   1. Reguła podstawiania [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) zostanie zastosowana w przypadku, gdy reguła podstawiania tabeli nie znajdzie czcionki. Mechanizm ten jest domyślnie włączony. Aspose.Words wyszukuje najbardziej odpowiednią czcionkę na podstawie informacji o czcionce zawartych w konkretnym dokumencie. Informacje te można uzyskać z klasy [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/), jak pokazano poniżej:<br>
{{< highlight python >}}
fontInfos = doc.font_infos
{{< /highlight >}}
      Użytkownicy nie mogą ingerować w działanie tej funkcji, chyba że zdecydują się ją wyłączyć w przypadku niezadowalających wyników:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_info_substitution.enabled = False
{{< /highlight >}}
      Jeśli dla brakującej czcionki [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) nie jest dostępny, proces zostaje zatrzymany.<br>
   1. Zasada podstawienia [DefaultFont](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/) będzie stosowana w przypadku, gdy również nie powiodła się podstawienie `FontInfo`. Ta reguła jest również domyślnie włączona. Zgodnie z tą zasadą, Aspose.Words będzie próbował użyć domyślnej czcionki określonej we właściwości [default_font_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/default_font_name/). Jeśli użytkownik nie wybrał własnej czcionki domyślnej, jako czcionka domyślna zostanie użyta czcionka "Times New Roman". Regułę tę można wyłączyć w sposób pokazany poniżej:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.enabled = False
{{< /highlight >}}
      Aby sprawdzić bieżącą domyślną czcionkę, użyj:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name
{{< /highlight >}}
      Aby ustawić własną opcję wymiany, złóż wniosek:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name = "Arial"
{{< /highlight >}}
1. Jeśli Aspose.Words nie jest w stanie dokonać zamiany czcionek, próbuje uzyskać pierwszą dostępną czcionkę z dostępnych źródeł czcionek.
1. Na koniec, jeśli Aspose.Words nie może znaleźć żadnej czcionki wśród dostępnych źródeł czcionek, renderuje dokument przy użyciu darmowej czcionki Fanwood osadzonej w pakiecie Aspose.Words.<br>

Jeśli dostępny jest [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/), *reguła podstawienia FontInfo* zawsze rozpozna czcionkę i zastąpi domyślną regułę czcionki. Jeśli chcesz używać domyślnej reguły czcionki, powinieneś wyłączyć *regułę podstawiania FontInfo*. Należy pamiętać, że *reguła podstawienia FontConfig* w większości przypadków rozwiąże czcionkę i tym samym zastępuje wszystkie inne reguły.

## Ustawienia zastępowania czcionek z XML

W Aspose.Words stosowane są dwa różne mechanizmy - podstawianie czcionek i przywracanie czcionek. Zastępowanie czcionek ma zastosowanie, gdy czcionka określona w dokumencie nie została znaleziona wśród źródeł czcionek, jak opisano w powyższych sekcjach. Mechanizm zastępczy czcionki jest używany, gdy czcionka jest rozpoznawana, ale nie zawiera określonego znaku. W tym przypadku Aspose.Words próbuje użyć jednej z czcionek zastępczych dla znaku.

Istnieje metoda [build_automatic](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/build_automatic/), która automatycznie tworzy ustawienia awaryjne, skanując dostępne czcionki. Ponieważ ta metoda może generować nieoptymalne ustawienie zastępcze, można kontrolować zachowanie zastępczej czcionki, korzystając z właściwości klasy [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/). Ta klasa określa ustawienia mechanizmu rezerwowego czcionek. Instancję klasy [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) można uzyskać w następujący sposób:

{{< highlight python >}}
settings = fontSettings.fallback_settings
{{< /highlight >}}

Podobnie jak *Reguła podstawiania tabel*, mechanizm ten do konfiguracji wykorzystuje tabele XML. Te tabele XML można ładować i zapisywać następującymi metodami:

{{< highlight python >}}
fontSettings.fallback_settings.load("MyNewFallbackTable.xml")
fontSettings.fallback_settings.save("Current_FallbackTable.xml")
{{< /highlight >}}

Wersja Aspose.Words zawiera dwie tabele: *MsOfficeFallbackSetting.xml* i *NotoFallbackSetting.xml*.

Tabela *MsOfficeFallbackSetting* definiuje strategię zastępowania zakresu znaków, która jest podobna do strategii stosowanej przez Microsoft Word. Dlatego strategia wymaga instalacji czcionek Microsoft Office. *MsOfficeFallbackSetting* można aktywować w następujący sposób:

{{< highlight python >}}
fontSettings.fallback_settings.load_ms_office_fallback_settings()
{{< /highlight >}}

Tabela *NotoFallbackSetting* została stworzona specjalnie do użytku z czcionkami Google Noto (więcej o ustawieniach czcionek Google Noto w następnej sekcji) i można ją włączyć w następujący sposób:

{{< highlight python >}}
fontSettings.fallback_settings.load_noto_fallback_settings()
{{< /highlight >}}

Poniższy przykład kodu demonstruje, jak załadować ustawienia czcionek zastępczych z pliku XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontFallbackSettings.py" >}}

W powyższym przykładzie kodu wykorzystano następujący plik XML:

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

## Predefiniowane ustawienia zastępowania czcionek dla czcionek Google Noto

Aspose.Words zapewnia predefiniowane ustawienia zastępczych czcionek dla czcionek Google Noto. Są to bezpłatne czcionki objęte licencją SIL Open Font License, które można pobrać ze strony Google Noto Fonts. Klasa [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) udostępnia metodę [load_noto_fallback_settings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/load_noto_fallback_settings/). Ładuje predefiniowane ustawienia zastępcze, które używają czcionek Google Noto, jak pokazano w przykładzie kodu poniżej:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetPredefinedFontFallbackSettings.py" >}}

{{% alert color="primary" %}}

We wstępnie zdefiniowanych ustawieniach używane są wyłącznie czcionki Noto w stylu Sans o regularnej grubości.

{{% /alert %}}

## Gdzie Aspose.Words szuka czcionek

Aspose.Words próbuje automatycznie znaleźć czcionki TrueType w systemie plików. Zwykle w celu znalezienia czcionek `TrueType` można polegać na domyślnym zachowaniu Aspose.Words, ale czasami trzeba określić własne foldery zawierające czcionki TrueType. Temat [Określ lokalizację czcionek TrueType](/words/pl/python-net/specifying-truetype-fonts-location/) opisuje, jak i gdzie Aspose.Words szuka czcionek, a także jak określić własne lokalizacje czcionek.

## Różnice w przetwarzaniu formatów czcionek w Aspose.Words i Microsoft Word

Istnieją pewne różnice w przetwarzaniu formatów czcionek w Aspose.Words i Microsoft Word, jak pokazano w poniższej tabeli:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Czcionki TrueType i czcionki OpenType z konturami TrueType | Utrzymany. | Utrzymany. |
| Czcionki OpenType z konturami PostScript | Obsługiwane w większości scenariuszy. Osadzanie w formatach o stałej stronie, takich jak PDF i XPS, nie jest obsługiwane. Tekst zostaje zastąpiony obrazami bitmapowymi. | Obsługiwane w większości scenariuszy, w tym osadzaniu w formatach o stałej stronie. |
| Odmiany czcionek OpenType | Obsługiwane są tylko nazwane instancje. Ciągłe zmiany nie są obsługiwane. | Obsługiwane tylko dla instancji domyślnej. Nazwane instancje i ciągłe odmiany nie są obsługiwane. |
| Czcionki typu 1 | Obsługiwane w wersjach Windows wcześniejszych niż 2013 i w wersjach MacOS. Wsparcie zostanie wycofane w wersjach Windows począwszy od 2013 roku. | Nieobsługiwany. |

## Zobacz też

- [Czcionki Google Noto](https://fonts.google.com/noto) do pobrania darmowych czcionek
