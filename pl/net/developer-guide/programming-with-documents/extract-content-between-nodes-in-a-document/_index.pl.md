---
title: Jak wyodrębnić zawartość między węzłami dokumentu
second_title: Aspose.Words dla .NET
articleTitle: Wyodrębnij zawartość pomiędzy węzłami w dokumencie
linktitle: Wyodrębnij zawartość między węzłami
description: "Wyodrębnianie zawartości dokumentu w różnych formatach za pomocą C#."
type: docs
weight: 140
url: /pl/net/how-to-extract-selected-content-between-nodes-in-a-document/
---

Podczas pracy z dokumentami ważna jest możliwość łatwego wyodrębnienia treści z określonego zakresu w dokumencie. Treść może jednak składać się ze skomplikowanych elementów, takich jak akapity, tabele, obrazy itp.

Niezależnie od tego, jaka treść ma zostać wyodrębniona, metoda wyodrębnienia tej treści będzie zawsze określona na podstawie tego, które węzły zostaną wybrane, pomiędzy którymi ma zostać wyodrębniona treść. Mogą to być całe treści tekstowe lub proste ciągi tekstowe.

Istnieje wiele możliwych sytuacji, a zatem wiele różnych typów węzłów, które należy wziąć pod uwagę podczas wyodrębniania treści. Na przykład możesz chcieć wyodrębnić zawartość pomiędzy:

- Dwa konkretne akapity
- Określone ciągi tekstu
- Pola różnych typów, takie jak pola scalone
- Zakres początkowy i końcowy zakładki lub komentarza
- Różne teksty zawarte w oddzielnych sekcjach

W niektórych sytuacjach może być nawet konieczne połączenie różnych typów węzłów, na przykład wyodrębnienie treści między akapitem a polem lub między uruchomieniem a zakładką.

W tym artykule przedstawiono implementację kodu służącą do wyodrębniania tekstu między różnymi węzłami, a także przykłady typowych scenariuszy.

{{% alert color="primary" %}}

