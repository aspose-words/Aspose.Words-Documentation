---
title: Jak wyodrębnić zawartość między węzłami dokumentu
second_title: Aspose.Words dla C++
articleTitle: Wyodrębnij zawartość między węzłami w dokumencie
linktitle: Wyodrębnij Zawartość Między Węzłami
type: docs
description: "Wyodrębnianie zawartości dokumentu w inny sposób za pomocą C++."
weight: 140
url: /pl/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Podczas pracy z dokumentami ważne jest, aby móc łatwo wyodrębnić zawartość z określonego zakresu w dokumencie. Jednak treść może składać się ze złożonych elementów, takich jak akapity, tabele, obrazy itp.

Niezależnie od tego, jaką zawartość należy wyodrębnić, metoda wyodrębniania tej zawartości będzie zawsze określana przez węzły, które mają wyodrębnić zawartość między nimi. Mogą to być całe bryły tekstu lub proste przebiegi tekstu.

Istnieje wiele możliwych sytuacji, a zatem wiele różnych typów węzłów, które należy wziąć pod uwagę podczas wyodrębniania zawartości. Na przykład możesz chcieć wyodrębnić zawartość między:

- Dwa konkretne akapity
- Konkretne przebiegi tekstu
- Pola różnych typów, takie jak pola scalania
- Zakresy początkowe i końcowe zakładki lub komentarza
- Różne treści tekstu zawarte w oddzielnych sekcjach

W niektórych sytuacjach może być nawet konieczne połączenie różnych typów węzłów, takich jak wyodrębnianie zawartości między akapitem a polem lub między uruchomieniem a zakładką.

Ten artykuł zawiera implementację kodu do wyodrębniania tekstu między różnymi węzłami, a także przykłady typowych scenariuszy.

{{% alert color="primary" %}}

