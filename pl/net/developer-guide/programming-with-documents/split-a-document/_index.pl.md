---
title: Podziel dokument w C#
second_title: Aspose.Words dla .NET
articleTitle: Podziel dokument
linktitle: Podziel dokument
description: "Podziel dokument na kilka plików za pomocą C#. Użyj funkcji podziału, aby skutecznie podzielić dokument według nagłówków lub sekcji, a także według stron lub zakresów stron."
type: docs
weight: 90
url: /pl/net/split-a-document/
---

*Splitting* lub *dzielenie dokumentu* to proces dzielenia dużego dokumentu na większą liczbę mniejszych plików. Istnieje wiele powodów, dla których warto podzielić plik. Na przykład potrzebujesz tylko niektórych stron z konkretnego dokumentu, a nie całego. Lub ze względu na prywatność chcesz udostępnić innym tylko niektóre części dokumentu. Dzięki funkcji podziału możesz uzyskać tylko potrzebne części dokumentu i wykonać z nimi niezbędne czynności, na przykład oznaczyć, zapisać lub wysłać.

Aspose.Words zapewnia skuteczny sposób dzielenia jednego dokumentu na wiele dokumentów według nagłówków lub sekcji. Możesz także podzielić dokument według stron lub zakresów stron. Obie opcje podziału zostaną opisane w tym artykule.

Aby podzielić dokument na mniejsze pliki za pomocą Aspose.Words, wykonaj następujące kroki:

1. Załaduj dokument w dowolnym obsługiwanym formacie.
1. Podziel dokument.
1. Zapisz dokumenty wyjściowe.

Po podzieleniu dokumentu będziesz mógł otworzyć wszystkie dokumenty wyjściowe, które zaczną się od wymaganych stron, tekstu itp.

{{% alert color="primary" %}}

**Spróbuj online**

