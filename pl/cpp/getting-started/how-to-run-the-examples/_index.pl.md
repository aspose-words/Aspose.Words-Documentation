---
title: Jak uruchomić przykłady
second_title: Aspose.Words dla C++
articleTitle: Jak uruchomić przykłady
linktitle: Jak uruchomić przykłady
description: "Pobierz przykłady Aspose.Words dla C++ z naszego repozytorium GitHub i dowiedz się, jak je uruchamiać, aby lepiej poznać możliwości i funkcje Aspose.Words."
type: docs
weight: 110
url: /pl/cpp/how-to-run-the-examples/
timestamp: 2024-07-11-16-13-28
---

Aby lepiej zapoznać się z możliwościami i funkcjami Aspose.Words, podajemy przykłady, które można pobrać z naszego repozytorium GitHub, uruchomić i szczegółowo się uczyć.

W tym artykule znajdziesz wymagania systemowe, a także informacje o tym, jak uruchomić przykłady.

## Windows z pakietem Nuget

### Wymagania i wymagania wstępne dotyczące oprogramowania

Przed pobraniem i uruchomieniem przykładów upewnij się, że spełniasz następujące wymagania:

1. Visual Studio kod, Visual Studio 2022.
2. Zainstalowany NuGet Menedżer pakietów i najnowsza wersja NuGet API dla Visual Studio. (opcjonalnie)
3. Wybrano opcję **nuget.org** w oknie dialogowym " Narzędzia → Opcje "w sekcji"NuGet Menedżer pakietów → źródła pakietów".
4. Aktywne połączenie internetowe do korzystania z funkcji automatycznego przywracania pakietu `NuGet` w projekcie Examples. Jeśli nie masz aktywnego połączenia internetowego na komputerze, na którym mają być wykonywane przykłady, postępuj zgodnie ze wskazówkami z Windows z Cmake Pakiet.

### Pobierz i uruchom przykłady

Wszystkie Aspose.Words dla C++ przykłady są hostowane na [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Możesz sklonować repozytorium za pomocą swojego ulubionego klienta GitHub lub pobrać [plik ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Po otrzymaniu kopii repozytorium może się okazać, że:

- Wszystkie przykłady znajdują się w folderze **Examples**.
- Istnieją Visual Studio pliki rozwiązania dla C++ utworzone w Visual Studio 2022.

Aby uruchomić przykłady, otwórz plik rozwiązania w Visual Studio i zbuduj projekt:

- W przypadku przykładów **API Reference** struktura opiera się na nazwach klas, w przypadku przykładów **Docs** opiera się głównie na [Deweloper Guiled](/words/cpp/developer-guide/) sekcja dokumentacji.
- Przy pierwszym uruchomieniu zależności zostaną automatycznie pobrane przez NuGet.
- Folder **Data** w folderze głównym **Examples** zawiera pliki wejściowe, które zostały użyte w przykładach.
- Wszystkie przykłady można uruchomić jako testy jednostkowe.

## Windows z pakietem CMake

### Wymagania i wymagania wstępne dotyczące oprogramowania

Przed pobraniem i uruchomieniem przykładów upewnij się, że spełniasz następujące wymagania:

1. Visual Studio kod, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Pobierz najnowszy pakiet CMake z https://downloads.aspose.com/words/cpp

### Pobierz i uruchom przykłady

Wszystkie Aspose.Words dla C++ przykłady są hostowane na [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Możesz sklonować repozytorium za pomocą swojego ulubionego klienta GitHub lub pobrać [plik ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Umieść foldery `Aspose.Words.Cpp` i `CodePorting.Native.Cs2Cpp_*` w katalogu głównym kopii repozytorium.

Wszystkie przykłady znajdują się w folderze **Examples**.

Aby uruchomić przykłady, uruchom następujące polecenia z katalogu głównego kopii repozytorium:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

Rozwiązanie dla Visual Studio zostanie wygenerowane w `Examples\DocsExamples\build`

Aby uruchomić przykłady, otwórz plik rozwiązania w Visual Studio i zbuduj projekt:

- W przypadku przykładów **API Reference** struktura opiera się na nazwach klas, w przypadku przykładów **Docs** opiera się głównie na [Deweloper Guiled](/words/cpp/developer-guide/) sekcja dokumentacji.
- Folder **Data** w folderze głównym **Examples** zawiera pliki wejściowe, które zostały użyte w przykładach.
- Wszystkie przykłady można uruchomić jako testy jednostkowe.

## Linux

### Wymagania i wymagania wstępne dotyczące oprogramowania

Przed pobraniem i uruchomieniem przykładów upewnij się, że spełniasz następujące wymagania:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Pobierz najnowszy pakiet CMake z https://downloads.aspose.com/words/cpp

### Pobierz i uruchom przykłady

Wszystkie Aspose.Words dla C++ przykłady są hostowane na [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Możesz sklonować repozytorium za pomocą swojego ulubionego klienta GitHub lub pobrać [plik ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Umieść foldery `Aspose.Words.Cpp` i `CodePorting.Native.Cs2Cpp_*` w katalogu głównym kopii repozytorium.

Wszystkie przykłady znajdują się w folderze **Examples**.

Aby uruchomić przykłady, uruchom następujące polecenia z katalogu głównego kopii repozytorium:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- W przypadku przykładów **API Reference** struktura opiera się na nazwach klas, w przypadku przykładów **Docs** opiera się głównie na [Deweloper Guiled](/words/cpp/developer-guide/) sekcja dokumentacji.
- Folder **Data** w folderze głównym **Examples** zawiera pliki wejściowe, które zostały użyte w przykładach.
- Wszystkie przykłady można uruchomić jako testy jednostkowe.

{{% alert color="primary" %}}

Skontaktuj się z nami, korzystając z naszego [Aspose.Words Forum Rodziny Produktów](https://forum.aspose.com/c/words/8) jeśli masz jakiekolwiek problemy z konfiguracją lub uruchomieniem przykładów.

{{% /alert %}}

## Przyczynić się do poprawy przykładów

Jeśli chcesz dodać lub ulepszyć przykład, zachęcamy do wniesienia wkładu w projekt. Wszystkie przykłady i projekty prezentacyjne w tym repozytorium są open source i mogą być swobodnie używane w aplikacjach.

Możesz rozwidlić repozytorium, edytować kod źródłowy i utworzyć żądanie ściągnięcia, aby wnieść wkład. Przejrzymy zmiany i umieścimy je w repozytorium, jeśli uznamy je za pomocne.

## Zobacz także

- [Szczegóły dotyczące instalacji menedżera pakietów NuGet ](https://docs.microsoft.com/nuget/guides/install-nuget)