Te przykłady to tylko kilka demonstracji wielu możliwości. Planujemy, aby funkcja ekstrakcji tekstu była częścią publiczności API w przyszłości i nie będzie wymagany żaden dodatkowy kod. W międzyczasie możesz zamieścić swoje prośby dotyczące tej funkcji na [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Po Co Wyodrębniać Zawartość

Często celem wyodrębnienia treści jest zduplikowanie lub zapisanie jej osobno w nowym dokumencie. Na przykład możesz wyodrębnić zawartość i:

- Skopiuj go do osobnego dokumentu
- Konwertuj określoną część dokumentu na PDF lub obraz
- Wielokrotne powielanie treści w dokumencie
- Praca z wyodrębnioną treścią oddzieloną od reszty dokumentu

Można to łatwo osiągnąć za pomocą Aspose.Words i poniższej implementacji kodu.

## Algorytm Wyodrębniania Treści

Kod w tej sekcji Dotyczy wszystkich możliwych sytuacji opisanych powyżej za pomocą jednej uogólnionej i wielokrotnego użytku metody. Ogólny zarys tej techniki obejmuje:

1. Zbieranie węzłów, które dyktują obszar treści, który zostanie wyodrębniony z dokumentu. Pobieranie tych węzłów jest obsługiwane przez użytkownika w ich kodzie, na podstawie tego, co chcą wyodrębnić.
1. Przekazywanie tych węzłów do metody **ExtractContent** podanej poniżej. Musisz również przekazać parametr logiczny, który określa, czy te węzły, działające jako znaczniki, powinny być uwzględnione w ekstrakcji, czy nie.
1. Pobieranie listy sklonowanej zawartości (skopiowanych węzłów) określonej do wyodrębnienia. Możesz użyć tej listy węzłów w dowolny odpowiedni sposób, na przykład tworząc nowy dokument zawierający tylko wybraną zawartość.

## Jak wyodrębnić zawartość

Aby wyodrębnić zawartość z dokumentu, musisz wywołać poniższą metodę `ExtractContent` i przekazać odpowiednie parametry. Podstawą tej metody jest znalezienie węzłów na poziomie bloku (akapitów i tabel) i klonowanie ich w celu utworzenia identycznych kopii. Jeśli przekazane węzły znaczników są na poziomie bloku, metoda jest w stanie po prostu skopiować zawartość na tym poziomie i dodać ją do tablicy.

Jeśli jednak węzły znaczników są wbudowane (podrzędne akapitu), sytuacja staje się bardziej złożona, ponieważ konieczne jest podzielenie akapitu w węźle wbudowanym, czy to run, pola zakładek itp. Zawartość w sklonowanych węzłach nadrzędnych nieobecnych między znacznikami jest usuwana. Ten proces służy do zapewnienia, że węzły wbudowane nadal zachowają formatowanie akapitu nadrzędnego. Metoda przeprowadzi również kontrole węzłów przekazanych jako parametry i zgłasza wyjątek, jeśli którykolwiek z węzłów jest nieprawidłowy. Parametry, które należy przekazać tej metodzie, to:

1. **StartNode** i **EndNode**. Pierwsze dwa parametry to węzły, które określają, gdzie ekstrakcja zawartości ma się rozpocząć i zakończyć odpowiednio. Węzły te mogą być zarówno na poziomie bloku (akapit, tabela), jak i na poziomie wbudowanym (np. Run, FieldStart, BookmarkStart itp.):
   1. Aby przekazać pole, należy przekazać odpowiedni obiekt **FieldStart**.
   1. Aby przekazać zakładki, należy przekazać węzły **BookmarkStart** i BookmarkEnd.
   1. Aby przekazać komentarze, należy użyć węzłów CommentRangeStart i CommentRangeEnd.
1. **IsInclusive**. Określa, czy znaczniki są zawarte w ekstrakcji, czy nie. Jeśli ta opcja jest ustawiona na false i przekazywany jest ten sam węzeł lub kolejne węzły, zostanie zwrócona pusta lista:

      1. Jeśli zostanie przekazany węzeł **FieldStart**, ta opcja określa, czy całe pole ma zostać uwzględnione, czy wykluczone.
      1. Jeśli zostanie przekazany węzeł **BookmarkStart** LUB **BookmarkEnd**, Ta opcja określa, czy zakładka jest dołączona, czy tylko zawartość między zakresem zakładek.
      1. Jeśli zostanie przekazany węzeł **CommentRangeStart** LUB **CommentRangeEnd**, Ta opcja określa, czy sam komentarz ma zostać uwzględniony, czy tylko zawartość w zakresie komentarzy.

Implementację metody **ExtractContent** można znaleźć [tutaj](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Ta metoda zostanie omówiona w scenariuszach w tym artykule.

Zdefiniujemy również niestandardową metodę łatwego generowania dokumentu z wyodrębnionych węzłów. Ta metoda jest używana w wielu poniższych scenariuszach i po prostu tworzy nowy dokument i importuje do niego wyodrębnioną zawartość.

Poniższy przykład kodu pokazuje, jak pobrać listę węzłów i wstawić je do nowego dokumentu.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Wyodrębnij Zawartość Między Akapitami

To pokazuje, jak użyć powyższej metody do wyodrębnienia treści między określonymi akapitami. W takim przypadku chcemy wyodrębnić treść listu znalezionego w pierwszej połowie dokumentu. Możemy powiedzieć, że jest to między 7.a 11. akapitem.

Poniższy kod wykonuje to zadanie. Odpowiednie akapity są wyodrębniane przy użyciu metody [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) w dokumencie i przekazują określone indeksy. Następnie przekazujemy te węzły do metody **ExtractContent** i stwierdzamy, że mają one zostać uwzględnione w ekstrakcji. Ta metoda zwróci skopiowaną zawartość między tymi węzłami, które są następnie wstawiane do nowego dokumentu.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość między określonymi akapitami przy użyciu powyższej metody `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Wyodrębnij zawartość między różnymi typami węzłów

Możemy wyodrębnić zawartość między dowolnymi kombinacjami węzłów na poziomie bloku lub wbudowanych. W tym scenariuszu poniżej wyodrębnimy zawartość między pierwszym akapitem a tabelą w drugiej sekcji włącznie. Otrzymujemy węzły znaczników, wywołując metodę `Body.FirstParagraph` i [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) w drugiej sekcji dokumentu, aby pobrać odpowiednie węzły akapitu i tabeli. Dla niewielkiej zmiany zamiast tego zduplikujmy zawartość i wstawmy ją poniżej oryginału.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość między akapitem a tabelą za pomocą metody `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Wyodrębnij zawartość między akapitami na podstawie stylu

Może być konieczne wyodrębnienie zawartości między akapitami tego samego lub różnych stylów, na przykład między akapitami oznaczonymi stylami nagłówków. Poniższy kod pokazuje, jak to osiągnąć. Jest to prosty przykład, który wyodrębni zawartość między pierwszą instancją stylów" Heading 1 "i" Header 3 " bez wyodrębniania nagłówków. W tym celu ustawiamy ostatni parametr na false, który określa, że węzły znaczników nie powinny być uwzględniane.

We właściwej implementacji powinno to być uruchamiane w pętli, aby wyodrębnić zawartość między wszystkimi akapitami tych stylów z dokumentu. Wyodrębniona zawartość jest kopiowana do nowego dokumentu.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość między akapitami za pomocą określonych stylów przy użyciu metody `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Wyodrębnij Zawartość Między Określonymi Przebiegami

Możesz także wyodrębnić zawartość między węzłami wbudowanymi, takimi jak [Run](https://reference.aspose.com/words/cpp/aspose.words/run/). **Runs** z różnych akapitów mogą być przekazywane jako znaczniki. Poniższy kod pokazuje, jak wyodrębnić określony tekst pomiędzy tym samym węzłem **Paragraph**.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość między określonymi przebiegami tego samego akapitu przy użyciu metody **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Wyodrębnij zawartość za pomocą pola

Aby użyć pola jako znacznika, należy przekazać węzeł `FieldStart`. Ostatni parametr metody `ExtractContent` określi, czy całe pole ma zostać uwzględnione, czy nie. Wyodrębnijmy zawartość między polem scalania "FullName " a akapitem w dokumencie. Używamy metody [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) klasy [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Spowoduje to zwrócenie węzła **FieldStart** z przekazanej do niego nazwy pola scalania.

W naszym przypadku ustawmy ostatni parametr przekazany do metody **ExtractContent** Na false, aby wykluczyć pole z ekstrakcji. Wyrenderujemy wyodrębnioną zawartość do PDF.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość między określonym polem a akapitem w dokumencie przy użyciu metody **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Wyodrębnij zawartość z zakładki

W dokumencie zawartość zdefiniowana w zakładce jest hermetyzowana przez węzły `BookmarkStart` i BookmarkEnd. Zawartość znaleziona między tymi dwoma węzłami tworzy zakładkę. Możesz przekazać jeden z tych węzłów jako dowolny znacznik, nawet z różnych zakładek, o ile znacznik początkowy pojawia się przed znacznikiem końcowym w dokumencie. Wyodrębnimy tę zawartość do nowego dokumentu za pomocą poniższego kodu. Opcja parametru **IsInclusive** pokazuje, jak zachować lub odrzucić zakładkę.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość, do której odwołuje się zakładka przy użyciu metody **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Wyodrębnij treść z komentarza

Komentarz składa się z węzłów CommentRangeStart, CommentRangeEnd i komentarz. Wszystkie te węzły są wbudowane. Pierwsze dwa węzły hermetyzują zawartość dokumentu, do którego odwołuje się komentarz, jak widać na poniższym zrzucie ekranu.

Sam węzeł **Comment** to InlineStory, który może zawierać akapity i biegi. Reprezentuje wiadomość komentarza jako dymek komentarza w okienku podglądu. Ponieważ ten węzeł jest wbudowany i jest potomkiem ciała, możesz również wyodrębnić zawartość z wnętrza tej wiadomości.

Komentarz zawiera nagłówek, pierwszy akapit i tabelę w drugiej sekcji. Wyodrębnijmy ten komentarz do nowego dokumentu. Opcja **IsInclusive** określa, czy sam komentarz zostanie zachowany, czy odrzucony.

Poniższy przykład kodu pokazuje, jak to zrobić:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## Jak wyodrębnić zawartość za pomocą DocumentVisitor

Użyj klasy [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/), aby zaimplementować ten scenariusz użycia. Ta klasa odpowiada dobrze znanemu wzorcowi projektowania odwiedzających. Za pomocą **DocumentVisitor,** można definiować i wykonywać operacje niestandardowe, które wymagają wyliczenia w drzewie dokumentów.

**DocumentVisitor**

Każda metoda **DocumentVisitor.VisitXXX** Zwraca wartość [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/), która kontroluje wyliczenie węzłów. Możesz poprosić o kontynuowanie wyliczania, pominięcie bieżącego węzła (ale kontynuowanie wyliczania) lub zatrzymanie wyliczania węzłów.

Oto kroki, które należy wykonać, aby programowo określić i wyodrębnić różne części dokumentu:

- Utwórz klasę wywodzącą się z **DocumentVisitor**
- Zastąp i zapewnij implementacje dla niektórych lub wszystkich metod **DocumentVisitor.VisitXXX** w celu wykonania niektórych operacji niestandardowych
- Wywołaj `Node.Accept` na węźle, od którego chcesz rozpocząć wyliczenie. Na przykład, jeśli chcesz wyliczyć cały dokument, użyj `Document.Accept`

**DocumentVisitor**

Ten przykład pokazuje, jak używać wzorca odwiedzającego do dodawania nowych operacji do modelu obiektowego Aspose.Words. W takim przypadku tworzymy prosty konwerter dokumentów na format tekstowy:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Jak wyodrębnić tylko tekst

Sposoby pobierania tekstu z dokumentu to:

- Użyj [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) z [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/), aby zapisać jako zwykły tekst w pliku lub strumieniu
- Użyj [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) i przekaż parametr **SaveFormat.Text**. Wewnętrznie wywołuje to zapisz jako tekst w strumieniu pamięci i zwraca wynikowy ciąg
- Użyj [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/), aby pobrać tekst ze wszystkimi Microsoft Word znakami kontrolnymi, w tym kodami pól
- Zaimplementuj Niestandardowy [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/), aby wykonać niestandardową ekstrakcję

### Używanie `Node.GetText` i `Node.ToString`

Dokument Word może zawierać znaki kontrolne, które oznaczają specjalne elementy, takie jak Pole, koniec komórki, koniec sekcji itp. Pełna lista możliwych znaków kontrolnych Word jest zdefiniowana w klasie [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/). Metoda **Node.GetText** zwraca tekst ze wszystkimi znakami kontrolnymi obecnymi w węźle.

Wywołanie **ToString** zwraca reprezentację zwykłego tekstu dokumentu tylko bez znaków kontrolnych.

Poniższy przykład kodu pokazuje różnicę między wywołaniem metod **GetText** i **ToString** w węźle:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### Użycie `SaveFormat.Text`

Ten przykład zapisuje dokument w następujący sposób:

- Odfiltrowuje znaki pól i kody pól, kształt, Przypisy, przypisy końcowe i odniesienia do komentarzy
- Zastępuje koniec akapitu **ControlChar.Cr** znakami **ControlChar.CrLf** kombinacjami
- Używa kodowania UTF8

Poniższy przykład kodu pokazuje, jak zapisać dokument w formacie TXT:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Wyodrębnij obrazy z kształtów

Aby wykonać niektóre zadania, może być konieczne wyodrębnienie obrazów dokumentów. Aspose.Words pozwala również na to.

Poniższy przykład kodu pokazuje, jak wyodrębnić obrazy z dokumentu:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}
