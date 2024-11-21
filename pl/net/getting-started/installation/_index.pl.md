---
title: Instalacja
second_title: Aspose.Words dla .NET
articleTitle: Instalacja
linktitle: Instalacja
description: "Zainstaluj Aspose.Words dla .NET przy użyciu narzędzi Visual Studio, takich jak Manage NuGet Packages lub Package Manager Console i instalatora MSI. Użyj uprawnień Full Trust ustawionych w C#."
type: docs
weight: 10
url: /pl/net/installation/
timestamp: 2024-01-27-14-07-04
---

Zanim zaczniesz, upewnij się, że Twoja maszyna spełnia wymagania [wymagania systemowe](/words/pl/net/system-requirements/).

W tym artykule wyjaśniono, jak zainstalować Aspose.Words dla .NET na komputerze.

## Zainstaluj lub zaktualizuj Aspose.Words dla .NET przy użyciu Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet to najłatwiejszy sposób pobrania i zainstalowania plików [Aspose.Words dla .NET](https://www.nuget.org/packages/Aspose.Words/) API. Aby to zrobić, wykonaj następujące kroki:

1. Otwórz z menu *Microsoft Visual Studio* i *Manage NuGet Packages*, aby otworzyć menedżera pakietów
2. Wyszukaj "aspose" lub "aspose.words", aby znaleźć żądany plik Aspose API<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-słowa-nuget" style="width:800px"/>
3. Wybierz żądany Aspose API i kliknij "Zainstaluj"

Wybrany plik API zostanie pobrany i będzie używany w Twoim projekcie.

Możesz także zaktualizować Aspose.Words dla .NET do żądanej wersji przy użyciu *Manage NuGet Packages*.

## Zainstaluj lub zaktualizuj Aspose.Words za pomocą Package Manager Console

Można także zainstalować lub zaktualizować Aspose.Words dla plików .NET API przy użyciu formatu *Package Manager Console*. Aby to zrobić, wykonaj następujące kroki:

1. Otwórz *Microsoft Visual Studio* i *Package Manager Console* z menu, aby otworzyć konsolę menedżera pakietów<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. Wpisz polecenie `Install-Package Aspose.Words` i naciśnij klawisz Enter, aby zainstalować najnowszą pełną wersję aplikacji<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}Ponadto do polecenia można dodać przyrostek `-prerelease`, aby określić, że powinna zostać zainstalowana także najnowsza wersja, w tym poprawki.{{% /alert %}}
3. Po pobraniu zobaczysz komunikaty z potwierdzeniem<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br>
   {{% alert color="primary" %}}Jeśli nie znasz formatu [Załóż EULA](https://about.aspose.com/legal/eula/), zaleca się przeczytanie licencji wymienionej w adresie URL.{{% /alert %}}
4. Teraz może się okazać, że Aspose.Words został pomyślnie dodany i znajduje się w nim odniesienie do Twojej aplikacji<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-referencje" style="width:400px"/>

W *Package Manager Console* możesz także użyć polecenia `Update-Package Aspose.Words`, aby sprawdzić dostępność aktualizacji pakietu Aspose.Words i zainstalować je, jeśli są obecne. Możesz także dodać sufiks `-prerelease`, aby zaktualizować najnowszą wersję.

## Zainstaluj Aspose.Words dla .NET za pomocą Instalatora

Aspose.Words dla .NET można zainstalować, pobierając instalator MSI bezpośrednio z pliku [sekcja pobierania](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

Aby pobrać instalator, musisz się zalogować. Jeśli nie jesteś jeszcze zarejestrowany, możesz zarejestrować się bezpłatnie.

{{% /alert %}}

Aby zainstalować Aspose.Words dla .NET, wykonaj następujące kroki:

1. Pobierz plik `Aspose.Words_`X{LatestVersion}.msi z pliku [sekcja pobierania](https://releases.aspose.com/words/)
2. Kliknij dwukrotnie pobrany plik, uruchamiając w ten sposób kreatora instalacji, postępuj zgodnie z instrukcjami kreatora instalacji<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. Gdy kreator instalacji zakończy instalację, wymagane pliki będą dostępne w folderze o podanej ścieżce folderu<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. Otwórz swoje rozwiązanie/projekt w Visual Studio
5. Kliknij prawym przyciskiem myszy swój projekt w *Solution Explorer* i dodaj odniesienie do zainstalowanych zestawów
6. Aspose.Words dla zainstalowanych zestawów .NET pojawi się w rozszerzeniach w sekcji Zespoły – wystarczy wybrać wymagany komponent DLL<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. Na koniec kliknij OK

## Uwagi dotyczące uruchamiania we współdzielonym środowisku Server

Zaleca się, aby wszystkie komponenty Aspose .NET działały z zestawem uprawnień *Full Trust*. Dzieje się tak dlatego, że komponent Aspose .NET czasami potrzebuje dostępu do ustawień rejestru i plików znajdujących się w miejscach innych niż katalog wirtualny, np. do odczytu czcionek. Co więcej, komponenty `Aspose.NET` opierają się na podstawowych klasach systemu .NET, a niektóre z nich wymagają w niektórych przypadkach pozwolenia *Full Trust* na działanie.

Dostawcy usług internetowych hostujący wiele aplikacji różnych firm przeważnie wymuszają poziom bezpieczeństwa *Medium Trust*. W przypadku .NET 2.0 taki poziom bezpieczeństwa może nakładać następujące ograniczenia, które mogą mieć wpływ na prawidłowe działanie Aspose.Words:

- **RegistryPermission** nie jest dostępny. Oznacza to, że nie można uzyskać dostępu do rejestru, który jest wymagany do wyliczania zainstalowanych czcionek podczas renderowania dokumentów.
- **FileIOPermission** jest ograniczony. Oznacza to, że dostęp do plików można uzyskać wyłącznie w hierarchii katalogów wirtualnych aplikacji. Potencjalnie oznacza to również, że czcionek nie można odczytać podczas eksportu.

Z powyższych powodów zaleca się uruchamianie Aspose.Words z uprawnieniami Full Trust. Może się okazać, że niektóre funkcje biblioteki będą działać podczas wykonywania różnych zadań przy średnim zaufaniu, a inne, na przykład, nie będą renderowane. Może to być powiązane z wywołaniami przetwarzania obrazu GDI+.
