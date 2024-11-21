---
title: Określ lokalizację czcionek TrueType
second_title: Aspose.Words dla Python via .NET
articleTitle: Określ lokalizację czcionek TrueType
linktitle: Określ lokalizację czcionek TrueType
description: "Określ różne źródła czcionek TrueType: folder systemowy, źródła użytkownika, ładowanie czcionek ze strumienia, system plików lub pamięć za pomocą Python."
type: docs
weight: 30
url: /pl/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

W tym temacie opisano domyślne zachowanie Aspose.Words podczas wyszukiwania czcionek TrueType, w tym różnic specyficznych dla systemu operacyjnego, i pokazano, jak określić źródła czcionek użytkownika.

Klasa [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) służy do określania różnych źródeł czcionek. Istnieje kilka implementacji klasy [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/):

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Szczegóły implementacji niektórych klas wyjaśniono poniżej.

## Ładowanie czcionek z systemu

Istnieje specjalna klasa [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/), która jest zawsze używana domyślnie. Reprezentuje wszystkie czcionki TrueType zainstalowane w systemie. Dlatego możliwe jest utworzenie listy źródeł z [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) i dowolnymi innymi wymaganymi źródłami:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

Domyślnie w [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) zdefiniowana jest pojedyncza instancja klasy [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/). W różnych systemach operacyjnych czcionki mogą znajdować się w różnych miejscach. Jednak użycie instancji [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) dla każdego dokumentu nie jest rozwiązaniem optymalnym. W większości przypadków użycie formatu [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) powinno wystarczyć.

Instancje dla poszczególnych dokumentów są potrzebne tylko wtedy, gdy wymagane jest użycie różnych źródeł czcionek dla różnych dokumentów, co jest rzadkim przypadkiem. Korzystanie z kilku instancji [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) zmniejsza wydajność, ponieważ nie współdzielą one pamięci podręcznej.

### Gdzie Aspose.Words szuka czcionek TrueType w Windows

W większości przypadków użytkownicy Windows nie napotykają znaczących problemów z brakującymi czcionkami lub nieprawidłowym układem. Zwykle Aspose.Words przegląda dokument i po napotkaniu łącza do czcionki pomyślnie pobiera dane czcionki z folderu systemowego.

W Windows Aspose.Words najpierw pobiera wszystkie dostępne czcionki z folderu _%windir%\Fonts. To ustawienie będzie działać w większości przypadków. Własne foldery z czcionkami określasz tylko wtedy, gdy jest to konieczne. Aspose.Words dla .NET wyszukuje także dodatkowe czcionki zarejestrowane w kluczu rejestru *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts*. Dodatkowo Windows 10 umożliwia instalację czcionek dla bieżącego użytkownika. Czcionki są umieszczane w folderze *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* i określane również w rejestrze *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts*, gdzie Aspose.Words będzie szukać tych czcionek.

Jeśli dokument zawiera osadzone czcionki, Aspose.Words może odczytać odpowiednie dane czcionek z dokumentu i użyć ich do stworzenia układu dokumentu. Dokumenty mogą również zawierać łącza do czcionek, których nie ma w folderach systemowych, w takim przypadku sprawdzają się następujące scenariusze:

- Użytkownicy mogą konfigurować nowe źródła czcionek poprzez klasę [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)
- Aspose.Words może spróbować zastąpić brakującą czcionkę podobną


### Czcionki w systemach innych niż Windows

Aspose.Words będzie szukać czcionek w systemowych folderach czcionek. Listę tych folderów można wyświetlić metodą [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/). Jeśli nie zostaną znalezione żadne obsługiwane czcionki, Aspose.Words użyje wbudowanej domyślnej czcionki Fanwood.ttf.

Ponieważ metryki czcionek w systemach Windows i innych niż Windows są różne, Aspose.Words robi wszystko, co możliwe, aby znaleźć podobną czcionkę i zbudować układ podobny do oryginału. Jednak nie zawsze jest to możliwe. W takich przypadkach należy użyć klasy [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) w celu dodania niestandardowych czcionek lub reguł podstawienia.

