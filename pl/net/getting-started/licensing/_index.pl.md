---
title: Licencjonowanie i subskrypcja
second_title: Aspose.Words dla .NET
articleTitle: Licencjonowanie i subskrypcja
linktitle: Licencjonowanie i subskrypcja
description: "Aspose.Words dla .NET oferuje różne plany zakupu lub bezpłatną wersję próbną i 30-dniową licencję tymczasową do oceny przy użyciu zasad licencjonowania i subskrypcji w formacie C#."
type: docs
weight: 55
url: /pl/net/licensing/
timestamp: 2024-10-24-11-44-28
---

Czasami, aby lepiej przestudiować system, chcesz jak najszybciej zagłębić się w kod. Aby to ułatwić, Aspose.Words oferuje różne plany zakupu lub bezpłatną wersję próbną i 30-dniową licencję tymczasową do oceny.

{{% alert color="primary" %}}

Należy pamiętać, że istnieje szereg ogólnych zasad i praktyk, które pomogą Ci ocenić, właściwie licencjonować i zakupić nasze produkty. Znajdziesz je w sekcji [Zasady zakupów i często zadawane pytania](https://purchase.aspose.com/policies/).

{{% /alert %}}

## Bezpłatny okres próbny lub licencja tymczasowa

Aspose.Words to niesamowite oprogramowanie, które programiści mogą wypróbować przed zakupem.

### Bezpłatny okres próbny

Wersja testowa jest taka sama jak zakupiona – [Wersja próbna](https://releases.aspose.com/words/) staje się licencjonowany po prostu po dodaniu kilku linijek kodu w celu zastosowania licencji.

Wersja próbna Aspose.Words bez określonej licencji zapewnia pełną funkcjonalność produktu, ale podczas ładowania i zapisywania wstawia oceniający znak wodny na górze dokumentu oraz ogranicza maksymalny rozmiar dokumentu do kilkuset akapitów.

### Licencja tymczasowa

Jeśli chcesz przetestować Aspose.Words bez ograniczeń wersji próbnej, możesz również poprosić o 30-dniową licencję tymczasową. Więcej szczegółów znajdziesz na stronie [Zdobądź licencję tymczasową](https://purchase.aspose.com/temporary-license/).

## Zakupiona licencja

Po zakupie należy zastosować plik licencji lub dołączyć plik licencji jako osadzony zasób. W tej sekcji opisano opcje, w jaki sposób można to zrobić, a także komentarze dotyczące niektórych typowych pytań.

{{% alert color="primary" %}}

Musisz ustawić licencję:

* tylko raz na domenę aplikacji

* przed użyciem jakichkolwiek innych klas Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Informacje o cenach można znaleźć na stronie [Informacje o cenach](https://purchase.aspose.com/pricing/words/family/).

{{% /alert %}}

### Ochrona zakupionej licencji

Po zakupie licencji należy dokładnie zapoznać się z informacjami na stronie [Ochrona zakupionej licencji](https://purchase.aspose.com/orders/protecting-your-license-file) w celu zabezpieczenia pliku licencyjnego. Pamiętaj, że tę stronę można przeglądać tylko wtedy, gdy posiadasz płatną licencję.

### Opcje stosowania licencji

Licencje można stosować z różnych lokalizacji:

* Jawna ścieżka
* Folder zawierający plik `Aspose.Words.dll`
* Folder zawierający zestaw o nazwie `Aspose.Words.dll`
* Folder zawierający zestaw wpisów (twój `.exe`)
* Zasób osadzony w zestawie nazywa się `Aspose.Words.dll`
* Jako licencja licznikowa – nowy mechanizm licencjonowania

Kiedy w aplikacji odwołujesz się do `Aspose.Words.dll`, biblioteka jest kopiowana do katalogu wyjściowego (chyba że opcja *Kopiuj lokalnie* we właściwościach tego wpisu jest ustawiona na false). Często najłatwiejszym sposobem ustawienia licencji jest umieszczenie pliku licencji w tym samym folderze co `Aspose.Words.dll` i podanie samej nazwy pliku bez ścieżki.

{{% alert color="primary" %}}

Aby uzyskać licencję na komponent, użyj metody [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/#setlicense).

Wielokrotne wywoływanie **SetLicense** nie jest szkodliwe, po prostu marnuje czas procesora.

Wielokrotne wywoływanie [SetMeteredKey](https://reference.aspose.com/words/net/aspose.words/metered/setmeteredkey/) również nie jest szkodliwe, a jedynie marnuje czas procesora i może nieprawidłowo kumulować zużycie.

{{% /alert %}}

#### Zastosuj licencję przy użyciu pliku lub obiektu strumieniowego

Podczas tworzenia aplikacji wywołaj **SetLicense** w kodzie startowym przed użyciem klas Aspose.Words.

##### Załaduj licencję z pliku

Korzystając z metody [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/), możesz spróbować znaleźć plik licencji w osadzonych zasobach lub folderach zespołów w celu dalszego wykorzystania.

Poniższy przykład kodu pokazuje, jak zainicjować licencję z folderu:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### Załaduj licencję z obiektu strumienia

Poniższy przykład kodu pokazuje, jak zainicjować licencję ze strumienia przy użyciu innej metody [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### Dołącz plik licencji jako zasób osadzony

Dobrym sposobem na spakowanie licencji z aplikacją i upewnienie się, że nie zostanie utracona, jest dołączenie jej jako zasobu osadzonego w jednym z zestawów wywołujących Aspose.Words. Aby dołączyć plik jako osadzony zasób, wykonaj następujące kroki:

1. W Visual Studio dołącz plik .lic do projektu za pomocą menu "**Plik | Dodaj istniejący element…**".
2. Wybierz plik w Eksploratorze rozwiązań i ustaw "**Zbuduj akcję w oparciu o osadzone zasoby"** w oknie Właściwości.
3. W swoim kodzie wywołaj **SetLicense**, który przekazuje tylko krótką nazwę pliku zasobów.

#### Zastosuj licencję licznikową

Aspose.Words umożliwia programistom zastosowanie klucza mierzonego. To nowy mechanizm licencjonowania.

Nowy mechanizm licencjonowania będzie stosowany równolegle z dotychczasowym sposobem licencjonowania. Klienci, którzy chcą być rozliczani w oparciu o wykorzystanie funkcji API, mogą skorzystać z licencjonowania licznikowego.

Po wykonaniu wszystkich niezbędnych kroków w celu uzyskania tego typu licencji otrzymasz klucze, a nie plik licencji. Ten klucz mierzony można zastosować przy użyciu specjalnie wprowadzonej do tego celu klasy [Metered](https://reference.aspose.com/words/net/aspose.words/metered/).

Nie wywołuj często metody **SetMeteredKey**, aby ta metoda licencjonowania prawidłowo akumulowała zużycie i raportowała nam je. Po prostu utwórz instancję biblioteki Aspose.Words, wywołaj raz **SetMeteredKey**, a następnie pozostaw instancję biblioteki i użyj jej ponownie.

Poniższy przykład kodu pokazuje, jak ustawić ograniczone klucze publiczne i prywatne:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

Zwykle wystarczy jednorazowo zastosować licencję licznikową przy uruchomieniu aplikacji. Jeśli jednak mechanizm licencjonowania licznikowego nie skomunikuje się z serwerami Aspose przez 24 godziny, Aspose.Words wyjdzie z trybu licencjonowanego i przejdzie do trybu ewaluacyjnego. Aby uniknąć takiego przypadku, należy regularnie sprawdzać status licencji – jeśli Aspose.Words przejdzie w tryb ewaluacyjny, należy ponownie zastosować licencję licznikową.

{{% alert color="primary" %}}

Należy pamiętać, że do prawidłowego korzystania z licencji Metered wymagane jest stabilne połączenie internetowe, ponieważ mechanizm Metered wymaga stałej interakcji z naszymi usługami w celu poprawnych obliczeń. Więcej szczegółów znajdziesz w sekcji [Często zadawane pytania dotyczące licencjonowania licznikowego](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Zmiana nazwy pliku licencji

Nazwa pliku licencji nie musi brzmieć "Aspose.Words.LIC". Możesz zmienić jego nazwę według własnych upodobań i używać tej nazwy podczas ustawiania licencji w swojej aplikacji.

### Wyjątek "Nie można znaleźć nazwy pliku licencji"

Kiedy kupujesz i pobierasz licencję, witryna Aspose nazywa plik licencji *"Aspose.Words.LIC"*. Plik licencji pobierasz za pomocą przeglądarki. W takim przypadku niektóre przeglądarki rozpoznają plik licencji jako plik XML i dołączają do niego rozszerzenie .xml, dzięki czemu pełna nazwa pliku na komputerze będzie brzmieć *"Aspose.Words.lic.XML"*.

Gdy Microsoft Windows jest skonfigurowany tak, aby ukrywać rozszerzenia znanych typów plików (niestety jest to ustawienie domyślne w większości instalacji Windows), plik licencji będzie wyświetlany jako *"Aspose.Words. LIC"* w Eksploratorze Windows. Prawdopodobnie pomyślisz, że to jest prawdziwa nazwa pliku i wywołasz **SetLicense**, przekazując ją *"Aspose.Words.LIC"*, ale takiego pliku nie ma, stąd wyjątek.

Aby rozwiązać problem, zmień nazwę pliku, aby usunąć niewidoczne rozszerzenie .xml. Zalecamy również wyłączenie opcji "ukryj rozszerzenia" w Microsoft Windows.

## Korzystanie z wielu produktów Aspose

Jeśli używasz w swojej aplikacji wielu produktów Aspose, takich jak Aspose.Words i `Aspose.Cells`, oto kilka przydatnych wskazówek:

* Ustaw licencję dla każdego produktu Aspose osobno. Nawet jeśli masz pojedynczy plik licencji dla wszystkich komponentów, na przykład "Aspose.Total.lic", nadal musisz wywołać **SetLicense** osobno dla każdego produktu Aspose, którego używasz w swojej aplikacji.
* Użyj w pełni kwalifikowanej nazwy klasy licencji. Każdy produkt Aspose ma klasę **License** w swojej własnej przestrzeni nazw. Na przykład Aspose.Words ma klasę [Aspose.Words.License](https://reference.aspose.com/words/net/aspose.words/license/), a `Aspose.Cells` ma klasę `Aspose.Cells`.License. Użycie w pełni kwalifikowanej nazwy klasy pozwala uniknąć nieporozumień co do tego, która licencja dotyczy danego produktu.
