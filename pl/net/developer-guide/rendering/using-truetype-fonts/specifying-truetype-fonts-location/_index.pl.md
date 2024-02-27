---
title: Określ lokalizację czcionek TrueType w C#
second_title: Aspose.Words dla .NET
articleTitle: Określ lokalizację czcionek TrueType
linktitle: Określ lokalizację czcionek TrueType
description: "Określ różne źródła czcionek TrueType: folder systemowy, źródła użytkownika, ładowanie czcionek ze strumienia, system plików lub pamięć za pomocą C#."
type: docs
weight: 30
url: /pl/net/specifying-truetype-fonts-location/
---

W tym temacie opisano domyślne zachowanie Aspose.Words podczas wyszukiwania czcionek TrueType, w tym różnic specyficznych dla systemu operacyjnego, i pokazano, jak określić źródła czcionek użytkownika.

Klasa [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) służy do określania różnych źródeł czcionek. Istnieje kilka implementacji klasy **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

Szczegóły implementacji niektórych klas wyjaśniono poniżej.

## Załaduj czcionki z systemu {#loading-fonts-from-system}

Istnieje specjalna klasa [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/), która jest zawsze używana domyślnie. Reprezentuje wszystkie czcionki TrueType zainstalowane w systemie. Dlatego możliwe jest utworzenie listy źródeł z **SystemFontSource** i dowolnymi innymi wymaganymi źródłami:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Domyślnie w [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) zdefiniowana jest pojedyncza instancja klasy **SystemFontSource**. W różnych systemach operacyjnych czcionki mogą znajdować się w różnych miejscach. Jednak użycie instancji **FontSettings** dla każdego dokumentu nie jest rozwiązaniem optymalnym. W większości przypadków użycie [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) powinno wystarczyć.

Instancje dla poszczególnych dokumentów są potrzebne tylko wtedy, gdy wymagane jest użycie różnych źródeł czcionek dla różnych dokumentów, co jest rzadkim przypadkiem. Korzystanie z kilku instancji **FontSettings** zmniejsza wydajność, ponieważ nie współdzielą one pamięci podręcznej.

### Gdzie Aspose.Words szuka czcionek TrueType w Windows

W większości przypadków użytkownicy Windows nie napotykają znaczących problemów z brakującymi czcionkami lub nieprawidłowym układem. Zwykle Aspose.Words przegląda dokument i po napotkaniu łącza do czcionki pomyślnie pobiera dane czcionki z folderu systemowego.

W Windows Aspose.Words najpierw pobiera wszystkie dostępne czcionki z folderu _%windir%\Fonts. To ustawienie będzie działać w większości przypadków. Własne foldery z czcionkami określasz tylko wtedy, gdy jest to konieczne. Aspose.Words dla .NET wyszukuje także dodatkowe czcionki zarejestrowane w kluczu rejestru HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Dodatkowo Windows 10 umożliwia instalację czcionek dla bieżącego użytkownika. Czcionki są umieszczane w folderze %userprofile%\AppData\Local\Microsoft\Windows\Fonts i określane również w rejestrze HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, gdzie Aspose.Words będzie szukać tych czcionek.

Jeśli dokument zawiera osadzone czcionki, Aspose.Words może odczytać odpowiednie dane czcionek z dokumentu i użyć ich do stworzenia układu dokumentu. Dokumenty mogą również zawierać łącza do czcionek, których nie ma w folderach systemowych, w takim przypadku sprawdzają się następujące scenariusze:

- Użytkownicy mogą konfigurować nowe źródła czcionek poprzez klasę **FontSettings**
- Aspose.Words może spróbować zastąpić brakującą czcionkę podobną

{{% alert color="primary" %}}

Renderowanie Aspose.Words na serwerze zazwyczaj nie będzie działać z aplikacją ASP.NET skonfigurowaną do działania na średnim poziomie zaufania, ponieważ uniemożliwia dostęp do rejestru i ogranicza dostęp do systemu plików.

{{% /alert %}}

### Czcionki w systemach innych niż Windows

