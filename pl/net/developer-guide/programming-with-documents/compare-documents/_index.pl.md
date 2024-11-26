---
title: Porównaj dokumenty w C#
second_title: Aspose.Words dla .NET
articleTitle: Porównaj dokumenty
linktitle: Porównaj dokumenty
description: "Porównaj dwa dokumenty w dowolnych obsługiwanych formatach i pokaż zmiany treści za pomocą C#. Podczas porównywania możesz zastosować opcje zaawansowane."
type: docs
weight: 60
url: /pl/net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Porównywanie dokumentów to proces, który identyfikuje zmiany między dwoma dokumentami i traktuje zmiany jako poprawki. W procesie tym porównywane są dowolne dwa dokumenty, w tym wersje jednego konkretnego dokumentu, a następnie zmiany między obydwoma dokumentami zostaną pokazane jako poprawki w pierwszym dokumencie.

Metodę porównania osiąga się poprzez porównywanie słów na poziomie znaku lub na poziomie słowa. Jeśli słowo zawiera zmianę przynajmniej jednego znaku, w rezultacie różnica zostanie wyświetlona jako zmiana całego słowa, a nie znaku. Ten proces porównywania jest typowym zadaniem w branży prawniczej i finansowej.

Zamiast ręcznie wyszukiwać różnice między dokumentami lub między ich różnymi wersjami, możesz użyć Aspose.Words do porównywania dokumentów i uzyskiwania zmian w treści w formatowaniu, nagłówku/stopce, tabelach i nie tylko.

W tym artykule wyjaśniono, jak porównywać dokumenty i jak określać zaawansowane właściwości porównywania.

{{% alert color="primary" %}}

**Spróbuj online**

Możesz porównać dwa dokumenty online, korzystając z narzędzia [Porównanie dokumentów online](https://products.aspose.app/words/comparison).

Należy pamiętać, że w tym narzędziu zastosowano metodę porównania opisaną poniżej, aby zapewnić uzyskanie jednakowych wyników. Dzięki temu takie same wyniki uzyskasz nawet korzystając z porównywarki online lub metody porównawczej w Aspose.Words.

{{% /alert %}}

## Ograniczenia i obsługiwane formaty plików {#limitations-and-supported-file-formats}

Porównywanie dokumentów to bardzo złożona funkcja. Istnieją różne części kombinacji treści, które należy przeanalizować, aby rozpoznać wszystkie różnice. Powodem tej złożoności jest fakt, że Aspose.Words ma na celu uzyskanie takich samych wyników porównania, jak algorytm porównania Microsoft Word.

Ogólne ograniczenie dotyczące dwóch porównywanych dokumentów polega na tym, że przed wywołaniem metody porównywania nie można w nich wprowadzać poprawek, ponieważ takie ograniczenie istnieje w Microsoft Word.

{{% alert color="primary" %}}

Pamiętaj, że w [Obsługiwane formaty dokumentów](/words/pl/net/supported-document-formats/) możesz porównać dowolne dwa dokumenty. Zasadniczo możesz porównywać obiekty dokumentów, a nawet tworzyć te obiekty od podstaw, bez określonego formatu.

{{% /alert %}}

## Porównaj dwa dokumenty {#compare-two-documents}

Kiedy porównujesz dokumenty, różnice między drugim dokumentem a pierwszym ukazują się jako poprawki do pierwszego. Kiedy modyfikujesz dokument, każda edycja będzie miała własną wersję po uruchomieniu metody porównania.

Aspose.Words umożliwia identyfikację różnic w dokumentach za pomocą metody [Compare](https://reference.aspose.com/words/net/aspose.words/document/compare/#compare/) – jest to podobne do funkcji porównywania dokumentów Microsoft Word. Umożliwia sprawdzanie dokumentów lub wersji dokumentów pod kątem różnic i zmian, w tym modyfikacji formatowania, takich jak zmiany czcionki, zmiany odstępów, dodanie słów i akapitów.

W wyniku porównania dokumenty można określić jako równe lub nierówne. Termin "równe" dokumenty oznacza, że metoda porównawcza nie jest w stanie przedstawić zmian jako poprawek. Oznacza to, że zarówno tekst dokumentu, jak i formatowanie tekstu są takie same. Pomiędzy dokumentami mogą jednak występować inne różnice. Na przykład Microsoft Word obsługuje tylko wersje formatu stylów i nie można reprezentować wstawiania/usuwania stylu. Dlatego dokumenty mogą mieć inny zestaw stylów, a metoda **Compare** nadal nie generuje żadnych poprawek.

Poniższy przykład kodu pokazuje, jak sprawdzić, czy dwa dokumenty są równe, czy nie:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

Poniższy przykład kodu pokazuje, jak po prostu zastosować metodę `Compare` do dwóch dokumentów:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## Określ zaawansowane opcje porównania {#specify-advanced-comparing-properties}

Istnieje wiele różnych właściwości klasy [CompareOptions](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/), które można zastosować, gdy chcesz porównać dokumenty.

Na przykład Aspose.Words pozwala zignorować zmiany wprowadzone podczas operacji porównywania dla niektórych typów obiektów w oryginalnym dokumencie. Możesz wybrać odpowiednią właściwość dla typu obiektu, taką jak [IgnoreHeadersAndFooters](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignorecomments/) i inne, ustawiając je na "true".

Dodatkowo Aspose.Words udostępnia właściwość [Granularity](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/granularity/), za pomocą której można określić, czy zmiany mają być śledzone po znaku, czy po słowie.

Inną wspólną właściwością jest wybór, w którym dokumencie mają być pokazane zmiany porównawcze. Przykładowo w oknie dialogowym "Porównaj dokumenty" w Microsoft Word dostępna jest opcja "Pokaż zmiany w" – ma to również wpływ na wyniki porównania. Aspose.Words udostępnia właściwość [Target](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/target/), która służy temu celowi.

Poniższy przykład kodu pokazuje, jak ustawić zaawansowane właściwości porównywania:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
