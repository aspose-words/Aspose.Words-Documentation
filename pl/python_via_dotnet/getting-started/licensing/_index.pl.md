---
title: Licencjonowanie i subskrypcja
second_title: Aspose.Words dla Python via .NET
articleTitle: Licencjonowanie i subskrypcja
linktitle: Licencjonowanie i subskrypcja
description: "Aspose.Words dla Python via .NET oferuje różne plany zakupu lub bezpłatną wersję próbną i 30-dniową licencję tymczasową do oceny zgodnie z zasadami licencjonowania i subskrypcji."
type: docs
weight: 40
url: /pl/python-net/licensing/
---

Czasami, aby lepiej przestudiować system, chcesz jak najszybciej zagłębić się w kod. Aby to ułatwić, Aspose.Words oferuje różne plany zakupu lub bezpłatną wersję próbną i 30-dniową licencję tymczasową do oceny.

{{% alert color="primary" %}}

Należy pamiętać, że istnieje szereg ogólnych zasad i praktyk, które pomogą Ci ocenić, właściwie licencjonować i zakupić nasze produkty. Znajdziesz je w sekcji [Zasady zakupów i często zadawane pytania](https://purchase.aspose.com/policies/).

{{% /alert %}}

## Bezpłatny okres próbny lub licencja tymczasowa

Aspose.Words to niesamowite oprogramowanie, które programiści mogą wypróbować przed zakupem.

### Bezpłatny okres próbny

Wersja testowa jest taka sama jak zakupiona – wersja próbna staje się licencjonowana po prostu po dodaniu kilku linijek kodu w celu zastosowania licencji.

Wersja próbna Aspose.Words bez określonej licencji zapewnia pełną funkcjonalność produktu, ale podczas ładowania i zapisywania wstawia oceniający znak wodny na górze dokumentu oraz ogranicza maksymalny rozmiar dokumentu do kilkuset akapitów.

### Licencja tymczasowa

Jeśli chcesz przetestować Aspose.Words bez ograniczeń wersji próbnej, możesz również poprosić o 30-dniową licencję tymczasową. Więcej szczegółów znajdziesz na stronie [Zdobądź licencję tymczasową](https://purchase.aspose.com/temporary-license/).

## Zakupiona licencja

Po zakupie musisz zastosować plik licencji lub strumień. W tej sekcji opisano opcje, w jaki sposób można to zrobić, a także komentarze dotyczące niektórych typowych pytań.

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
* Folder zawierający skrypt Pythona wywołujący Aspose.Words dla Python via .NET
* Strumień
* Jako licencja licznikowa – nowy mechanizm licencjonowania

{{% alert color="primary" %}}

Aby uzyskać licencję na komponent, użyj metody [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/).

Wielokrotne wywoływanie [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) nie jest szkodliwe, po prostu marnuje czas procesora.

Wielokrotne wywoływanie [set_metered_key](https://reference.aspose.com/words/python-net/aspose.words/metered/set_metered_key/#str_str) również nie jest szkodliwe, a jedynie marnuje czas procesora i może nieprawidłowo kumulować zużycie.

{{% /alert %}}

#### Zastosuj licencję przy użyciu pliku lub obiektu strumieniowego

Podczas tworzenia aplikacji wywołaj [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) w kodzie startowym przed użyciem klas Aspose.Words.

##### Załaduj licencję z pliku

Korzystając z metody [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/), możesz spróbować znaleźć plik licencji w osadzonych zasobach lub folderach zespołów w celu dalszego wykorzystania.

Poniższy przykład kodu pokazuje, jak zainicjować licencję z folderu:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-file.py" >}}

##### Załaduj licencję z obiektu `Stream`

Poniższy przykład kodu pokazuje, jak zainicjować licencję ze strumienia przy użyciu innej metody [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/):

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-stream.py" >}}

#### Zastosuj licencję licznikową

Aspose.Words umożliwia programistom zastosowanie klucza mierzonego. To nowy mechanizm licencjonowania.

Nowy mechanizm licencjonowania będzie stosowany równolegle z dotychczasowym sposobem licencjonowania. Klienci, którzy chcą być rozliczani w oparciu o wykorzystanie funkcji API, mogą skorzystać z licencjonowania licznikowego.

Po wykonaniu wszystkich niezbędnych kroków w celu uzyskania tego typu licencji otrzymasz klucze, a nie plik licencji. Ten klucz mierzony można zastosować przy użyciu specjalnie wprowadzonej do tego celu klasy [Metered](https://reference.aspose.com/words/python-net/aspose.words/metered/).

Nie wywołuj często metody **SetMeteredKey**, aby ta metoda licencjonowania prawidłowo akumulowała zużycie i raportowała nam je. Po prostu utwórz instancję biblioteki Aspose.Words, wywołaj raz **SetMeteredKey**, a następnie pozostaw instancję biblioteki i użyj jej ponownie.

Poniższy przykład kodu pokazuje, jak ustawić mierzone klucze publiczne i prywatne:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-metered-license.py" >}}

{{% alert color="primary" %}}

Należy pamiętać, że do prawidłowego korzystania z licencji Metered wymagane jest stabilne połączenie internetowe, ponieważ mechanizm Metered wymaga stałej interakcji z naszymi usługami w celu poprawnych obliczeń. Więcej szczegółów znajdziesz w sekcji [Często zadawane pytania dotyczące licencjonowania licznikowego](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Zmiana nazwy pliku licencji

Nazwa pliku licencji nie musi brzmieć "Aspose.Words.Python.NET.lic". Możesz zmienić jego nazwę według własnych upodobań i używać tej nazwy podczas ustawiania licencji w swojej aplikacji.

### Wyjątek "Nie można znaleźć nazwy pliku licencji"

Kiedy kupujesz i pobierasz licencję, witryna Aspose nazywa plik licencji *"Aspose.Words.Python.NET.lic"*. Plik licencji pobierasz za pomocą przeglądarki. W takim przypadku niektóre przeglądarki rozpoznają plik licencji jako plik XML i dołączają do niego rozszerzenie .xml, dzięki czemu pełna nazwa pliku na komputerze będzie brzmieć *"Aspose.Words.Python.NET.lic.XML"*.

Gdy Microsoft Windows jest skonfigurowany tak, aby ukrywać rozszerzenia znanych typów plików (niestety jest to ustawienie domyślne w większości instalacji Windows), plik licencji będzie wyświetlany jako *"Aspose.Words.Python.NET.lic"* w Eksploratorze Windows. Prawdopodobnie pomyślisz, że to jest prawdziwa nazwa pliku i wywołasz [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/), podając ją *"Aspose.Words.Python.NET.lic"*, ale nie ma takiego pliku, stąd wyjątek.

Aby rozwiązać problem, zmień nazwę pliku, aby usunąć niewidoczne rozszerzenie .xml. Zalecamy również wyłączenie opcji "ukryj rozszerzenia" w Microsoft Windows.

## Korzystanie z wielu produktów Aspose

Jeśli używasz w swojej aplikacji wielu produktów Aspose, takich jak Aspose.Words i `Aspose.Cells`, oto kilka przydatnych wskazówek:

* Ustaw licencję dla każdego produktu Aspose osobno. Nawet jeśli masz pojedynczy plik licencji dla wszystkich komponentów, na przykład "Aspose.Total.lic", nadal musisz wywołać [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) osobno dla każdego produktu Aspose, którego używasz w swojej aplikacji.
* Użyj w pełni kwalifikowanej nazwy klasy licencji. Każdy produkt Aspose ma klasę **License** w swojej własnej przestrzeni nazw. Na przykład Aspose.Words ma klasę [aspose.words.License](https://reference.aspose.com/words/python-net/aspose.words/license/), a `Aspose.Cells` ma klasę **aspose.cells.Licence**. Użycie w pełni kwalifikowanej nazwy klasy pozwala uniknąć nieporozumień co do tego, która licencja dotyczy danego produktu.