Aspose.Words będzie szukać czcionek w systemowych folderach czcionek. Listę tych folderów można wyświetlić metodą [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Jeśli nie zostaną znalezione żadne obsługiwane czcionki, Aspose.Words użyje wbudowanej domyślnej czcionki Fanwood.ttf.

Ponieważ metryki czcionek w systemach Windows i innych niż Windows są różne, Aspose.Words robi wszystko, co możliwe, aby znaleźć podobną czcionkę i zbudować układ podobny do oryginału. Jednak nie zawsze jest to możliwe. W takich przypadkach należy użyć klasy **FontSettings** w celu dodania niestandardowych czcionek lub reguł podstawienia.

#### Gdzie Aspose.Words szuka czcionek TrueType w Linux

Różne dystrybucje Linux mogą przechowywać czcionki w różnych folderach. Aspose.Words szuka czcionek w kilku lokalizacjach. Domyślnie Aspose.Words szuka czcionek we wszystkich następujących lokalizacjach: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fontsTo domyślne zachowanie będzie działać w przypadku większości dystrybucji Linux, ale nie ma gwarancji, że będzie działać zawsze. W takim przypadku może być konieczne wyraźne określenie lokalizacji czcionek typu true. Aby to zrobić, musisz wiedzieć, gdzie w Twojej dystrybucji Linux są zainstalowane czcionki TrueType.

#### Gdzie Aspose.Words szuka czcionek TrueType w systemie Mac OS X

Aspose.Words szuka czcionek w folderze /Library/Fonts, który jest standardową lokalizacją czcionek TrueType w systemie Mac OS X. Chociaż to ustawienie będzie działać w większości przypadków, może być konieczne określenie własnych folderów czcionek w przypadku, gdy musisz.

## Załaduj czcionki z folderu {#loading-fonts-from-folder}

Jeśli przetwarzany dokument zawiera linki do czcionek, których nie ma w systemie, nie chcesz ich dodawać do folderu systemowego lub nie masz uprawnień, to najlepszym rozwiązaniem będzie dodanie folderu z własnymi czcionkami za pomocą metodą [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/). Umożliwi to zastąpienie źródła systemowego źródłem użytkownika. Aspose.Words nie będzie już wyszukiwał czcionek w rejestrze ani w folderze Windows\Font, a zamiast tego skanował jedynie czcionki w określonych folderach. Metoda [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) zwróci odpowiednie wartości.

### Określ jeden lub wiele folderów czcionek

Metody [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) i [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) są skrótami do metody **SetFontSources** z jedną lub kilkoma instancjami [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/). Metody te służą do wskazania, gdzie Aspose.Words powinien szukać czcionek. Jeżeli folder nie istnieje lub nie jest dostępny, Aspose.Words po prostu go ignoruje. Jeśli wszystkie foldery, łącznie ze źródłami zamiany czcionek, zostaną zignorowane, Aspose.Words domyślnie użyje czcionki Fanwood.

Poniższy przykład pokazuje, jak ustawić folder lub źródło, którego Aspose.Words będzie później używać do wyszukiwania czcionek TrueType podczas renderowania lub osadzania czcionek:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Dodatkowy parametr logiczny kontroluje, czy czcionki są skanowane rekurencyjnie we wszystkich folderach, co powoduje skanowanie wszystkich folderów podrzędnych określonego folderu. Poniższy przykład ilustruje, jak ustawić Aspose.Words tak, aby podczas renderowania lub osadzania czcionek szukał czcionek TrueType w wielu folderach:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Zwróć uwagę na priorytety. Jeśli w różnych źródłach czcionek znajdują się czcionki o tej samej nazwie rodziny i stylu, Aspose.Words wybierze czcionkę ze źródła o wyższym priorytecie. Zobacz opis pola "Priorytet" poniżej.

Jeśli w ogóle nie chcesz używać czcionek systemowych, Aspose.Words pozwala je zignorować i używać wyłącznie własnych czcionek:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Nieruchomość priorytetowa

Właściwość [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) jest używana, gdy w różnych źródłach czcionek znajdują się czcionki o tej samej nazwie rodziny i stylu. W tym przypadku Aspose.Words wybiera czcionkę ze źródła o wyższej wartości priorytetu. Na przykład w folderze systemowym znajduje się stara wersja czcionki, a klient dodał nową wersję tej samej czcionki w folderze niestandardowym.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Załaduj czcionki ze strumienia {#loading-fonts-from-stream}

Aspose.Words udostępnia klasę [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/), która umożliwia ładowanie czcionek ze strumienia. Aby skorzystać ze źródła czcionki strumieniowej, użytkownik musi utworzyć klasę pochodną z formatu **StreamFontSource** i zapewnić implementację metody [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/). Metodę **OpenFontDataStream** można wywołać kilkukrotnie. Po raz pierwszy zostanie wywołana, gdy Aspose.Words przeskanuje dostarczone źródła czcionek w celu uzyskania listy dostępnych czcionek. Później można to wywołać, jeśli czcionka jest używana w dokumencie do analizowania danych czcionki i osadzania danych czcionki w niektórych formatach wyjściowych. **StreamFontSource** może być przydatny, ponieważ umożliwia ładowanie danych czcionek tylko wtedy, gdy jest to wymagane, a nie przechowywanie ich w pamięci przez cały okres istnienia pliku [Ustawienia czcionek](https://fontsettings/).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** jest alternatywą dla [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/), ponieważ zawsze można załadować strumień do pamięci i przekazać go do formatu **MemoryFontSource**. Różnica polega na tym, że plik **MemoryFontSource** jest cały czas przechowywany w pamięci, a plik **StreamFontSource** jest ładowany na żądanie i od razu usuwany. Można go jednak ładować kilka razy, jak opisano powyżej. W niektórych przypadkach preferowany jest format **MemoryFontSource**, a w innych **StreamFontSource**.

## Zapisz i załaduj pamięć podręczną wyszukiwania czcionek

Podczas wyszukiwania czcionki po raz pierwszy Aspose.Words przegląda źródła czcionek określone przez użytkownika i tworzy pamięć podręczną wyszukiwania czcionek na podstawie danych z tych źródeł. W ten sposób pamięć podręczna będzie zbierać informacje o dostępnych czcionkach: rodzinie czcionek, stylu, pełnej nazwie czcionki i innych. Podczas kolejnych wywołań Aspose.Words wyszukuje informacje o żądanej czcionce według jej nazwy w pamięci podręcznej wyszukiwania czcionek, po czym analizuje określone pliki pod kątem użycia czcionki.

Procedura analizowania wszystkich dostępnych plików czcionek w celu zainicjowania pamięci podręcznej jest dość czasochłonna. Aspose.Words umożliwia zapisywanie i ładowanie pamięci podręcznej przy użyciu metody [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) w celu rozwiązania problemu z wydajnością. Oznacza to, że użytkownik może załadować wcześniej zapisaną pamięć podręczną z pliku i pominąć etap analizowania wszystkich dostępnych plików czcionek.

{{% alert color="primary" %}}

Użyj tej samej metody **SaveSearchCache**, aby zaktualizować pamięć podręczną.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak z wyprzedzeniem przygotować źródła czcionek i wygenerować pamięć podręczną wyszukiwania czcionek:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

Poniższy przykład kodu pokazuje, jak ustawić źródła czcionek i załadować pamięć podręczną wyszukiwania przed przetworzeniem dokumentów:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Pamięć podręczna wyszukiwania czcionek doskonale nadaje się do integracji Aspose.Words z AWS Lambda ze względu na szereg ograniczeń. Np. na wielkości głównego kontenera i w efekcie na liczbie czcionek.

Pamięć podręczna nadaje się również do innych scenariuszy, gdy czcionki są ładowane przez sieć. Lub w scenariuszach, w których nie ma możliwości przechowywania instancji `FontSettings` z załadowaną pamięcią podręczną.

{{% /alert %}}

## Uzyskaj listę dostępnych czcionek {#get-a-list-of-available-fonts}

Jeśli chcesz uzyskać listę dostępnych czcionek, które można wykorzystać np. do renderowania dokumentu PDF, możesz skorzystać z metody [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/), jak pokazano w poniższym przykładzie kodu. Klasa [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) określa informacje o czcionce fizycznej dostępnej dla silnika czcionek Aspose.Words:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
