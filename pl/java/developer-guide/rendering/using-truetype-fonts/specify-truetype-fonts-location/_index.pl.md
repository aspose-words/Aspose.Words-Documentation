---
title: Określ prawdę Typ Czcionki Lokalizacja w Java
second_title: Aspose.Words zamiast Java
articleTitle: Określ prawdę Typ Czcionki Lokalizacja
linktitle: Określ prawdę Typ Czcionki Lokalizacja
description: "Określić różne Prawda. Źródła czcionek typu: folder systemowy, źródła użytkownika, wczytywanie czcionek ze strumienia, system plików lub pamięć przy użyciu Java."
type: docs
weight: 30
url: /pl/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Ten temat opisuje domyślne zachowanie Aspose.Words gdy szuka czcionek TrueType, w tym różnic specyficznych dla systemu operacyjnego, i pokazuje, jak określić źródła czcionki użytkownika.

W [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) klasa jest używana do określenia różnych źródeł czcionki. Istnieje kilka implementacji **FontSourceBase** klasa:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Szczegóły dotyczące wdrażania niektórych klas przedstawiono poniżej.

## Wczytaj czcionki z systemu {#loading-fonts-from-system}

Jest specjalny [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) klasa, która jest zawsze używana domyślnie. Reprezentuje wszystkie czcionki TrueType zainstalowane w systemie. Dlatego możliwe jest stworzenie listy źródłowej **SystemFontSource** oraz wszelkie inne wymagane źródła:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Pojedynczy przypadek **SystemFontSource** klasa jest zdefiniowana domyślnie w [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Na różnych systemach operacyjnych czcionki mogą znajdować się w różnych miejscach. Jednakże **FontSettings** instancja dla każdego dokumentu nie jest optymalnym rozwiązaniem. W większości przypadków [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) Powinno wystarczyć.

Przykłady per- document są potrzebne tylko wtedy, gdy jest wymagane użycie różnych źródeł czcionki dla różnych dokumentów, co jest rzadkim przypadkiem. Korzystanie z kilku **FontSettings** instancje obniżają wydajność, ponieważ nie udostępniają pamięci podręcznej.

### Gdzie Aspose.Words Poszukuje czcionek TrueType Windows

W większości przypadków Windows użytkownicy nie napotykają znaczących problemów z pominiętymi czcionkami lub niepoprawnymi układami. Zazwyczaj, Aspose.Words przechodzi przez dokument, a kiedy napotyka odnośnik czcionki, pomyślnie pobiera dane czcionki z folderu systemowego.

On Windows, > Aspose.Words najpierw bierze wszystkie dostępne czcionki z _ _%windir%\Fonts folder. To ustawienie będzie działać dla Ciebie przez większość czasu. Określasz własne foldery czcionek tylko wtedy, gdy musisz. Aspose.Words również szuka dodatkowych czcionek zarejestrowanych w HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts klucz rejestracyjny. Ponadto, Windows 10 umożliwia instalację czcionek dla bieżącego użytkownika. Czcionki są umieszczone w %userprofile%\AppData\Local\Microsoft\Windows\Fonts folder i również określone w HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts rejestr, w którym Aspose.Words będzie szukać tych czcionek.

Jeśli dokument zawiera wbudowane czcionki, Aspose.Words może odczytywać odpowiednie dane czcionek z dokumentu i używać go do tworzenia układu dokumentu. Dokumenty mogą również zawierać linki do czcionek, które nie znajdują się w folderach systemowych, w którym to przypadku do działania wchodzą następujące scenariusze:

- Użytkownicy mogą skonfigurować nowe źródła czcionki poprzez **FontSettings** klasa
- Aspose.Words może spróbować zastąpić brakującą czcionkę podobnym

### Czcionki na nie-Windows Systemy

Aspose.Words będzie szukać czcionek w folderach czcionek systemowych. Lista tych folderów może być widoczna przez [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) Metoda. Jeśli nie znaleziono obsługiwanych czcionek, Aspose.Words użyje domyślnej czcionki built- in Fanwood.ttf.

Od mierników czcionki Windows i nie -Windows OS są inne, Aspose.Words robi wszystko, co możliwe, aby znaleźć podobną czcionkę i zbudować układ podobny do oryginału. Nie zawsze jest to jednak możliwe. W tych przypadkach **FontSettings** klasa powinna być używana do dodawania niestandardowych czcionek lub zasad zastępczych.

#### Gdzie Aspose.Words Poszukuje czcionek TrueType Linux

Różne Linux dystrybucje mogą przechowywać czcionki w różnych folderach. Aspose.Words szuka czcionek w kilku lokalizacjach. Domyślnie, Aspose.Words szuka czcionek we wszystkich następujących lokalizacjach: * / usr / share / fonts * / usr / local / share / fonts * / usr / X11R6 / lib / X11 / fonts To domyślne zachowanie będzie działać dla większości Linux dystrybucje, ale nie jest gwarantowane, aby pracować przez cały czas, w którym to przypadku może być konieczne, aby określić lokalizację true wpisywanie czcionek wyraźnie. Aby to zrobić, musisz wiedzieć, gdzie są zainstalowane czcionki TrueType Linux dystrybucji.

#### Gdzie Aspose.Words Poszukuje czcionek TrueType na Mac OS X

Aspose.Words szuka czcionek w folderze / Library / Fonts, który jest standardową lokalizacją czcionek TrueType na Mac OS X. Podczas gdy to ustawienie będzie działać dla Ciebie przez większość czasu, może być konieczne podanie własnych folderów czcionek w przypadku, gdy trzeba.

#### Czcionki TrueType włączone Android

On Android, Workflow czcionek jest zamykany w klasie Typeface.
Istnieje pięć typów czcionek, każda z nich reprezentuje grupę podobnych rodzin czcionek:

- DEFAULT
- DEFAULT _ BOLD
- MONOSPACE
- SANS _ SERIF
- SERIF

Na przykład Androidjest [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) plik konfiguracyjny, "times" należy do rodziny "serif", więc NotoSerif- Regular.ttf będzie używany, gdy "times" jest wymagane:

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

Do wyszukiwania podobnych czcionek wykorzystywane są opisane wcześniej strategie

Oprócz nich, Aspose.Words posiada własną listę zastępców Android platformy.

Powiedzmy, że dokument zawiera czcionkę PmingLiU- ExtB, po pierwsze, Aspose.Words szuka wymaganej czcionki w źródłach systemu.

Domyślna lista Android foldery font to:

- / system / czcionki
- / system / font
- / data / fonts

W Aspose.Words przegląda zdefiniowane przez użytkownika źródła, które zostały ustawione metodą:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

W przypadku wyraźnego zastąpienia, Aspose.Words Zastąpi brakującą czcionkę sugestią użytkownika:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Jeśli żadna z zasad nie zadziałała, Aspose.Words Sprawdź wewnętrzny stół zastępczy. Jeśli tabela zawiera informacje o dobrym dopasowaniu, to czcionka zostaje zastąpiona. W naszym przypadku Aspose.Words wybierze `Typeface.SERIF`. Ale jeśli tabela nic nie wie o żądanej czcionce, Aspose.Words pobiera czcionkę w oparciu o specjalne zasady MS Word lub najbliższą odległość w przestrzeni Panose.

#### Czcionki TrueType włączone .NET Core oraz Xamarin

Dla .NET Core oraz Xamarin ta sama zasada ma zastosowanie do Aspose.Words zamiast Java Wersja. Domyślnie dostępne są wszystkie czcionki systemowe platformy, na której uruchomiona jest aplikacja.
Lista folderów, w których zostanie przeprowadzone wyszukiwanie, można znaleźć poprzez wywołanie metody:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Wczytaj czcionki z folderu {#loading-fonts-from-folder}

Jeśli przetwarzany dokument zawiera linki do czcionek, które nie są w systemie, lub nie chcesz ich dodawać do folderu systemowego, lub brak Ci uprawnień, to najlepszym rozwiązaniem byłoby dodanie folderu z własnymi czcionkami za pomocą `SetFontsSources` Metoda. Umożliwi to zastąpienie źródła systemu źródłem użytkownika. Aspose.Words nie będą już szukać czcionek w rejestrze lub Windows\Font folder, a zamiast tego skanować tylko czcionki w określonym folderze (-ach). W `GetFontSources` metoda zwróci odpowiednie wartości.

### Podaj jeden lub wiele folderów czcionek

W [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) i metody SetFontsFolders są skrótami do **SetFontSources** metoda z jedną lub kilkoma [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) Przypadki. Metody te są stosowane w celu wskazania, gdzie Aspose.Words powinny szukać czcionek. Jeśli folder nie istnieje lub nie jest dostępny, Aspose.Words Po prostu ignoruje ten folder. Jeżeli wszystkie foldery, w tym źródła zastępowania czcionek, zostały zignorowane, Aspose.Words użyje czcionki Fanwood jako domyślnej.

Poniższy przykład pokazuje jak ustawić folder lub źródło, które Aspose.Words będzie następnie używać do wyszukiwania czcionek TrueType podczas renderowania lub osadzania czcionek:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Dodatkowy parametr Boolean kontroluje, czy czcionki są skanowane rekursywnie przez wszystkie foldery, a tym samym skanuje wszystkie foldery dziecięce określonego folderu. Poniższy przykład pokazuje jak ustawić Aspose.Words przeglądanie w wielu folderach czcionek TrueType podczas renderowania lub osadzania czcionek:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Zwróć uwagę na priorytety. Jeśli istnieją czcionki o tej samej nazwie rodziny i stylu w różnych źródłach czcionek, to Aspose.Words wybierze czcionkę ze źródła o wyższym priorytecie. Patrz opis pola "Priorytet" poniżej.

{{% /alert %}}

Jeśli w ogóle nie chcesz używać czcionek systemowych, Aspose.Words pozwala ignorować je i używać tylko własnych czcionek:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Własność priorytetowa

W [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) właściwość jest używana, gdy istnieją czcionki o tej samej nazwie rodziny i stylu w różnych źródłach czcionki. W tym przypadku Aspose.Words wybiera czcionkę ze źródła o wyższej wartości priorytetowej. Na przykład w folderze systemowym znajduje się stara wersja czcionki, a klient dodał nową wersję tej samej czcionki w folderze niestandardowym.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Wczytaj czcionki ze strumienia {#loading-fonts-from-stream}

Aspose.Words zapewnia [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) klasa, która umożliwia wczytanie czcionek ze strumienia. Aby użyć źródła fontów strumieniowych, użytkownik musi utworzyć pochodną klasy z **StreamFontSource** i zapewnić wdrożenie [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) Metoda. W **OpenFontDataStream** Metoda może być wywołana kilka razy. Po raz pierwszy, będzie nazywany kiedy Aspose.Words skanuje podane źródła czcionki, aby uzyskać listę dostępnych czcionek. Później może być wywołane, jeśli czcionka jest używana w dokumencie do przetwarzania danych czcionek i osadzania danych czcionek w niektórych formatach wyjściowych. **StreamFontSource** może być przydatne, ponieważ pozwala na wczytanie danych czcionek tylko wtedy, gdy jest to wymagane, i nie przechowywać go w pamięci dla `FontSettings` Całe życie.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** jest alternatywą dla [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) ponieważ zawsze można załadować strumień do pamięci i przekazać go do **MemoryFontSource**. Różnica polega na tym, że **MemoryFontSource** jest przechowywany w pamięci cały czas, a **StreamFontSource** jest załadowany na żądanie i usuwany natychmiast. Ale może być załadowany kilka razy, jak opisano powyżej. W niektórych przypadkach **MemoryFontSource** jest preferowany, a w innych, **StreamFontSource**.

## Zapisz i wczytaj zakładkę wyszukiwania czcionek

Podczas wyszukiwania czcionki po raz pierwszy, Aspose.Words powtarza się nad źródłami czcionki podanymi przez użytkownika i tworzy podręcznik wyszukiwania czcionek oparty na danych z tych źródeł. Tak więc, cache zgromadzi informacje o dostępnych czcionkach: rodzina czcionek, styl, pełna nazwa czcionki i inne. W przypadku kolejnych połączeń, Aspose.Words wyszukuje informacje o żądanej czcionce po jej nazwie w pamięci podręcznej wyszukiwania czcionki, po której przetwarza określone pliki do używania czcionki.

Procedura parsowania wszystkich dostępnych plików czcionek do inicjalizacji bufora jest dość czasochłonna. Aspose.Words pozwala na zapisywanie i wczytywanie pamięci podręcznej za pomocą **FontSettings.SaveSearchCache** metoda rozwiązywania problemu wydajności. Oznacza to, że użytkownik może wczytać wcześniej zapisany cache z pliku i pominąć krok parsowania wszystkich dostępnych plików czcionek.

{{% alert color="primary" %}}

Użyj tego samego **SaveSearchCache** metoda aktualizacji pamięci podręcznej.

{{% /alert %}}

{{% alert color="primary" %}}

Cache nadaje się również do innych scenariuszy, gdy czcionki są ładowane przez sieć. Lub scenariuszy, gdy nie ma sposobu na przechowywanie `FontSettings` instance with a loaded cache.

{{% /alert %}}


## Pobierz listę dostępnych czcionek {#get-a-list-of-available-fonts}

Jeśli chcesz uzyskać listę dostępnych czcionek, które na przykład mogą być używane do renderowania dokumentu PDF, możesz użyć [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) metoda, jak pokazano w poniższym przykładzie kodu. W [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) klasa określa informacje na temat fizycznej czcionki dostępnej dla Aspose.Words silnik czcionki:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
