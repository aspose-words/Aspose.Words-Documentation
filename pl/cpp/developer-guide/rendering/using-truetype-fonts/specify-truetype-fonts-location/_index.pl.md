---
title: Określ lokalizację czcionek TrueType w C++
second_title: Aspose.Words dla C++
articleTitle: Określ Lokalizację Czcionek TrueType
linktitle: Określ Lokalizację Czcionek TrueType
description: "Określ różne źródła czcionek TrueType: folder systemowy, źródła użytkownika, Ładowanie czcionek ze strumienia, system plików lub pamięć."
type: docs
weight: 30
url: /pl/cpp/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Ten temat opisuje domyślne zachowanie Aspose.Words, gdy szuka czcionek TrueType, w tym różnice specyficzne dla systemu operacyjnego, i pokazuje, jak określić źródła czcionek użytkownika.

Klasa [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) służy do określania różnych źródeł czcionek. Istnieje kilka implementacji klasy **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

Szczegóły implementacji dla niektórych klas wyjaśniono poniżej.

## Załaduj czcionki z Systemu {#loading-fonts-from-system}

Istnieje specjalna klasa [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/), która jest zawsze używana domyślnie. Reprezentuje wszystkie czcionki TrueType zainstalowane w systemie. Dlatego możliwe jest utworzenie listy źródeł z **SystemFontSource** i innymi wymaganymi źródłami:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

Pojedyncza instancja klasy **SystemFontSource** jest domyślnie zdefiniowana w [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). W różnych systemach operacyjnych czcionki mogą znajdować się w różnych miejscach. Jednak użycie instancji **FontSettings** dla każdego dokumentu nie jest optymalnym rozwiązaniem. W większości przypadków użycie [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) powinno wystarczyć.

Instancje Per-document są potrzebne tylko wtedy, gdy wymagane jest użycie różnych źródeł czcionek dla różnych dokumentów, co jest rzadkim przypadkiem. Użycie kilku instancji **FontSettings** zmniejsza wydajność, ponieważ nie udostępniają pamięci podręcznej.

### Gdzie Aspose.Words Szuka czcionek TrueType na Windows

W większości przypadków użytkownicy Windows nie napotykają znaczących problemów z pominiętymi czcionkami lub nieprawidłowymi układami. Zazwyczaj Aspose.Words przechodzi przez dokument, a gdy napotka łącze czcionki, z powodzeniem pobiera dane czcionki z folderu systemowego.

W Windows Aspose.Words najpierw pobiera wszystkie dostępne czcionki z folderu _%windir%\Fonts. To ustawienie będzie działać dla ciebie przez większość czasu. W razie potrzeby określasz własne foldery czcionek. Aspose.Words szuka również dodatkowych czcionek zarejestrowanych w kluczu rejestru HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Ponadto Windows 10 umożliwia instalację czcionek dla bieżącego użytkownika. Czcionki są umieszczane w folderze %userprofile%\AppData\Local\Microsoft\Windows\Fonts, a także określone w rejestrze HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, Gdzie Aspose.Words będzie szukać tych czcionek.

Jeśli dokument zawiera osadzone czcionki, Aspose.Words może odczytać odpowiednie dane czcionki z dokumentu i użyć ich do utworzenia układu dokumentu. Dokumenty mogą również zawierać łącza do czcionek, których nie ma w folderach systemowych, w takim przypadku działają następujące scenariusze:

- Użytkownicy mogą konfigurować nowe źródła czcionek za pomocą klasy **FontSettings**
- Aspose.Words może spróbować zastąpić pominiętą czcionkę podobną

{{% alert color="primary" %}}

Renderowanie Aspose.Words na serwerze zazwyczaj nie będzie działać z aplikacją ASP.NET skonfigurowaną do działania na poziomie średniego zaufania, ponieważ uniemożliwia ona dostęp do rejestru i ogranicza dostęp do systemu plików.

{{% /alert %}}

### Czcionki w systemach innych niżWindows