Te przykłady to tylko kilka demonstracji wielu możliwości. Planujemy, że w przyszłości funkcja wyodrębniania tekstu stanie się częścią publicznego API i nie będzie wymagany żaden dodatkowy kod. W międzyczasie możesz publikować swoje prośby dotyczące tej funkcji w [forum Aspose.Words](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Po co wyodrębniać zawartość

Często celem wyodrębnienia treści jest powielenie jej lub osobne zapisanie w nowym dokumencie. Można na przykład wyodrębnić treść i:

- Skopiuj go do osobnego dokumentu
- Konwertuj określoną część dokumentu na plik PDF lub obraz
- Wiele razy powielaj treść dokumentu
- Pracuj z wyodrębnioną treścią oddzielnie od reszty dokumentu

Można to łatwo osiągnąć za pomocą Aspose.Words i poniższej implementacji kodu.

## Algorytm wyodrębniania treści

Kod w tej sekcji odnosi się do wszystkich możliwych sytuacji opisanych powyżej za pomocą jednej uogólnionej metody wielokrotnego użytku. Ogólny zarys tej techniki obejmuje:

1. Zbierz węzły określające obszar treści, który zostanie wyodrębniony z dokumentu. Pobieraniem tych węzłów zajmuje się użytkownik w swoim kodzie, w zależności od tego, co chce wyodrębnić.
1. Przekazanie tych węzłów do metody **ExtractContent** podanej poniżej. Musisz także przekazać parametr logiczny, który określa, czy te węzły, pełniąc rolę znaczników, powinny zostać uwzględnione w ekstrakcji, czy nie.
1. Pobieranie listy sklonowanej zawartości (skopiowanych węzłów) określonej do wyodrębnienia. Możesz wykorzystać tę listę węzłów w dowolny sposób, np. tworząc nowy dokument zawierający tylko wybraną treść.

## Jak wyodrębnić zawartość

Aby wyodrębnić treść z dokumentu należy wywołać poniższą metodę **ExtractContent** i przekazać odpowiednie parametry. Podstawą tej metody jest znajdowanie węzłów na poziomie bloków (akapitów i tabel) i klonowanie ich w celu utworzenia identycznych kopii. Jeśli przekazane węzły znaczników są na poziomie bloków, metoda może po prostu skopiować zawartość na tym poziomie i dodać ją do tablicy.

Jeśli jednak węzły znaczników są wbudowane (potomek akapitu), sytuacja staje się bardziej złożona, ponieważ konieczne jest podzielenie akapitu w węźle wbudowanym, niezależnie od tego, czy jest to bieg, pola zakładek itp. Treść w sklonowanych węzłach nadrzędnych nie obecny pomiędzy znacznikami jest usuwany. Proces ten ma na celu zapewnienie, że węzły wbudowane nadal zachowają formatowanie akapitu nadrzędnego. Metoda przeprowadzi również sprawdzenie węzłów przekazanych jako parametry i zgłosi wyjątek, jeśli którykolwiek z węzłów jest nieprawidłowy. Parametry, które należy przekazać do tej metody to:

1. **StartNode** i **EndNode**. Pierwsze dwa parametry to węzły, które definiują, gdzie odpowiednio rozpoczyna się i kończy wyodrębnianie treści. Węzły te mogą być zarówno na poziomie blokowym ([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)), jak i na poziomie wbudowanym (np. [Run](https://reference.aspose.com/words/net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/) itp.):
   1. Aby przekazać pole należy przekazać odpowiadający mu obiekt **FieldStart**
   1. Aby przekazać zakładki należy przekazać węzły **BookmarkStart** i [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/)
   1. Do przekazywania komentarzy należy wykorzystać węzły [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) i [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)
1. **IsInclusive**. Określa, czy znaczniki są uwzględniane w ekstrakcji, czy nie. Jeśli ta opcja jest ustawiona na false i przekazany zostanie ten sam węzeł lub kolejne węzły, wówczas zwrócona zostanie pusta lista:
   1. Jeśli przekazany zostanie węzeł **FieldStart**, opcja ta określa, czy całe pole ma zostać uwzględnione, czy wykluczone
   1. Jeśli przekazany zostanie węzeł **BookmarkStart** lub **BookmarkEnd**, ta opcja określa, czy uwzględniona zostanie zakładka, czy tylko zawartość znajdująca się pomiędzy zakresem zakładek.
   1. W przypadku przekazania węzła **CommentRangeStart** lub **CommentRangeEnd** opcja ta określa, czy ma zostać uwzględniony sam komentarz, czy tylko treść w zakresie komentarza.

Implementację metody **ExtractContent** można znaleźć w [w formacie Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs). Ta metoda zostanie omówiona w scenariuszach w tym artykule.

Zdefiniujemy również niestandardową metodę łatwego generowania dokumentu z wyodrębnionych węzłów. Ta metoda jest używana w wielu poniższych scenariuszach i polega po prostu na utworzeniu nowego dokumentu i zaimportowaniu do niego wyodrębnionej zawartości.

Poniższy przykład kodu pokazuje, jak pobrać listę węzłów i wstawić je do nowego dokumentu:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## Wyodrębnij treść pomiędzy akapitami

To pokazuje, jak użyć powyższej metody do wyodrębnienia treści pomiędzy określonymi akapitami. W tym przypadku chcemy wyodrębnić treść listu znajdującą się w pierwszej połowie dokumentu. Możemy powiedzieć, że jest to pomiędzy akapitem 7 a 11.

Poniższy kod realizuje to zadanie. Odpowiednie akapity są wyodrębniane z dokumentu metodą [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) i przekazują określone indeksy. Następnie przekazujemy te węzły do metody **ExtractContent** i stwierdzamy, że mają one zostać uwzględnione w ekstrakcji. Ta metoda zwróci skopiowaną treść pomiędzy tymi węzłami, która zostanie następnie wstawiona do nowego dokumentu.

Poniższy przykład kodu pokazuje, jak wyodrębnić treść pomiędzy określonymi akapitami przy użyciu powyższej metody `ExtractContent`:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Wyodrębnij zawartość pomiędzy różnymi typami węzłów

Możemy wyodrębnić treść pomiędzy dowolną kombinacją poziomów blokowych lub węzłów wbudowanych. W poniższym scenariuszu wyodrębnimy zawartość pomiędzy pierwszym akapitem a tabelą w drugiej sekcji włącznie. Węzły znaczników uzyskujemy wywołując metody [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) i [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) w drugiej części dokumentu w celu pobrania odpowiednich węzłów **Paragraph** i **Table**. Aby uzyskać niewielką odmianę, zduplikujmy treść i wstawmy ją pod oryginałem.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość między akapitem a tabelą przy użyciu metody **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Wyodrębnij treść między akapitami na podstawie stylu

Może zaistnieć potrzeba wyodrębnienia treści pomiędzy akapitami o tym samym lub innym stylu, na przykład pomiędzy akapitami oznaczonymi stylami nagłówków. Poniższy kod pokazuje, jak to osiągnąć. Jest to prosty przykład, który wyodrębni zawartość pomiędzy pierwszym wystąpieniem stylów "Nagłówek 1" i "Nagłówek 3" bez wyodrębniania również nagłówków. Aby to zrobić, ustawiamy ostatni parametr na false, co określa, że węzły znaczników nie powinny być uwzględniane.

W prawidłowej implementacji powinno to zostać uruchomione w pętli, aby wyodrębnić zawartość pomiędzy wszystkimi akapitami tych stylów z dokumentu. Wyodrębniona treść jest kopiowana do nowego dokumentu.

Poniższy przykład kodu pokazuje, jak wyodrębnić treść pomiędzy akapitami o określonych stylach przy użyciu metody **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Wyodrębnij zawartość pomiędzy określonymi uruchomieniami

Możesz także wyodrębnić zawartość pomiędzy węzłami wbudowanymi, takimi jak [Run](https://reference.aspose.com/words/net/aspose.words/run/). **Runs** z różnych akapitów można przekazywać jako znaczniki. Poniższy kod pokazuje, jak wyodrębnić określony tekst pomiędzy tym samym węzłem **Paragraph**.

Poniższy przykład kodu pokazuje, jak wyodrębnić treść pomiędzy określonymi ciągami tego samego akapitu przy użyciu metody **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Wyodrębnij zawartość za pomocą pola

Aby użyć pola jako znacznika, należy przekazać węzeł `FieldStart`. Ostatni parametr metody `ExtractContent` określa, czy ma zostać uwzględnione całe pole, czy nie. Wyodrębnijmy treść pomiędzy polem scalania "Imię i nazwisko" a akapitem w dokumencie. Używamy metody [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/) klasy [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Spowoduje to zwrócenie węzła **FieldStart** z przekazanej mu nazwy pola scalania.

W naszym przypadku ustawmy ostatni parametr przekazywany do metody **ExtractContent** na false, aby wykluczyć pole z ekstrakcji. Wyodrębnioną treść wyrenderujemy do formatu PDF.

Poniższy przykład kodu pokazuje, jak wyodrębnić treść pomiędzy określonym polem a akapitem w dokumencie przy użyciu metody **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Wyodrębnij zawartość z zakładki

W dokumencie treść zdefiniowana w zakładce jest hermetyzowana przez węzły `BookmarkStart` i BookmarkEnd. Treść znaleziona pomiędzy tymi dwoma węzłami tworzy zakładkę. Możesz przekazać którykolwiek z tych węzłów jako dowolny znacznik, nawet z różnych zakładek, pod warunkiem, że znacznik początkowy pojawi się przed znacznikiem końcowym w dokumencie. Wyodrębnimy tę treść do nowego dokumentu, korzystając z poniższego kodu. Opcja parametru **IsInclusive** pokazuje, jak zachować lub odrzucić zakładkę.

Poniższy przykład kodu pokazuje, jak wyodrębnić treść odwołującą się do zakładki przy użyciu metody **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Wyodrębnij treść z komentarza

Komentarz składa się z węzłów CommentRangeStart, CommentRangeEnd i Comment. Wszystkie te węzły są wbudowane. Pierwsze dwa węzły hermetyzują treść dokumentu, do której odwołuje się komentarz, jak widać na zrzucie ekranu poniżej.

Sam węzeł **Comment** jest plikiem [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/), który może zawierać akapity i przebiegi. Reprezentuje treść komentarza widzianą jako dymek komentarza w okienku recenzji. Ponieważ ten węzeł jest wbudowany i jest potomkiem treści, możesz także wyodrębnić treść z wnętrza tej wiadomości.

Komentarz obejmuje nagłówek, pierwszy akapit i tabelę w drugiej sekcji. Wyodrębnijmy ten komentarz do nowego dokumentu. Opcja **IsInclusive** określa, czy sam komentarz ma zostać zachowany, czy odrzucony.

Poniższy przykład kodu pokazuje, jak to zrobić:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Jak wyodrębnić zawartość za pomocą DocumentVisitor

Użyj klasy [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/), aby zaimplementować ten scenariusz użycia. Klasa ta odpowiada dobrze znanemu wzorcowi projektowemu Visitor. Dzięki **DocumentVisitor** **,** możesz definiować i wykonywać niestandardowe operacje wymagające wyliczenia w drzewie dokumentu.

**DocumentVisitor** udostępnia zestaw metod **VisitXXX**, które są wywoływane w przypadku napotkania określonego elementu dokumentu (węzła). Na przykład format [VisitParagraphStart](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphstart/) jest wywoływany po znalezieniu początku akapitu tekstowego, a format [VisitParagraphEnd](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphend/) jest wywoływany po znalezieniu końca akapitu tekstowego. Każda metoda **DocumentVisitor.VisitXXX** akceptuje odpowiedni obiekt, który napotka, więc możesz go użyć w razie potrzeby (powiedzmy pobrać formatowanie), np. zarówno **DocumentVisitor.VisitParagraphStart**, jak i **DocumentVisitor.VisitParagraphEnd** akceptują obiekt [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/).

Każda metoda **DocumentVisitor.VisitXXX** zwraca wartość [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/), która kontroluje wyliczanie węzłów. Można zażądać kontynuacji wyliczania, pominięcia bieżącego węzła (ale kontynuowania wyliczania) lub zatrzymania wyliczania węzłów.

Oto kroki, które należy wykonać, aby programowo określić i wyodrębnić różne części dokumentu:

- Utwórz klasę pochodzącą z **DocumentVisitor**
- Zastąp i zapewnij implementacje niektórych lub wszystkich metod **DocumentVisitor.VisitXXX** w celu wykonania niektórych niestandardowych operacji
- Wywołaj [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/) na węźle, od którego chcesz rozpocząć wyliczenie, np. jeśli chcesz wyliczyć cały dokument, użyj [Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/)

**DocumentVisitor** zapewnia domyślne implementacje wszystkich metod **DocumentVisitor.VisitXXX**. Ułatwia to tworzenie nowych osób odwiedzających dokument, ponieważ należy zastąpić tylko metody wymagane dla konkretnego odwiedzającego. Nie jest konieczne zastępowanie wszystkich metod odwiedzających.

Poniższy przykład pokazuje, jak użyć wzorca Visitor w celu dodania nowych operacji do modelu obiektowego Aspose.Words. W tym przypadku tworzymy prosty konwerter dokumentów do formatu tekstowego:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Jak wyodrębnić tylko tekst

Sposoby pobierania tekstu z dokumentu to:

- Użyj [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) z [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/), aby zapisać jako zwykły tekst w pliku lub strumieniu
- Użyj [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) i przekaż parametr **SaveFormat.Text**. Wewnętrznie wywołuje to zapis jako tekst w strumieniu pamięci i zwraca wynikowy ciąg
- Użyj [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/), aby pobrać tekst ze wszystkimi znakami kontrolnymi Microsoft Word, w tym kodami pól
- Zaimplementuj niestandardowy [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/), aby przeprowadzić niestandardową ekstrakcję

### Korzystanie z `Node.GetText` i `Node.ToString`

Dokument programu Word może zawierać znaki sterujące, które oznaczają elementy specjalne, takie jak pole, koniec komórki, koniec sekcji itp. Pełna lista możliwych znaków sterujących programu Word jest zdefiniowana w klasie **ControlChar**. Metoda **Node.GetText** zwraca tekst zawierający wszystkie znaki sterujące obecne w węźle.

Wywołanie **ToString** zwraca tylko reprezentację dokumentu w postaci zwykłego tekstu, bez znaków kontrolnych. Więcej informacji na temat eksportowania jako zwykły tekst można znaleźć w następnej sekcji **"Korzystanie z SaveFormat.Text"**.

Poniższy przykład kodu pokazuje różnicę pomiędzy wywoływaniem metod **GetText** i **ToString** w węźle:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### Korzystanie z `SaveFormat.Text`

W tym przykładzie dokument zapisuje się w następujący sposób:

- Filtruje znaki i kody pól, kształty, przypisy dolne, przypisy końcowe i odniesienia do komentarzy
- Zastępuje znaki **ControlChar.Cr** końca akapitu kombinacjami **ControlChar.CrLf**
- Używa kodowania UTF8

Poniższy przykład kodu pokazuje, jak zapisać dokument w formacie TXT:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## Wyodrębnij obrazy z kształtów

Wykonanie niektórych zadań może wymagać wyodrębnienia obrazów dokumentów. Aspose.Words pozwala również to zrobić.

Poniższy przykład kodu pokazuje, jak wyodrębnić obrazy z dokumentu:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}