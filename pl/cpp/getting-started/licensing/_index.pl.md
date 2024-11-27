---
title: Licencjonowanie i subskrypcja
second_title: Aspose.Words dla C++
articleTitle: Licencjonowanie i subskrypcja
linktitle: Licencjonowanie i subskrypcja
description: "Aspose.Words dla С++ zapewnia różne plany zakupu lub oferuje bezpłatną wersję próbną i 30-dniową tymczasową licencję do oceny przy użyciu zasad licencjonowania i subskrypcji."
type: docs
weight: 60
url: /pl/cpp/licensing/
timestamp: 2024-10-24-11-44-28
---

Czasami, aby lepiej przestudiować system, chcesz jak najszybciej zagłębić się w kod. Aby to ułatwić, Aspose.Words zapewnia różne plany zakupu lub oferuje bezpłatną wersję próbną i 30-dniową tymczasową licencję do oceny.

{{% alert color="primary" %}}

Należy pamiętać, że istnieje szereg ogólnych zasad i praktyk, które pomogą Ci ocenić, prawidłowo licencjonować i kupować nasze produkty. Można je znaleźć w [Zasady zakupu i FAQ](https://purchase.aspose.com/policies/) sekcji.

{{% /alert %}}

## Bezpłatna wersja próbna lub Licencja tymczasowa

Aspose.Words to niesamowite oprogramowanie, które programiści mogą wypróbować przed zakupem.

### Bezpłatna Wersja Próbna

Wersja ewaluacyjna jest taka sama jak zakupiona – [Wersja próbna](https://releases.aspose.com/words/) po prostu staje się licencjonowany, gdy dodasz kilka wierszy kodu, aby zastosować licencję.

Wersja próbna Aspose.Words bez określonej licencji zapewnia pełną funkcjonalność produktu, ale wstawia oceniający znak wodny u góry dokumentu po załadowaniu i zapisaniu oraz ogranicza maksymalny rozmiar dokumentu do kilkuset akapitów.

### Licencja Tymczasowa

Jeśli chcesz przetestować Aspose.Words bez ograniczeń wersji próbnej, możesz również poprosić o 30-dniową licencję tymczasową. Aby uzyskać więcej informacji, zobacz [Uzyskaj tymczasową licencję](https://purchase.aspose.com/temporary-license/) page.

## Zakupiona Licencja

Po zakupie należy zastosować plik licencji lub dołączyć plik licencji jako zasób osadzony. W tej sekcji opisano opcje, w jaki sposób można to zrobić, a także komentarze do niektórych typowych pytań.

{{% alert color="primary" %}}

Musisz ustawić licencję:

* tylko raz na domenę aplikacji
* przed użyciem jakichkolwiek innych klas Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Informacje o cenach można znaleźć na [Informacje O Cenach](https://purchase.aspose.com/pricing/words/family/) page.

{{% /alert %}}

### Ochrona Zakupionej Licencji

Po zakupie licencji należy uważnie przeczytać informacje na stronie [Ochrona Zakupionej Licencji](https://purchase.aspose.com/orders/protecting-your-license-file) aby chronić plik licencji. Pamiętaj, że ta strona jest dostępna do przeglądania tylko wtedy, gdy masz płatną licencję.

### Opcje Stosowania Licencji

Licencje mogą być stosowane z różnych lokalizacji:

* Jawna ścieżka
* Folder zawierający plik `Aspose.Words_\*.dll`
* Folder zawierający zespół, który wywołał `Aspose.Words_\*.dll`
* Folder zawierający zestaw wpisów (Twój `.exe`)
* Zasób osadzony w zestawie nazywa się `Aspose.Words_\*.dll`

Często najłatwiejszym sposobem ustawienia licencji jest umieszczenie pliku licencji w tym samym folderze co `Aspose.Words_\*.dll` i określenie tylko nazwy pliku bez ścieżki.

{{% alert color="primary" %}}

Użyj metody [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/), aby uzyskać licencję na komponent.

Wielokrotne wywoływanie **SetLicense** nie jest szkodliwe, po prostu marnuje czas procesora.

{{% /alert %}}

#### Zastosuj licencję przy użyciu pliku lub obiektu strumienia

Podczas tworzenia aplikacji wywołaj **SetLicense** w kodzie startowym przed użyciem klas Aspose.Words.

##### Załaduj licencję z pliku

Korzystając z metody [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/), Możesz spróbować znaleźć plik licencji w folderach embedded resources lub assembly do dalszego wykorzystania.

Poniższy przykład kodu pokazuje, jak zainicjować licencję z folderu:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Załaduj licencję z obiektu Stream

Poniższy przykład kodu pokazuje, jak zainicjować licencję ze strumienia przy użyciu innej metody [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Dołącz plik licencji jako zasób osadzony

Zgrabnym sposobem na spakowanie licencji do aplikacji i upewnienie się, że nie zostanie ona utracona, jest włączenie jej jako zasobu wbudowanego. Sposób osadzania i wykorzystywania zasobów zależy od platformy docelowej.

##### Windows

Załóżmy, że dodałeś licencję jako zasób, jak pokazano poniżej.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

Możesz przeczytać o tym, jak pracować z plikami zasobów na [Praca z plikami zasobów](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) page.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zainicjować licencję z osadzonego zasobu przy użyciu metody [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Istnieje podobny sposób osadzania zasobów na Linux w pliku wykonywalnym.

{{% alert color="primary" %}}

Aby uzyskać więcej informacji, zobacz [Osadzanie zasobów w pliku wykonywalnym za pomocą GCC](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

Poniższy przykład kodu kodu pokazuje, jak zainicjować licencję z osadzonego zasobu przy użyciu metody [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### Zmiana nazwy pliku licencji

Nazwa pliku licencji nie musi być "Aspose.Words.LIC". Możesz zmienić jego nazwę według własnych upodobań i używać tej nazwy podczas ustawiania licencji w aplikacji.

### Wyjątek "nie można znaleźć nazwy pliku licencji"

Przy zakupie i pobieraniu licencji witryna Aspose nazywa plik licencji *"Aspose.Words.LIC"*. Plik licencji pobierasz za pomocą przeglądarki. W takim przypadku niektóre przeglądarki rozpoznają plik licencji jako XML i dołączają plik .rozszerzenie xml do niego, więc pełna nazwa pliku na komputerze staje się *"Aspose.Words.lic.XML"*.

Gdy Microsoft Windows jest skonfigurowany do ukrywania rozszerzeń dla znanych typów plików (niestety jest to domyślne w większości instalacji Windows), plik licencji pojawi się jako *"Aspose.Words. LIC"* w Windows Explorer. Prawdopodobnie pomyślisz, że jest to prawdziwa nazwa pliku i wywołaj **SetLicense** przekazując go *"Aspose.Words.LIC"*, ale nie ma takiego pliku, stąd wyjątek.

Aby rozwiązać problem, Zmień nazwę pliku, aby usunąć niewidoczne .rozszerzenie xml. Zalecamy również wyłączenie opcji "Ukryj rozszerzenia" w Microsoft Windows.

## Korzystanie Z Wielu Produktów Aspose

Jeśli używasz wielu produktów Aspose w swojej aplikacji, takich jak Aspose.Words i `Aspose.Cells`, oto kilka przydatnych wskazówek:

* Ustaw licencję dla każdego Produktu Aspose osobno. Nawet jeśli masz pojedynczy plik licencji dla wszystkich komponentów, na przykład "Aspose.Total.lic", nadal musisz wywołać **SetLicense** osobno dla każdego Produktu Aspose używanego w aplikacji.
* Użyj w pełni kwalifikowanej nazwy klasy licencji. Każdy produkt Aspose ma klasę **License** we własnej przestrzeni nazw. Na przykład Aspose.Words mA [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) i `Aspose.Cells` mA `Aspose.Cells`.Klasa licencji. Używanie w pełni kwalifikowanej nazwy klasy pozwala uniknąć nieporozumień co do tego, która licencja dotyczy danego produktu.
