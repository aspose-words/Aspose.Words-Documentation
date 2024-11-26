---
title: Wyodrębnij zawartość pomiędzy węzłami dokumentu
second_title: Aspose.Words dla Python
articleTitle: Wyodrębnij zawartość pomiędzy węzłami w dokumencie
linktitle: Wyodrębnij zawartość między węzłami
description: "Jak łatwo wyodrębnić określoną treść z zakresu w dokumencie za pomocą Python."
type: docs
weight: 140
url: /pl/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
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

Aby wyodrębnić treść z dokumentu należy wywołać poniższą metodę **ekstrakt_zawartość** i przekazać odpowiednie parametry. Podstawą tej metody jest znajdowanie węzłów na poziomie bloków (akapitów i tabel) i klonowanie ich w celu utworzenia identycznych kopii. Jeśli przekazane węzły znaczników są na poziomie bloków, metoda może po prostu skopiować zawartość na tym poziomie i dodać ją do tablicy.

Jeśli jednak węzły znaczników są wbudowane (potomek akapitu), sytuacja staje się bardziej złożona, ponieważ konieczne jest podzielenie akapitu w węźle wbudowanym, niezależnie od tego, czy jest to przebieg, pola zakładek itp. Treść w sklonowanych węzłach nadrzędnych nie obecny pomiędzy znacznikami jest usuwany. Proces ten ma na celu zapewnienie, że węzły wbudowane nadal zachowają formatowanie akapitu nadrzędnego. Metoda przeprowadzi również sprawdzenie węzłów przekazanych jako parametry i zgłosi wyjątek, jeśli którykolwiek z węzłów jest nieprawidłowy. Parametry, które należy przekazać do tej metody to:

1. **węzeł startowy** i **węzeł końcowy**. Pierwsze dwa parametry to węzły, które definiują, gdzie odpowiednio rozpoczyna się i kończy wyodrębnianie treści. Węzły te mogą być na poziomie blokowym ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) lub na poziomie wbudowanym (np. [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) itp.):
   1. Aby przekazać pole należy przekazać odpowiadający mu obiekt [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/).
   1. Aby przekazać zakładki należy przekazać węzły [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) i [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/).
   1. Do przekazywania komentarzy należy wykorzystać węzły [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) i [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/).
1. **jest inkluzywny**. Określa, czy znaczniki są uwzględniane w ekstrakcji, czy nie. Jeśli ta opcja jest ustawiona na false i przekazany zostanie ten sam węzeł lub kolejne węzły, wówczas zwrócona zostanie pusta lista:
   1. Jeżeli zostanie przekazany węzeł [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), opcja ta określa, czy całe pole ma zostać uwzględnione, czy wykluczone.
   1. Jeśli przekazany zostanie węzeł [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) lub [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/), ta opcja określa, czy uwzględniona zostanie zakładka, czy tylko zawartość znajdująca się pomiędzy zakresem zakładek.
   1. W przypadku przekazania węzła [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) lub [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) opcja ta określa, czy ma zostać uwzględniony sam komentarz, czy tylko treść w zakresie komentarza.