#### Gdzie Aspose.Words szuka czcionek TrueType w Linux

Różne dystrybucje Linux mogą przechowywać czcionki w różnych folderach. Aspose.Words szuka czcionek w kilku lokalizacjach. Domyślnie Aspose.Words szuka czcionek we wszystkich następujących lokalizacjach: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. To domyślne zachowanie będzie działać w większości dystrybucji Linux, ale nie ma gwarancji, że będzie działać przez cały czas, w takim przypadku może być konieczne jawne określenie lokalizacji czcionek typu true. Aby to zrobić, musisz wiedzieć, gdzie w Twojej dystrybucji Linux są zainstalowane czcionki TrueType.

#### Gdzie Aspose.Words szuka czcionek TrueType w systemie Mac OS X

Aspose.Words szuka czcionek w folderze */Library/Fonts*, który jest standardową lokalizacją czcionek TrueType w systemie Mac OS X. Chociaż to ustawienie będzie działać w większości przypadków, może być konieczne określenie własnych folderów czcionek w przypadku, kiedy tego potrzebujesz.

## Ładowanie czcionek z folderu

Jeśli przetwarzany dokument zawiera linki do czcionek, których nie ma w systemie, nie chcesz ich dodawać do folderu systemowego lub nie masz uprawnień, to najlepszym rozwiązaniem będzie dodanie folderu z własnymi czcionkami za pomocą metodą [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/). Umożliwi to zastąpienie źródła systemowego źródłem użytkownika. Aspose.Words nie będzie już wyszukiwał czcionek w rejestrze ani w folderze Windows\Font, a zamiast tego skanował jedynie czcionki w określonych folderach. Metoda [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) zwróci odpowiednie wartości.

### Określanie jednego lub wielu folderów czcionek

Metody [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) i [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) są skrótami do metody [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) z jedną lub kilkoma instancjami [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/). Metody te służą do wskazania, gdzie Aspose.Words powinien szukać czcionek. Jeżeli folder nie istnieje lub nie jest dostępny, Aspose.Words po prostu go ignoruje. Jeśli wszystkie foldery, łącznie ze źródłami zamiany czcionek, zostaną zignorowane, Aspose.Words domyślnie użyje czcionki Fanwood.

Poniższy przykład pokazuje, jak ustawić folder lub źródło, którego Aspose.Words będzie później używać do wyszukiwania czcionek TrueType podczas renderowania lub osadzania czcionek:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Dodatkowy parametr logiczny kontroluje, czy czcionki są skanowane rekurencyjnie we wszystkich folderach, co powoduje skanowanie wszystkich folderów podrzędnych określonego folderu. Poniższy przykład ilustruje, jak ustawić Aspose.Words tak, aby podczas renderowania lub osadzania czcionek szukał czcionek TrueType w wielu folderach:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Zwróć uwagę na priorytety. Jeśli w różnych źródłach czcionek znajdują się czcionki o tej samej nazwie rodziny i stylu, Aspose.Words wybierze czcionkę ze źródła o wyższym priorytecie. Zobacz opis pola "priorytet" poniżej.

Jeśli w ogóle nie chcesz używać czcionek systemowych, Aspose.Words pozwala je zignorować i używać wyłącznie własnych czcionek:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Nieruchomość priorytetowa

Właściwość **priorytet** jest używana, gdy w różnych źródłach czcionek znajdują się czcionki o tej samej nazwie rodziny i stylu. W tym przypadku Aspose.Words wybiera czcionkę ze źródła o wyższej wartości priorytetu. Na przykład w folderze systemowym znajduje się stara wersja czcionki, a klient dodał nową wersję tej samej czcionki w folderze niestandardowym.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Uzyskiwanie listy dostępnych czcionek

Jeśli chcesz uzyskać listę dostępnych czcionek, które można wykorzystać np. do renderowania dokumentu PDF, możesz skorzystać z metody [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/), jak pokazano w poniższym przykładzie kodu. Klasa [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) określa informacje o czcionce fizycznej dostępnej dla silnika czcionek Aspose.Words:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
