---
title: Podziel dokument Java
second_title: Aspose.Words zamiast Java
articleTitle: Podziel dokument
linktitle: Podziel dokument
description: "Aspose.Words zamiast Java zapewnia skuteczny sposób podziału jednego dokumentu na wiele dokumentów według nagłówków lub sekcji, jak również przedziałów stron lub stron."
type: docs
weight: 90
url: /pl/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* lub * podzielenie dokumentu * jest procesem podziału dużego dokumentu na większą liczbę mniejszych plików. Istnieją różne powody, aby podzielić plik. Na przykład, potrzebujesz tylko niektórych stron z konkretnego dokumentu, a nie całego. Albo z powodów prywatności, chcesz podzielić się tylko niektórymi częściami dokumentu z innymi. Z funkcją podziału, można uzyskać tylko wymagane części dokumentu i wykonać niezbędne działania z nimi, na przykład, aby oznaczyć, zapisać lub wysłać.

Aspose.Words zapewnia skuteczny sposób podziału jednego dokumentu na wiele dokumentów według nagłówków lub sekcji. Można również podzielić dokument na strony lub zakresy stron. Obie opcje podziału zostaną opisane w tym artykule.

Aby podzielić dokument na mniejsze pliki używając Aspose.Words, należy wykonać następujące czynności:

1. Wczytaj dokument w dowolnym obsługiwanym formacie.
1. Podziel dokument.
1. Zapisz dokumenty wyjściowe.

Po podzieleniu dokumentu, będziesz mógł otworzyć wszystkie dokumenty wyjściowe, które zaczną się od wymaganych stron, tekstu itp.

{{% alert color="primary" %}}

**Spróbuj online**

Możesz spróbować tej funkcjonalności z naszym [Darmowy splitter dokumentatów online](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Podziel dokument używając różnych kryteriów {#split-a-document-using-different-criteria}

Aspose.Words pozwala podzielić dokumenty EPUB lub HTML na rozdziały według różnych kryteriów. W procesie, styl i układ dokumentu źródłowego są zachowane dla dokumentów wyjściowych.

Można określić kryteria za pomocą [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) wyliczenie. Więc można podzielić dokument na rozdziały używając jednego z następujących kryteriów lub połączyć więcej niż jedno kryterium razem:

- punkt nagłówkowy,
- przerwa w sekcji,
- przerwa w kolumnie,
- Przerwa na stronę.

Podczas zapisywania wyjścia do HTML, Aspose.Words zapisać każdy rozdział jako oddzielny plik HTML. W rezultacie dokument zostanie podzielony na wiele plików HTML. Podczas zapisywania wyjścia do EPUB, Aspose.Words zapisać wynik w jednym pliku EPUB niezależnie od `DocumentSplitCriteria` wartość, której użyłeś. Tak więc, używając DocumentSplitCriteria dla dokumentów EPUB wpływa tylko na wygląd ich treści w aplikacjach czytelników: zawartość zostanie podzielona na rozdziały i dokument nie będzie już wydawać się ciągły.

{{% alert color="primary" %}}

Nie można podzielić dokumentu używając [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) właściwość podczas zapisywania do formatu MHTML.

{{% /alert %}}

W tej części rozważamy tylko niektóre z możliwych kryteriów podziału.

### Podziel dokument na nagłówki {#split-a-document-by-headings}

Aby podzielić dokument na rozdziały według nagłówków, należy użyć **HeadingParagraph** wartość **DocumentSplitCriteria** nieruchomości.

Jeżeli musisz podzielić dokument na określony poziom akapitów nagłówków, takich jak pozycje 1, 2 i 3, użyj również [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) nieruchomości. Wyjście zostanie podzielone przez paragrafy sformatowane określonym poziomem nagłówka.

Poniższy przykład kodu pokazuje jak podzielić dokument na mniejsze części według nagłówków:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Należy pamiętać, że w przypadku tych kryteriów, Aspose.Words Tylko obsługuje zapisywanie do formatu HTML podczas dzielenia.

Podczas zapisywania do EPUB, dokument nie jest podzielony na kilka plików i będzie tylko jeden plik wyjściowy.

### Podziel dokument na sekcje {#split-a-document-by-sections}

Aspose.Words pozwala również na użycie przerw sekcji, aby podzielić dokumenty i zapisać je na HTML. W tym celu należy użyć **SectionBreak** jako **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Istnieje inny sposób, aby podzielić dokument źródłowy na wiele dokumentów wyjściowych i można wybrać dowolny format wyjściowy obsługiwany przez Aspose.Words.

Poniższy przykład kodu pokazuje jak podzielić dokument na mniejsze części według przerw sekcji (bez użycia `DocumentSplitCriteria` nieruchomości):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Podział według stron {#splitting-by-pages}

Możesz również podzielić stronę dokumentu na stronę, przedziały stron lub rozpocząć od podanych numerów stron. W takim przypadku [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) Metoda może to zrobić.

W niniejszej sekcji opisano kilka przypadków korzystania z dokumentów podzielonych przez paged [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) klasa i **ExtractPages** Metoda.

{{% alert color="primary" %}}

Możesz użyć każdego [Obslugiwane formaty dokumentów](/words/pl/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Ze względu na liczne niuanse pojawiające się podczas zmniejszania liczby stron, pełna zgodność z Microsoft Word Układ to skomplikowane zadanie. W związku z tym, w zależności od złożoności dokumentu, mogą występować niewielkie różnice w jego układzie z oryginalnym dokumentem.

{{% /alert %}}

### Podziel stronę dokumentu po stronie {#split-a-document-page-by-page}

Aspose.Words pozwala podzielić wielostronną stronę dokumentu po stronie.

Poniższy przykład kodu pokazuje jak podzielić dokument i zapisać każdą stronę jako oddzielny dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Podziel dokument na rangi stron {#split-a-document-by-page-ranges}

Aspose.Words pozwala na podzielenie wielostronnego dokumentu według zakresów stron. Możesz podzielić jeden plik na wiele plików z różnymi zakresami stron lub po prostu wybrać jeden zakres i zapisać tylko tę część dokumentu źródłowego. Zauważ, że możesz wybrać zakres strony zgodnie z maksymalnym i minimalnym numerem strony dokumentu.

Poniższy przykład kodu pokazuje jak podzielić dokument na mniejsze części według zakresu stron z określonymi indeksami początkowymi i końcowymi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Opcja wywołania zapisu dokumentu {#callback-option-for-saving-a-document}

Można użyć [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) właściwość do kontrolowania jak Aspose.Words zapisuje części dokumentów, gdy ten dokument jest eksportowany do formatu HTML. Ta właściwość pozwala na zmianę nazwy plików wyjściowych lub nawet przekierowanie ich do niestandardowych strumieni.

Należy pamiętać, że to wywołanie nie jest przydatne podczas zapisywania do EPUB, ponieważ wszystkie części wyjściowe muszą być zapisane do jednego pojemnika - pliku .epub. Tak więc przekierowanie strumienia nie jest obsługiwane, a efekt zmiany nazwy nie jest widoczny, ponieważ pliki są zmieniane wewnątrz pojemnika.

## Połącz podzielony dokument z innym dokumentem {#merge-the-split-document-with-another-file}

Aspose.Words umożliwia połączenie dokumentu wyjściowego podzielonego z innym dokumentem w celu utworzenia nowego dokumentu. Można to nazwać połączeniem dokumentu.

Poniższy przykład kodu pokazuje jak połączyć podzielony dokument z innym dokumentem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
