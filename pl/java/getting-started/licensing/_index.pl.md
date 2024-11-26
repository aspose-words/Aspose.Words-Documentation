---
title: Licencjonowanie i subskrypcja
second_title: Aspose.Words zamiast Java
articleTitle: Licencjonowanie i subskrypcja
linktitle: Licencjonowanie i subskrypcja
description: "Aspose.Words zamiast Java zapewnia różne plany zakupu lub oferuje Bezpłatne Próbne i 30-dniowa Tymczasowa Licencja do oceny przy użyciu licencjonowania i subskrypcji polityki."
type: docs
weight: 60
url: /pl/java/licensing/
timestamp: 2024-01-31-14-23-37
---

Czasami, aby lepiej zbadać system, chcesz zanurzyć się w kodzie jak najszybciej. Żeby to ułatwić, Aspose.Words oferuje różne plany zakupu lub oferuje Bezpłatne Próbne i 30-dniowa Tymczasowa Licencja do oceny.

{{% alert color="primary" %}}

Zauważ, że istnieje wiele ogólnych zasad i praktyk, które prowadzą do tego, jak ocenić, prawidłowo licencjonować i kupić nasze produkty. Można je znaleźć w [Polityka zakupu i FAQ](https://purchase.aspose.com/policies/) sekcja.

{{% /alert %}}

## Bezpłatna próbna lub tymczasowa licencja

Aspose.Words jest niesamowite oprogramowanie, które deweloperzy mogą spróbować przed zakupem. Można łatwo pobrać / zainstalować Aspose.Words zamiast Java oraz Aspose.Words zamiast Android przez Java [do Maven](https://releases.aspose.com/words/java/) do oceny.

### Bezpłatne próby

Wersja ewaluacyjna jest taka sama jak ta zakupiona - wersja próbna po prostu staje się licencjonowana po dodaniu kilku linii kodu do zastosowania licencji.

Wersja próbna Aspose.Words zamiast Java oraz Aspose.Words zamiast Android przez Java bez określonej licencji zapewnia pełną funkcjonalność produktu, ale umieszcza oceniający znak wodny na górze dokumentu przy załadunku i zapisywaniu i ogranicza maksymalny rozmiar dokumentu do kilkuset akapitów.

### Tymczasowa licencja

Jeśli chcesz przetestować Aspose.Words zamiast Java oraz Aspose.Words zamiast Android przez Java bez ograniczeń wersji Trial, można również poprosić o 30-dniową tymczasową licencję. Więcej szczegółów na stronie internetowej: [Zgodnie z tą licencją](https://purchase.aspose.com/temporary-license/) strona.

## Zakupiona licencja

Po zakupie należy zastosować plik licencji lub dołączyć plik licencji jako wbudowany zasób. W niniejszej sekcji opisano opcje, w jaki sposób można to zrobić, a także uwagi dotyczące niektórych wspólnych pytań.

{{% alert color="primary" %}}

Licencja jest prostym tekstowym plikiem XML, który zawiera szczegóły takie jak nazwa produktu, liczba deweloperów licencjonowanych, data wygaśnięcia subskrypcji i tak dalej.

Plik jest cyfrowo podpisany, więc nie modyfikuj pliku. Nawet nieumyślne dodanie dodatkowej linii do pliku unieważni go.

{{% /alert %}}

{{% alert color="primary" %}}

Musisz ustawić licencję:

* tylko raz na domenę aplikacji
* przed użyciem jakichkolwiek innych Aspose.Words klasy

{{% /alert %}}

{{% alert color="primary" %}}

Informacje o cenach można znaleźć na stronie internetowej: [Informacje o cenach](https://purchase.aspose.com/pricing/words/family/) strona.

{{% /alert %}}

### Ochrona licencji zakupionej

Po zakupie licencji, należy uważnie przeczytać informacje na stronie [Ochrona licencjjjjjji zakopionej](https://purchase.aspose.com/orders/protecting-your-license-file) do ochrony akt licencji. Należy pamiętać, że ta strona jest dostępna do oglądania tylko jeśli masz licencję płatną.

### Opcje korzystania z licencji

Licencje mogą być stosowane z różnych miejsc:

* Explicit path
* Folder zawierający *Aspose.Words JAR* plik
* Wbudowany zasób JAR jest nazywany *Aspose.Words JAR*
* Jako licencja Metered - nowy mechanizm licencjonowania

Często najprostszym sposobem ustawienia licencji jest umieszczenie pliku licencji w tym samym folderze co *Aspose.Words JAR* i określić tylko nazwę pliku bez ścieżki.

{{% alert color="primary" %}}

Użyj [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) metoda licencjonowania komponentu.

Wywołanie **SetLicense** Wiele razy nie jest szkodliwe, tylko marnuje czas przetwarzania.

Wywołanie [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) Wiele razy nie jest szkodliwe, ale tylko marnuje czas procesora i może gromadzić zużycie nieprawidłowo.

{{% /alert %}}

#### Zastosuj licencję używając pliku lub obiektu strumieniowego

{{% alert color="primary" %}}

Call **SetLicense** w kodzie startowym przed użyciem Aspose.Words zajęcia.

{{% /alert %}}

Podczas tworzenia biblioteki klasy, można zadzwonić **SetLicense** od statycznego konstruktora swojej klasy, który wykorzystuje Aspose.Words. Konstruktor statyczny zostanie wykonany przed zahamowaniem swojej klasy, aby upewnić się, że Aspose.Words licencja jest poprawnie zainstalowana.

##### Wczytaj licencję z pliku

Korzystanie z [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String) metoda, można spróbować znaleźć plik licencji w wbudowanych zasobach lub folderze, które zawierają JARdo dalszego stosowania.

Poniższy przykład kodu pokazuje jak zainicjować licencję z folderu:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Wczytaj licencję `Stream` Obiekt

Poniższy przykład kodu pokazuje jak inicjalizować licencję ze strumienia przy użyciu innego [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) Metoda:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Włączenie pliku licencji jako zasobu wbudowanego

Czystym sposobem na spakowanie licencji z aplikacją i upewnienie się, że nie zostanie utracona jest włączenie jej jako wbudowanego zasobu. Możesz po prostu skopiować plik LIC do folderu zasobów projektu.

Odbudowa projektu powinna osadzić plik .lic w pliku aplikacji .jar. Następnie możesz ubiegać się o licencję używając następującego kodu:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Zastosuj licencję na pomiar

Aspose.Words umożliwia deweloperom stosowanie klucza pomiarowego. To nowy mechanizm licencjonowania.

Nowy mechanizm licencjonowania będzie stosowany wraz z istniejącą metodą licencjonowania. Klienci, którzy chcą być rozliczani w oparciu o wykorzystanie API funkcje mogą korzystać z Metered Licensing.

Po zakończeniu wszystkich niezbędnych kroków, aby uzyskać tego typu licencji, otrzymasz klucze, a nie plik licencji. Ten klucz pomiarowy może być stosowany za pomocą [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) klasa specjalnie wprowadzona w tym celu.

Nie wzywaj **SetMeteredKey** metoda często tak, aby ta metoda licencjonowania właściwie gromadziła konsumpcję i raportowała nam ją. Tylko zaimprowizuj Aspose.Words biblioteka, telefon **SetMeteredKey** raz, a następnie pozostawić biblioteki zaimprowizowane i ponownie go.

Poniższy przykład kodu pokazuje jak ustawić mierzone klucze publiczne i prywatne:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Należy pamiętać, że musisz mieć stabilne połączenie internetowe dla prawidłowego korzystania z licencji Metered, ponieważ mechanizm Metered wymaga stałej interakcji z naszymi usługami do prawidłowych obliczeń

Aby uzyskać więcej informacji, zobacz [FAQ z pomiarami licencji](https://purchase.aspose.com/faqs/licensing/metered/) sekcja.

{{% /alert %}}

### Zmiana nazwy pliku licencji

Nazwa pliku licencji nie musi być "Aspose.WordsLic ". Możesz zmienić nazwę na swoje ulubione i używać tej nazwy przy ustawianiu licencji w aplikacji.

### ""Nie można znaleźć nazwy pliku licencji" Wyjątek

Po zakupie i pobraniu licencji, strona pozywa nazwę pliku licencji * "Aspose.Words.LIC *. Pobierasz plik licencji używając przeglądarki. W tym przypadku, niektóre przeglądarki uznają plik licencji jako XML i dołączyć do niego rozszerzenie .xml, więc pełna nazwa pliku na komputerze staje się * "Aspose.Words.lic.XML "*.

Kiedy Microsoft Windows jest skonfigurowany do ukrywania rozszerzeń dla znanych typów plików (niestety jest to domyślne w większości Windows Instalacje), plik licencji pojawi się jako * "Aspose.Words. LIC "* in Windows Explorer. Prawdopodobnie pomyślisz, że to jest prawdziwa nazwa pliku i zadzwoń **SetLicense** Mija * "Aspose.Words.LIC "*, ale nie ma takiego pliku, stąd wyjątek.

Aby rozwiązać problem, należy zmienić nazwę pliku, aby usunąć niewidoczne rozszerzenie .xml. Zalecamy również wyłączenie opcji "ukryj rozszerzenia" w Microsoft Windows.

## Korzystanie z wielu pozycji produktów

W przypadku zastosowania wielu produktów w aplikacji, takich jak Aspose.Words oraz `Aspose.Cells`, Oto kilka przydatnych wskazówek:

* Ustaw licencję dla każdego produktu pozycji oddzielnie. Nawet jeśli masz jeden plik licencyjny dla wszystkich składników, na przykład, "Aspose.Total.lic", nadal musisz zadzwonić **SetLicense** dla każdego produktu, którego używasz w aplikacji.
* Użyj w pełni kwalifikowanej nazwy klasy licencji. Każdy Podać produkt ma `License` klasa we własnej przestrzeni nazw. Na przykład: Aspose.Words ma **com.aspose.words.License** oraz `Aspose.Cells` ma com.aspose.cells. Zajęcia licencyjne. Korzystanie z w pełni wykwalifikowanej nazwy klasy pozwala uniknąć pomyłki co do tego, która licencja ma zastosowanie do tego produktu.
