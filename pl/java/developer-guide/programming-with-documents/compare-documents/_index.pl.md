---
title: Porównaj dokumenty w Java
second_title: Aspose.Words zamiast Java
articleTitle: Porównaj dokumenty
linktitle: Porównaj dokumenty
type: docs
description: "Porównaj dwa dokumenty w dowolnych obsługiwanych formatach i wyświetlaj zmiany treści. Możesz zastosować zaawansowane opcje podczas porównywania Java."
weight: 60
url: /pl/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Porównywanie dokumentów jest procesem, który identyfikuje zmiany pomiędzy dwoma dokumentami i zawiera zmiany jako zmiany. Proces ten porównuje dwa dokumenty, w tym wersje jednego konkretnego dokumentu, a zmiany pomiędzy dwoma dokumentami zostaną przedstawione jako poprawki w pierwszym dokumencie.

Metoda porównania jest osiągana przez porównanie słów na poziomie znaku lub na poziomie słowa. Jeśli słowo zawiera zmianę co najmniej jednego znaku, w wyniku, różnica będzie wyświetlana jako zmiana całego słowa, a nie znaku. Ten proces porównywania jest zwykłym zadaniem w branży prawno-finansowej.

Zamiast ręcznie szukać różnic między dokumentami lub pomiędzy ich wersjami, możesz użyć Aspose.Words do porównywania dokumentów i uzyskiwania zmian treści w formatowaniu, nagłówku / stopce, tabelach i innych.

Ten artykuł wyjaśnia jak porównywać dokumenty i jak określić zaawansowane właściwości porównujące.

{{% alert color="primary" %}}

**Spróbuj online**

Można porównać dwa dokumenty online za pomocą [Portowywanie dokumentacji online](https://products.aspose.app/words/comparison) narzędzie.

Należy zauważyć, że metoda porównania, opisana poniżej, jest stosowana w tym narzędziu w celu zapewnienia uzyskania równych wyników. Więc otrzymasz te same wyniki nawet za pomocą narzędzia do porównywania online lub za pomocą metody porównywania w Aspose.Words.

{{% /alert %}}

## Ograniczenia i obsługiwane formaty plików {#limitations-and-supported-file-formats}

Porównywanie dokumentów jest bardzo złożoną cechą. Istnieją różne części kombinacji treści, które należy przeanalizować, aby rozpoznać wszystkie różnice. Powodem tej złożoności jest to, że Aspose.Words ma na celu uzyskanie takich samych wyników porównania jak Microsoft Word algorytm porównawczy.

Ogólne ograniczenie porównywania dwóch dokumentów polega na tym, że nie mogą one mieć korekt przed wywołaniem metody porównania, ponieważ ograniczenie to istnieje w Microsoft Word.

{{% alert color="primary" %}}

Należy pamiętać, że można porównać dowolne dwa dokumenty w [Obslugiwane formaty dokumentów](/words/pl/java/supported-document-formats/). Zasadniczo, można porównać obiekty dokumentu, a nawet można utworzyć te obiekty od podstaw bez posiadania określonego formatu.

{{% /alert %}}

## Porównaj dwa dokumenty {#compare-two-documents}

Kiedy porównujesz dokumenty, różnice w tym ostatnim dokumencie od poprzedniego pojawiają się jako poprawki do pierwszego. Po zmianie dokumentu, każda edycja będzie miała własną wersję po uruchomieniu metody porównania.

Aspose.Words pozwala na identyfikację różnic w dokumentach za pomocą [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) metoda - to jest podobne do Microsoft Word funkcja porównywania dokumentów. Pozwala na sprawdzanie dokumentów lub wersji dokumentów, aby znaleźć różnice i zmiany, w tym formatowanie modyfikacji, takich jak zmiany czcionki, zmiany odstępów, dodanie słów i akapitów.

W wyniku porównania dokumenty można określić jako równe lub nie równe. Określenie "równe" oznacza, że metoda porównawcza nie może przedstawiać zmian jako korekt. Oznacza to, że zarówno tekst dokumentu, jak i formatowanie tekstu są takie same. Ale mogą być inne różnice między dokumentami. Na przykład: Microsoft Word obsługuje tylko poprawki formatowe dla stylów i nie możesz reprezentować wprowadzania / usuwania stylu. Więc dokumenty mogą mieć inny zestaw stylów, a **Compare** metoda nadal nie powoduje żadnych zmian.

Poniższy przykład kodu pokazuje, jak sprawdzić, czy dwa dokumenty są równe lub nie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

Poniższy przykład kodu pokazuje, jak po prostu stosować `Compare` metoda do dwóch dokumentów:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Określić zaawansowane opcje porównania {#specify-advanced-comparing-properties}

Istnieje wiele różnych właściwości [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) klasy, które można zastosować, gdy chcesz porównać dokumenty.

Na przykład: Aspose.Words pozwala ignorować zmiany dokonane podczas operacji porównawczej dla niektórych typów obiektów w oryginalnym dokumencie. Możesz wybrać odpowiednią właściwość dla typu obiektu, np. [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), i innych poprzez ustawienie ich na "true".

Ponadto, Aspose.Words zapewnia [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) właściwość, z którą można określić, czy śledzić zmiany według znaku lub słowa.

Inną wspólną właściwością jest wybór, w którym dokument pokazać zmiany porównania. Na przykład, "Porównywanie dialogu dokumentów" w Microsoft Word ma opcję "Pokaż zmiany w" - to również wpływa na wyniki porównania. Aspose.Words zapewnia [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) nieruchomości, które służą temu celowi.

Poniższy przykład kodu pokazuje jak ustawić zaawansowane właściwości porównujące:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