Możesz wypróbować tę funkcjonalność w naszym [Darmowy rozdzielacz dokumentów online](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Podziel dokument przy użyciu różnych kryteriów {#split-a-document-using-different-criteria}

Aspose.Words umożliwia dzielenie dokumentów EPUB lub HTML na rozdziały według różnych kryteriów. W tym procesie styl i układ dokumentu źródłowego są zachowywane w dokumentach wyjściowych.

Kryteria można określić za pomocą wyliczenia [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/documentsplitcriteria/). Można zatem podzielić dokument na rozdziały, stosując jedno z poniższych kryteriów lub połączyć więcej niż jedno kryterium razem:

- nagłówek akapitu,
- podział sekcji,
- przerwa w kolumnie,
- podział strony.

Podczas zapisywania wyników w formacie HTML Aspose.Words zapisuje każdy rozdział jako oddzielny plik HTML. W rezultacie dokument zostanie podzielony na wiele plików HTML. Podczas zapisywania danych wyjściowych w formacie EPUB Aspose.Words zapisuje wynik w jednym pliku EPUB niezależnie od użytej wartości `DocumentSplitCriteria`. Zatem użycie DocumentSplitCriteria dla dokumentów EPUB wpływa jedynie na wygląd ich zawartości w aplikacjach czytników: treść zostanie podzielona na rozdziały, a dokument nie będzie już wyglądał na ciągły.

{{% alert color="primary" %}}

Nie można podzielić dokumentu przy użyciu właściwości [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/) podczas zapisywania w formacie MHTML.

{{% /alert %}}

W tej sekcji rozważymy tylko niektóre z możliwych kryteriów podziału.

### Podziel dokument według nagłówków {#split-a-document-by-headings}

Aby podzielić dokument na rozdziały według nagłówków, użyj wartości **HeadingParagraph** właściwości **DocumentSplitCriteria**.

Jeśli chcesz podzielić dokument według określonego poziomu akapitów nagłówków, takich jak nagłówki 1, 2 i 3, użyj także właściwości [DocumentSplitHeadingLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/). Dane wyjściowe zostaną podzielone na akapity sformatowane z określonym poziomem nagłówka.

Poniższy przykład kodu pokazuje, jak podzielić dokument na mniejsze części według nagłówków:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

Należy pamiętać, że w przypadku tych kryteriów Aspose.Words obsługuje jedynie zapisywanie w formacie HTML podczas dzielenia.

Podczas zapisywania w formacie EPUB dokument nie jest dzielony na kilka plików i będzie tylko jeden plik wyjściowy.

### Podziel dokument według sekcji {#split-a-document-by-sections}

Aspose.Words umożliwia także użycie podziałów sekcji w celu podzielenia dokumentów i zapisania ich w formacie HTML. W tym celu użyj **SectionBreak** jako **DocumentSplitCriteria**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

Istnieje inny sposób podzielenia dokumentu źródłowego na wiele dokumentów wyjściowych. Można wybrać dowolny format wyjściowy obsługiwany przez Aspose.Words.

Poniższy przykład kodu pokazuje, jak podzielić dokument na mniejsze części według podziałów sekcji (bez użycia właściwości `DocumentSplitCriteria`):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## Podzielone według stron {#splitting-by-pages}

Można także podzielić dokument strona po stronie, według zakresów stron lub zaczynając od określonych numerów stron. W takim przypadku metoda [ExtractPages](https://reference.aspose.com/words/net/aspose.words/document/extractpages/) może spełnić swoje zadanie.

W tej sekcji opisano kilka przypadków użycia dzielenia dokumentów według stronicowania przy użyciu klasy [Document](https://reference.aspose.com/words/net/aspose.words/document/) i metody **ExtractPages**.

{{% alert color="primary" %}}

Możesz użyć dowolnego [Obsługiwane formaty dokumentów](/words/pl/net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Ze względu na wiele niuansów pojawiających się przy zmniejszaniu liczby stron, pełne dopasowanie do układu Microsoft Word jest dość skomplikowanym zadaniem. Dlatego też, w zależności od złożoności dokumentu, mogą występować niewielkie różnice w układzie dokumentu wynikowego w porównaniu z dokumentem oryginalnym.

{{% /alert %}}

### Podziel stronę dokumentu według strony {#split-a-document-page-by-page}

Aspose.Words umożliwia dzielenie wielostronicowego dokumentu strona po stronie.

Poniższy przykład kodu pokazuje, jak podzielić dokument i zapisać każdą stronę jako osobny dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### Podziel dokument według zakresów stron {#split-a-document-by-page-ranges}

Aspose.Words umożliwia dzielenie dokumentu wielostronicowego według zakresów stron. Możesz podzielić jeden plik na wiele plików o różnych zakresach stron lub po prostu wybrać jeden zakres i zapisać tylko tę część dokumentu źródłowego. Pamiętaj, że możesz wybrać zakres stron zgodnie z maksymalną i minimalną liczbą stron dokumentu.

Poniższy przykład kodu pokazuje, jak podzielić dokument na mniejsze części według zakresu stron z określonymi indeksami początkowymi i końcowymi:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## Opcja wywołania zwrotnego, aby zapisać dokument {#callback-option-for-saving-a-document}

Możesz użyć właściwości [DocumentPartSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/), aby kontrolować sposób, w jaki Aspose.Words zapisuje części dokumentu, gdy dokument ten jest eksportowany do formatu HTML. Ta właściwość umożliwia zmianę nazw plików wyjściowych lub nawet przekierowanie ich do niestandardowych strumieni.

Należy pamiętać, że to wywołanie zwrotne nie jest przydatne podczas zapisywania w formacie EPUB, ponieważ wszystkie części wyjściowe muszą zostać zapisane w jednym kontenerze – pliku .epub. Zatem przekierowanie strumienia nie jest obsługiwane, a efekt zmiany nazwy nie jest widoczny, ponieważ nazwy plików są zmieniane wewnątrz kontenera.

## Scal podzielony dokument z innym dokumentem {#merge-the-split-document-with-another-file}

Aspose.Words umożliwia połączenie podzielonego dokumentu wyjściowego z innym dokumentem w celu utworzenia nowego dokumentu. Można to nazwać łączeniem dokumentów.

Poniższy przykład kodu pokazuje, jak scalić podzielony dokument z innym dokumentem:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