Aspose.Words będzie szukać czcionek w folderach czcionek systemowych. Lista tych folderów może być wyświetlana metodą [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Jeśli nie znaleziono obsługiwanych czcionek, Aspose.Words użyje wbudowanej domyślnej czcionki Fanwood.ttf.

Ponieważ metryki czcionek Windows i non - Windows OS są różne, Aspose.Words robi wszystko, co możliwe, aby znaleźć podobną czcionkę i zbudować układ podobny do oryginału. Jednak nie zawsze jest to możliwe. W takich przypadkach klasa **FontSettings** powinna być używana do dodawania niestandardowych czcionek lub reguł zastępowania.

#### Gdzie Aspose.Words Szuka czcionek TrueType na Linux

Różne dystrybucje Linux mogą przechowywać czcionki w różnych folderach. Aspose.Words szuka czcionek w kilku lokalizacjach. Domyślnie Aspose.Words szuka czcionek we wszystkich następujących lokalizacjach: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. To domyślne zachowanie będzie działać dla większości dystrybucji Linux, ale nie ma gwarancji, że będzie działać przez cały czas, w takim przypadku może być konieczne jawne określenie lokalizacji czcionek true type. Aby to zrobić, musisz wiedzieć, gdzie TrueType czcionki są zainstalowane w twojej dystrybucji Linux.

#### Gdzie Aspose.Words Szuka czcionek TrueType na Mac OS X

Aspose.Words szuka czcionek w folderze `/Library/Fonts`, który jest standardową lokalizacją czcionek TrueType na Mac OS X. Chociaż to ustawienie będzie działać przez większość czasu, może być konieczne określenie własnych folderów czcionek w przypadku, gdy zajdzie taka potrzeba.

#### TrueType czcionki na Android

W Android przepływ pracy czcionek jest zamknięty w klasie krój pisma.
Istnieje pięć typów krojów pisma, każdy krój pisma reprezentuje grupę podobnych rodzin czcionek:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Na przykład, zgodnie z Android [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) plik konfiguracyjny, " times "należy do rodziny" serif", więc NotoSerif-regularny.ttf będzie używany, gdy wymagane jest " czasy:

**Fonts.xml**

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

Aby wyszukać podobne czcionki, stosuje się strategie opisane wcześniej.

Oprócz nich Aspose.Words ma własną listę zamienników platformy Android.

Załóżmy, że dokument zawiera czcionkę PMingLiU - ExtB, przede wszystkim Aspose.Words szuka wymaganej czcionki w źródłach systemowych.

Domyślna lista folderów czcionek Android to:

- / system / czcionki
- / system / czcionka
- / data / czcionki

Aspose.Words przegląda zdefiniowane przez użytkownika źródła, które zostały ustawione za pomocą metody:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

W przypadku wyraźnego zastąpienia, Aspose.Words zastępuje brakującą czcionkę sugestią użytkownika:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

Jeśli żadna z reguł nie zadziałała, Aspose.Words Sprawdź wewnętrzną tabelę wymiany. Jeśli tabela zawiera informacje o dobrym dopasowaniu, czcionka zostanie zastąpiona. W naszym przypadku Aspose.Words wybierze `Typeface.SERIF`. Ale jeśli tabela nie wie nic o żądanej czcionce, Aspose.Words wybiera czcionkę opartą na specjalnych regułach MS Word lub najbliższej odległości w przestrzeni Panose.

#### TrueType czcionki na .NET Core i Xamarin

Dla .NET Core i Xamarin obowiązuje ta sama reguła, co dla Aspose.Words dla wersji Java. Domyślnie dostępne są wszystkie czcionki systemowe platformy, na której działa aplikacja.
Listę folderów, w których zostanie przeprowadzone wyszukiwanie, można znaleźć, wywołując metodę:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## Załaduj czcionki z folderu {#loading-fonts-from-folder}

Jeśli przetwarzany dokument zawiera łącza do czcionek, których nie ma w systemie lub nie chcesz dodawać ich do folderu systemowego lub nie masz uprawnień, najlepszym rozwiązaniem byłoby dodanie folderu z własnymi czcionkami przy użyciu metody [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). Umożliwi to zastąpienie źródła systemowego źródłem użytkownika. Aspose.Words nie będzie już szukał czcionek w folderze rejestru lub Windows\Font, a zamiast tego skanuje tylko czcionki w określonych folderach. Metoda [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) zwróci odpowiednie wartości.

### Określ jeden lub wiele folderów czcionek

Metody [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) i [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) są skrótami do metody **SetFontSources** z jedną lub kilkoma instancjami [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/). Metody te służą do wskazania, gdzie Aspose.Words powinien szukać czcionek. Jeśli folder nie istnieje lub jest niedostępny, Aspose.Words po prostu ignoruje ten folder. Jeśli wszystkie foldery, w tym Źródła podstawienia czcionki, zostały zignorowane, Aspose.Words użyje czcionki Fanwood jako domyślnej.

Poniższy przykład pokazuje, jak ustawić folder lub źródło, które Aspose.Words będzie następnie używane do wyszukiwania czcionek TrueType podczas renderowania lub osadzania czcionek:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Dodatkowy parametr logiczny kontroluje, czy czcionki są skanowane rekurencyjnie przez wszystkie foldery, a tym samym skanuje wszystkie foldery podrzędne określonego folderu. Poniższy przykład pokazuje, jak ustawić Aspose.Words, aby szukał czcionek TrueType w wielu folderach podczas renderowania lub osadzania czcionek:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Zwróć uwagę na priorytety. Jeśli istnieją czcionki o tej samej nazwie rodziny i stylu w różnych źródłach czcionek, Aspose.Words wybierze czcionkę ze źródła o wyższym priorytecie. Zobacz opis pola "priorytet" poniżej.

Jeśli w ogóle nie chcesz używać czcionek systemowych, Aspose.Words pozwala je zignorować i używać tylko własnych czcionek:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Właściwość Priorytetowa

Właściwość [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) jest używana, gdy istnieją czcionki o tej samej nazwie rodziny i stylu w różnych źródłach czcionek. W tym przypadku Aspose.Words wybiera czcionkę ze źródła o wyższej wartości priorytetu. Na przykład w folderze systemowym znajduje się stara wersja czcionki, a Klient dodał nową wersję tej samej czcionki w folderze niestandardowym.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## Załaduj czcionki ze strumienia {#loading-fonts-from-stream}

Aspose.Words zapewnia klasę [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource), która umożliwia ładowanie czcionek ze strumienia. Aby użyć źródła czcionki stream, użytkownik musi utworzyć klasę pochodną z **StreamFontSource** i zapewnić implementację metody [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/). Metodę **OpenFontDataStream** można wywołać kilka razy. Po raz pierwszy zostanie wywołany, gdy Aspose.Words skanuje dostarczone źródła czcionek, aby uzyskać listę dostępnych czcionek. Później można go wywołać, jeśli czcionka jest używana w dokumencie do analizowania danych czcionki i osadzania danych czcionki w niektórych formatach wyjściowych. **StreamFontSource** może być przydatny, ponieważ umożliwia ładowanie danych czcionek tylko wtedy, gdy jest to wymagane, a nie przechowywanie ich w pamięci przez okres użytkowania [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Zapisz i załaduj pamięć podręczną wyszukiwania czcionek

Podczas wyszukiwania czcionki po raz pierwszy Aspose.Words iteruje po źródłach czcionek określonych przez użytkownika i tworzy pamięć podręczną wyszukiwania czcionek na podstawie danych z tych źródeł. W ten sposób pamięć podręczna zbierze informacje o dostępnych czcionkach: rodzinie czcionek, stylu, pełnej nazwie czcionki i innych. Przy kolejnych wywołaniach Aspose.Words wyszukuje informacje o żądanej czcionce według jej nazwy w pamięci podręcznej wyszukiwania czcionek, po czym analizuje określone pliki, aby użyć czcionki.

Procedura analizowania wszystkich dostępnych plików czcionek w celu zainicjowania pamięci podręcznej jest dość czasochłonna. Aspose.Words umożliwia zapisanie i załadowanie pamięci podręcznej przy użyciu metody [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) w celu rozwiązania problemu z wydajnością. Oznacza to, że użytkownik może załadować wcześniej zapisaną pamięć podręczną z pliku i pominąć etap analizowania wszystkich dostępnych plików czcionek.

{{% alert color="primary" %}}

Użyj tej samej metody **SaveSearchCache**, aby zaktualizować pamięć podręczną.

{{% /alert %}}

{{% alert color="primary" %}}

Pamięć podręczna nadaje się również do innych scenariuszy ładowania czcionek przez sieć. Lub w przypadku scenariuszy, w których nie ma możliwości przechowywania instancji `FontSettings` z załadowaną pamięcią podręczną.

{{% /alert %}}

## Pobierz listę dostępnych czcionek {#get-a-list-of-available-fonts}

Jeśli chcesz uzyskać listę dostępnych czcionek, które na przykład mogą być użyte do renderowania dokumentu PDF, możesz użyć metody [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/), Jak pokazano w poniższym przykładzie kodu. Klasa [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) określa informacje o fizycznej czcionce dostępnej dla Aspose.Words font engine:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
