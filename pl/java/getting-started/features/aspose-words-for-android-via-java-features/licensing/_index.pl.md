---
title: Licencjonowanie
second_title: Aspose.Words zamiast Java
articleTitle: Licencjonowanie
linktitle: Licencjonowanie
description: "Licencjonowanie Aspose.Words zamiast Android przez Java."
type: docs
weight: 60
url: /pl/java/licensing-android/
---

Czasami, aby lepiej zbadać system, chcesz zanurzyć się w kodzie jak najszybciej. Żeby to ułatwić, Aspose.Words oferuje różne plany zakupu lub oferuje Bezpłatne Próbne i 30-dniowa Tymczasowa Licencja do oceny.

{{% alert color="primary" %}}

Zauważ, że istnieje wiele ogólnych zasad i praktyk, które prowadzą do tego, jak ocenić, prawidłowo licencjonować i kupić nasze produkty. Można je znaleźć w [Polityka zakupu i FAQ](https://purchase.aspose.com/policies/) sekcja.

{{% /alert %}}

## Bezpłatna próbna lub tymczasowa licencja

Aspose.Words jest niesamowite oprogramowanie, które deweloperzy mogą spróbować przed zakupem. Można łatwo pobrać / zainstalować Aspose.Words zamiast Java oraz Aspose.Words zamiast Android przez Java [ze strony bierania](https://releases.aspose.com/words/androidjava/) do oceny.

Wersja ewaluacyjna jest taka sama jak ta zakupiona - wersja próbna po prostu staje się licencjonowana po dodaniu kilku linii kodu do zastosowania licencji.

{{% alert color="primary" %}}

Więcej informacji na temat bezpłatnej lub tymczasowej licencji dla Aspose.Words zamiast Android przez Java dnia [Licencjonowanie i subskrypcja](/words/pl/java/licensing/).

{{% /alert %}}

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

Po zakupie licencji, należy uważnie przeczytać informacje na stronie [Ochrona licencjjjji zakopionej](https://purchase.aspose.com/orders/protecting-your-license-file) do ochrony akt licencji. Należy pamiętać, że ta strona jest dostępna do oglądania tylko jeśli masz licencję płatną.

### Opcje korzystania z licencji

Licencje mogą być stosowane z różnych miejsc:

* Explicit path
* Zasoby wbudowane
* Jako licencja Metered - nowy mechanizm licencjonowania

#### Wczytywanie pliku licencji

W Aspose.Words zamiast Android przez Java, licencja może być [Licencjonowanie i subskrypcja](/words/pl/java/licensing/), lub załadowany ze strumienia:

1. Umieść plik licencji w dowolnym miejscu na **/ mnt / sdcard /**.
1. Utwórz strumień, który odsyła do pliku.
1. Podaj strumień (zawierający plik licencji) do `SetLicense` Metoda.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Korzystanie z licencji z zasobów wbudowanych. Aby uzyskać dostęp do licencji jako zasobu po nazwie z Android plik pakietu:

1. Dodaj plik licencji jako zasób do aplikacji **res / raw** folder.
   Plik licencji powinien być widoczny w **res / raw** folder.
1. Dostęp / załadunek licencji z zasobu z poniższą próbką kodu.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Zastosuj licencję na pomiar

Aspose.Words umożliwia deweloperom stosowanie klucza pomiarowego. Jest to nowy mechanizm licencjonowania. Nowy mechanizm licencjonowania będzie stosowany wraz z istniejącą metodą licencjonowania. Klienci, którzy chcą być rozliczani w oparciu o wykorzystanie API funkcje mogą korzystać z licencji miarowej.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Zmiana nazwy pliku licencji

Nazwa pliku licencji nie musi być "Aspose.Words.Android.Java.lic ". Możesz zmienić nazwę na cokolwiek chcesz i używać tej nazwy podczas wywoływania `License.SetLicense`.

### Wyjątek - Nie można znaleźć nazwy pliku licencji

Po pobraniu licencji, którą kupiłeś, plik licencyjny jest nazwany **Aspose.Words.Android.Java.lic** domyślnie. Plik licencyjny jest pobierany przez przeglądarkę, a niektóre przeglądarki uznają plik licencyjny za XML i dołączają rozszerzenie .xml do nazwy. Pobierany plik staje się **Aspose.Words.Android.Java.lic.XML**.

Kiedy Microsoft Windows jest skonfigurowany, aby ukryć rozszerzenia znanych typów plików (niestety jest to domyślne w większości Windows Instalacje), plik licencyjny jest wymieniony jako **Aspose.Words.Android.Java.lic** w Windows Explorer. Wygląda na oczekiwaną nazwę pliku. Jeśli zadzwonisz `License.SetLicense` i przejść "Aspose.Words.Android.Java.lic ', zobaczysz i wyjątek, ponieważ nie ma takich plików

Aby rozwiązać problem, należy zmienić nazwę pliku, aby usunąć niewidoczne rozszerzenie .xml. Zalecamy wyłączenie opcji "ukryj rozszerzenia" w Microsoft Windows.

## Korzystanie z wielu pozycji produktów

Jeśli używasz kilku produktów w aplikacji, na przykład Aspose.Words oraz `Aspose.Cells`, Oto kilka przydatnych wskazówek.

- Ustaw licencję na każdy produkt pozycji oddzielnie.
  Nawet jeśli masz jeden plik licencyjny dla wszystkich komponentów, na przykład 'Ustaw. Całkowicie.Android.Java. lic ', nadal trzeba zadzwonić do `License.SetLicense` metoda oddzielnie dla każdego produktu pozycji.
- Użyj w pełni wykwalifikowanej nazwy klasy licencji.
  Każdy Podać produkt ma `License` klasa w swojej przestrzeni nazw. Na przykład: Aspose.Words ma com.aspose.words. Licencja i `Aspose.Cells` ma com.aspose.cells. Zajęcia licencyjne. Korzystanie z nazwy klasy z pełnymi kwalifikacjami pozwala na uniknięcie pomyłek co do tego, do którego produktu ma zastosowanie licencja.
