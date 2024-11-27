---
title: Podziel dokument na C++
second_title: Aspose.Words dla C++
articleTitle: Podziel dokument
linktitle: Podziel dokument
description: "Podziel dokument na kilka plików za pomocą C++. Użyj funkcji Podziel, aby skutecznie podzielić dokument według nagłówków lub sekcji, a także według stron lub zakresów stron."
type: docs
weight: 90
url: /pl/cpp/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* lub *split a document* to proces dzielenia dużego dokumentu na większą liczbę mniejszych plików. Istnieje wiele powodów, aby podzielić plik. Na przykład potrzebujesz tylko niektórych stron z określonego dokumentu, a nie całego. Lub ze względu na prywatność chcesz udostępnić innym tylko niektóre części dokumentu. Dzięki funkcji dzielenia możesz uzyskać tylko wymagane części dokumentu i wykonać z nimi niezbędne czynności, na przykład oznaczyć, zapisać lub wysłać.

Aspose.Words zapewnia skuteczny sposób dzielenia jednego dokumentu na wiele dokumentów według nagłówków lub sekcji. Możesz także podzielić dokument według stron lub zakresów stron. Obie opcje podziału zostaną opisane w tym artykule.

Aby podzielić dokument na mniejsze pliki za pomocą Aspose.Words, musisz wykonać następujące kroki:

1. Załaduj dokument w dowolnym obsługiwanym formacie.
1. Podziel dokument.
1. Zapisz dokumenty wyjściowe.

Po podzieleniu dokumentu będziesz mógł otworzyć wszystkie dokumenty wyjściowe, które zaczną się od wymaganych stron, tekstu itp.

{{% alert color="primary" %}}

**Spróbuj online**

Możesz wypróbować tę funkcjonalność z naszym [Darmowy rozdzielacz dokumentów online](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Podziel dokument przy użyciu różnych kryteriów {#split-a-document-using-different-criteria}

Aspose.Words umożliwia dzielenie dokumentów EPUB lub HTML na rozdziały według różnych kryteriów. W tym procesie styl i układ dokumentu źródłowego są zachowywane dla dokumentów wyjściowych.

Kryteria można określić za pomocą wyliczenia [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/). Możesz więc podzielić dokument na rozdziały, używając jednego z poniższych kryteriów lub połączyć więcej niż jedno kryteria razem:

- nagłówek akapit,
- podział sekcji,
- przerwa kolumny,
- podział strony.

Zapisując dane wyjściowe do HTML, Aspose.Words zapisz każdy rozdział jako osobny plik HTML. W rezultacie dokument zostanie podzielony na wiele plików HTML. Podczas zapisywania danych wyjściowych do EPUB, Aspose.Words zapisz wynik w jednym pliku EPUB niezależnie od użytej wartości `DocumentSplitCriteria`. Tak więc użycie DocumentSplitCriteria dla EPUB dokumentów wpływa tylko na wygląd ich zawartości w aplikacjach czytników: treść zostanie podzielona na rozdziały, a dokument nie będzie już wyświetlany jako ciągły.

{{% alert color="primary" %}}

Nie można podzielić dokumentu przy użyciu właściwości [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) podczas zapisywania w formacie MHTML.

{{% /alert %}}

W tej sekcji rozważamy tylko niektóre z możliwych kryteriów podziału.

### Podziel dokument na sekcje {#split-a-document-by-sections}

Aspose.Words umożliwia również używanie podziałów sekcji do dzielenia dokumentów i zapisywania ich w HTML. W tym celu użyj **SectionBreak** jako **DocumentSplitCriteria**:

Poniższy przykład kodu pokazuje, jak podzielić dokument na mniejsze części według podziałów sekcji (bez użycia właściwości `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## Podział na Strony {#splitting-by-pages}

Możesz także podzielić stronę dokumentu według strony, zakresów stron lub zaczynając od określonych numerów stron. W takim przypadku metoda [ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/) może wykonać zadanie.

W tej sekcji opisano kilka przypadków użycia dzielenia dokumentów przez paged przy użyciu klasy [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) i metody **ExtractPages**.

{{% alert color="primary" %}}

Możesz użyć dowolnego [format wyjściowy obsługiwany przez Aspose.Words](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Ze względu na wiele niuansów pojawiających się przy jednoczesnym zmniejszeniu liczby stron, pełne dopasowanie do układu Microsoft Word jest dość skomplikowanym zadaniem. Dlatego w zależności od złożoności dokumentu mogą występować niewielkie różnice w wynikowym układzie dokumentu od oryginalnego dokumentu.

{{% /alert %}}

### Podziel dokument strona po stronie {#split-a-document-page-by-page}

Aspose.Words umożliwia dzielenie wielostronicowego dokumentu strona po stronie.

Poniższy przykład kodu pokazuje, jak podzielić dokument i zapisać każdą stronę jako osobny dokument:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### Podziel dokument według zakresów stron {#split-a-document-by-page-ranges}

Aspose.Words umożliwia dzielenie wielostronicowego dokumentu według zakresów stron. Możesz podzielić jeden plik na wiele plików z różnymi zakresami stron lub po prostu wybrać jeden zakres i zapisać tylko tę część dokumentu źródłowego. Pamiętaj, że możesz wybrać zakres stron zgodnie z maksymalnym i minimalnym numerem strony dokumentu.

Poniższy przykład kodu pokazuje, jak podzielić dokument na mniejsze części według zakresu stron z określonymi indeksami początkowymi i końcowymi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## Scal podzielony dokument z innym dokumentem {#merge-the-split-document-with-another-file}

Aspose.Words umożliwia scalenie podzielonego dokumentu wyjściowego z innym dokumentem w celu utworzenia nowego dokumentu. Można to nazwać scalaniem dokumentów.

Poniższy przykład kodu pokazuje, jak scalić podzielony dokument z innym dokumentem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