Implementację metody **ekstrakt_zawartość** można znaleźć w [Tutaj](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Ta metoda zostanie omówiona w scenariuszach w tym artykule.

Zdefiniujemy również niestandardową metodę łatwego generowania dokumentu z wyodrębnionych węzłów. Ta metoda jest używana w wielu poniższych scenariuszach i polega po prostu na utworzeniu nowego dokumentu i zaimportowaniu do niego wyodrębnionej zawartości.

Poniższy przykład kodu pokazuje, jak pobrać listę węzłów i wstawić je do nowego dokumentu:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Wyodrębnij treść pomiędzy akapitami

To pokazuje, jak użyć powyższej metody do wyodrębnienia treści pomiędzy określonymi akapitami. W tym przypadku chcemy wyodrębnić treść listu znajdującą się w pierwszej połowie dokumentu. Możemy powiedzieć, że jest to pomiędzy akapitem 7 a 11.

Poniższy kod realizuje to zadanie. Odpowiednie akapity są wyodrębniane z dokumentu metodą [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) i przekazują określone indeksy. Następnie przekazujemy te węzły do metody **ekstrakt_zawartość** i stwierdzamy, że mają one zostać uwzględnione w ekstrakcji. Ta metoda zwróci skopiowaną treść pomiędzy tymi węzłami, która zostanie następnie wstawiona do nowego dokumentu.

Poniższy przykład kodu pokazuje, jak wyodrębnić treść pomiędzy określonymi akapitami przy użyciu powyższej metody **ekstrakt_zawartość**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Wyodrębnij zawartość pomiędzy różnymi typami węzłów

Możemy wyodrębnić treść pomiędzy dowolną kombinacją poziomów blokowych lub węzłów wbudowanych. W poniższym scenariuszu wyodrębnimy zawartość pomiędzy pierwszym akapitem a tabelą w drugiej sekcji włącznie. Węzły znaczników uzyskujemy wywołując metody [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) i [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) w drugiej części dokumentu w celu pobrania odpowiednich węzłów [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) i [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Aby uzyskać niewielką odmianę, zduplikujmy treść i wstawmy ją pod oryginałem.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość między akapitem a tabelą przy użyciu metody **ekstrakt_zawartość**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Wyodrębnij treść między akapitami na podstawie stylu

Może zaistnieć potrzeba wyodrębnienia treści pomiędzy akapitami o tym samym lub innym stylu, na przykład pomiędzy akapitami oznaczonymi stylami nagłówków.

Poniższy kod pokazuje, jak to osiągnąć. Jest to prosty przykład, który wyodrębni zawartość pomiędzy pierwszym wystąpieniem stylów "Nagłówek 1" i "Nagłówek 3" bez wyodrębniania również nagłówków. Aby to zrobić, ustawiamy ostatni parametr na false, co określa, że węzły znaczników nie powinny być uwzględniane.

W prawidłowej implementacji powinno to zostać uruchomione w pętli, aby wyodrębnić zawartość pomiędzy wszystkimi akapitami tych stylów z dokumentu. Wyodrębniona treść jest kopiowana do nowego dokumentu.

Poniższy przykład kodu pokazuje, jak wyodrębnić treść pomiędzy akapitami o określonych stylach przy użyciu metody **ekstrakt_zawartość**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Wyodrębnij zawartość pomiędzy określonymi uruchomieniami

Możesz także wyodrębnić zawartość pomiędzy węzłami wbudowanymi, takimi jak [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). Jako znaczniki można przekazywać przebiegi z różnych akapitów. Poniższy kod pokazuje, jak wyodrębnić określony tekst pomiędzy tym samym węzłem [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

Poniższy przykład kodu pokazuje, jak wyodrębnić treść pomiędzy określonymi ciągami tego samego akapitu przy użyciu metody **ekstrakt_zawartość**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Wyodrębnij zawartość za pomocą pola

Aby użyć pola jako znacznika, należy przekazać węzeł [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/). Ostatni parametr metody **ekstrakt_zawartość** określa, czy ma zostać uwzględnione całe pole, czy nie. Wyodrębnijmy treść pomiędzy polem scalania "Imię i nazwisko" a akapitem w dokumencie. Używamy metody [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) klasy [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Spowoduje to zwrócenie węzła [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) z przekazanej mu nazwy pola scalania.

W naszym przypadku ustawmy ostatni parametr przekazywany do metody **ekstrakt_zawartość** na `False`, aby wykluczyć pole z ekstrakcji. Wyodrębnioną treść wyrenderujemy do formatu PDF.

Poniższy przykład kodu pokazuje, jak wyodrębnić treść pomiędzy określonym polem a akapitem w dokumencie przy użyciu metody **ekstrakt_zawartość**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Wyodrębnij zawartość z zakładki

W dokumencie treść zdefiniowana w zakładce jest hermetyzowana przez węzły [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) i [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/). Treść znaleziona pomiędzy tymi dwoma węzłami tworzy zakładkę. Możesz przekazać którykolwiek z tych węzłów jako dowolny znacznik, nawet z różnych zakładek, pod warunkiem, że znacznik początkowy pojawi się przed znacznikiem końcowym w dokumencie. Wyodrębnimy tę treść do nowego dokumentu, korzystając z poniższego kodu. Opcja parametru **jest inkluzywny** pokazuje, jak zachować lub odrzucić zakładkę.

Poniższy przykład kodu pokazuje, jak wyodrębnić treść odwołującą się do zakładki przy użyciu metody **ekstrakt_zawartość**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Wyodrębnij treść z komentarza

Komentarz składa się z węzłów [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) i [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Wszystkie te węzły są wbudowane. Pierwsze dwa węzły hermetyzują treść dokumentu, do której odwołuje się komentarz, jak widać na zrzucie ekranu poniżej. Sam węzeł [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) jest plikiem [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/), który może zawierać akapity i przebiegi. Reprezentuje treść komentarza widzianą jako dymek komentarza w okienku recenzji. Ponieważ ten węzeł jest wbudowany i jest potomkiem treści, możesz także wyodrębnić treść z wnętrza tej wiadomości.

Komentarz obejmuje nagłówek, pierwszy akapit i tabelę w drugiej sekcji. Wyodrębnijmy ten komentarz do nowego dokumentu. Opcja **jest inkluzywny** określa, czy sam komentarz ma zostać zachowany, czy odrzucony.

Poniższy przykład kodu pokazuje, jak to zrobić:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Jak wyodrębnić tylko tekst

Sposoby pobierania tekstu z dokumentu to:

- Użyj [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/), aby zapisać jako zwykły tekst w pliku lub strumieniu
- Użyj [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) i przekaż parametr [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text). Wewnętrznie wywołuje to zapis jako tekst w strumieniu pamięci i zwraca wynikowy ciąg
- Użyj [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/), aby pobrać tekst ze wszystkimi znakami kontrolnymi Microsoft Word, w tym kodami pól

### Używanie Node.get_text i Node.to_string

Dokument programu Word może zawierać znaki sterujące, które oznaczają elementy specjalne, takie jak pole, koniec komórki, koniec sekcji itp. Pełna lista możliwych znaków sterujących programu Word jest zdefiniowana w klasie [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/). Metoda [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) zwraca tekst zawierający wszystkie znaki sterujące występujące w węźle.

Wywołanie [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) zwraca tylko reprezentację dokumentu w postaci zwykłego tekstu, bez znaków kontrolnych. Aby uzyskać więcej informacji na temat eksportowania jako zwykły tekst, zobacz Korzystanie z formatu [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)

Poniższy przykład kodu pokazuje różnicę pomiędzy wywoływaniem metod [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) i [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) w węźle:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Korzystanie z `SaveFormat.Text`

W tym przykładzie dokument zapisuje się w następujący sposób:

- Filtruje znaki i kody pól, kształty, przypisy dolne, przypisy końcowe i odniesienia do komentarzy
- Zastępuje znaki **ControlChar.Cr** końca akapitu kombinacjami **ControlChar.CrLf**
- Używa kodowania UTF8

Poniższy przykład kodu pokazuje, jak zapisać dokument w formacie TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Wyodrębnij obrazy z kształtów

Wykonanie niektórych zadań może wymagać wyodrębnienia obrazów dokumentów. Aspose.Words pozwala również to zrobić.

Poniższy przykład kodu pokazuje, jak wyodrębnić obrazy z dokumentu:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
