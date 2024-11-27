---
title: Porównaj dokumenty w C++
second_title: Aspose.Words dla C++
articleTitle: Porównaj Dokumenty
linktitle: Porównaj Dokumenty
type: docs
description: "Porównaj dwa dokumenty w dowolnych obsługiwanych formatach i pokazuje zmiany treści za pomocą C++. Możesz zastosować opcje zaawansowane podczas porównywania."
weight: 60
url: /pl/cpp/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Porównywanie dokumentów to proces, który identyfikuje zmiany między dwoma dokumentami i zawiera zmiany jako poprawki. Ten proces porównuje dowolne dwa dokumenty, w tym wersje jednego konkretnego dokumentu, a zmiany między obydwoma dokumentami zostaną pokazane jako poprawki w pierwszym dokumencie.

Metodę porównania uzyskuje się poprzez porównanie słów na poziomie znaków lub na poziomie słów. Jeśli słowo zawiera zmianę co najmniej jednego znaku, w wyniku różnica zostanie wyświetlona jako zmiana całego słowa, a nie znaku. Ten proces porównywania jest zwykłym zadaniem w branży prawnej i finansowej.

Zamiast ręcznego wyszukiwania różnic między dokumentami lub między różnymi ich wersjami, możesz użyć Aspose.Words do porównywania dokumentów i uzyskiwania zmian treści w formatowaniu, nagłówku/stopce, tabelach i innych.

W tym artykule wyjaśniono, jak porównywać dokumenty i jak określić zaawansowane właściwości porównywania.

{{% alert color="primary" %}}

**Spróbuj online**

Możesz porównać dwa dokumenty online, korzystając z [Porównanie dokumentów online](https://products.aspose.app/words/comparison) narzędzie.

Zauważ, że metoda porównania, opisana poniżej, jest używana w tym narzędziu, aby zapewnić uzyskanie równych wyników. Dzięki temu uzyskasz te same wyniki nawet za pomocą narzędzia do porównywania online lub metody porównywania w Aspose.Words.

{{% /alert %}}

## Ograniczenia i Obsługiwane formaty plików {#limitations-and-supported-file-formats}

Porównywanie dokumentów to bardzo złożona funkcja. Istnieją różne części kombinacji treści, które należy przeanalizować, aby rozpoznać wszystkie różnice. Przyczyną tej złożoności jest fakt, że Aspose.Words ma na celu uzyskanie takich samych wyników porównania, jak algorytm porównania Microsoft Word.

Ogólne ograniczenie dla dwóch porównywanych dokumentów polega na tym, że nie mogą one mieć poprawek przed wywołaniem metody porównania, ponieważ to ograniczenie istnieje w Microsoft Word.

{{% alert color="primary" %}}

Pamiętaj, że możesz porównać dowolne dwa dokumenty w ramach [obsługiwane formaty plików](/words/cpp/supported-document-formats/). Możesz porównywać obiekty dokumentu, a nawet tworzyć te obiekty od zera bez żadnego określonego formatu.

{{% /alert %}}

## Porównaj Dwa Dokumenty {#compare-two-documents}

Kiedy porównujesz dokumenty, różnice między tym drugim dokumentem a pierwszym pojawiają się jako poprawki do pierwszego. Po zmodyfikowaniu dokumentu każda edycja będzie miała własną wersję po uruchomieniu metody porównywania.

Aspose.Words umożliwia identyfikację różnic dokumentów za pomocą metody [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/) – jest to podobne do funkcji porównywania dokumentów Microsoft Word. Umożliwia sprawdzanie dokumentów lub wersji dokumentów w celu znalezienia różnic i zmian, w tym modyfikacji formatowania, takich jak zmiany czcionek, zmiany odstępów, dodawanie słów i akapitów.

W wyniku porównania dokumenty można określić jako równe lub nie równe. Termin "równe" dokumenty oznacza, że metoda porównania nie jest w stanie przedstawić zmian jako poprawek. Oznacza to, że zarówno tekst dokumentu, jak i formatowanie tekstu są takie same. Ale mogą istnieć inne różnice między dokumentami. Na przykład Microsoft Word obsługuje tylko wersje formatu stylów i nie można reprezentować wstawiania/usuwania stylu. Tak więc dokumenty mogą mieć inny zestaw stylów, a metoda **Compare** nadal nie generuje żadnych poprawek.

Poniższy przykład kodu pokazuje, jak sprawdzić, czy dwa dokumenty są równe, czy nie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

Poniższy przykład kodu pokazuje, jak po prostu zastosować metodę `Compare` do dwóch dokumentów:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## Określ Zaawansowane Opcje Porównania {#specify-advanced-comparing-properties}

Istnieje wiele różnych właściwości klasy [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/), które można zastosować, gdy chcesz porównać dokumenty.

Na przykład Aspose.Words pozwala zignorować zmiany wprowadzone podczas operacji porównania dla niektórych typów obiektów w oryginalnym dokumencie. Możesz wybrać odpowiednią właściwość dla typu obiektu, na przykład [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), i innych, ustawiając je na "prawdziwe".

Ponadto Aspose.Words zapewnia Właściwość [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/), za pomocą której można określić, czy śledzić zmiany według znaku, czy słowa.

Inną wspólną właściwością jest wybór, w którym dokumencie pokazać zmiany porównania. Na przykład okno dialogowe " Porównaj dokumenty "w Microsoft Word ma opcję" Pokaż zmiany w " – wpływa to również na wyniki porównania. Aspose.Words zapewnia Właściwość [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/), która służy temu celowi.

Poniższy przykład kodu pokazuje, jak ustawić zaawansowane właściwości porównywania:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
