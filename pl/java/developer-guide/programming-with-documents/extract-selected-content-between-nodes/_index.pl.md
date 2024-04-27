---
title: Wyciąg Wybrana zawartość między węzłami w Java
second_title: Aspose.Words zamiast Java
articleTitle: Wyciąg zawartości między węzłami w dokumencie
linktitle: Zawartość ekstraktu pomiędzy węzłami
type: docs
description: "Wyciąganie zawartości dokumentu w różnych zastosowaniach Java."
weight: 140
url: /pl/java/extract-selected-content-between-nodes/
---

Podczas pracy z dokumentami ważne jest, aby móc łatwo wyodrębnić zawartość z określonego zakresu w ramach dokumentu. Treść może jednak składać się ze złożonych elementów, takich jak akapity, tabele, obrazy itp.

Niezależnie od tego, jaką zawartość należy ekstrahować, metoda ekstrakcji tej zawartości zawsze będzie określana przez które węzły są wybierane do ekstrahowania zawartości. Mogą to być całe ciała tekstowe lub proste operacje tekstowe.

Istnieje wiele możliwych sytuacji, a zatem wiele różnych typów węzłów do rozważenia podczas ekstrakcji treści. Na przykład, możesz chcieć wyodrębnić zawartość pomiędzy:

- Dwa szczegółowe akapity
- Specyficzny ciąg tekstu
- Pola różnych typów, takie jak pola łączenia
- Rozpocznij i zakończ zakresy zakładek lub komentarzy
- Różne części tekstu zawarte w oddzielnych sekcjach

W niektórych sytuacjach może być nawet konieczne połączenie różnych typów węzłów, takich jak pobieranie zawartości pomiędzy akapitem a polem, lub pomiędzy biegiem a zakładką.

Ten artykuł zawiera implementację kodu do ekstrakcji tekstu pomiędzy różnymi węzłami, jak również przykłady wspólnych scenariuszy.

{{% alert color="primary" %}}

Przykłady te to tylko kilka pokazów wielu możliwości. Planujemy, aby funkcje ekstrakcji tekstu były częścią społeczeństwa API w przyszłości i nie będzie wymagany dodatkowy kod. W międzyczasie, uprzejmie zamieścić swoje żądania dotyczące tej funkcjonalności na [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Why Extract content

Często celem ekstrakcji treści jest powielenie lub zapisanie jej oddzielnie w nowym dokumencie. Na przykład można pobrać zawartość i:

- Skopiuj to do oddzielnego dokumentu
- Konwersja określonej części dokumentu na PDF lub obraz
- Wielokrotnie kopiuje zawartość dokumentu
- Praca z ekstrahowaną zawartością oddzielną od reszty dokumentu

Można to łatwo osiągnąć używając Aspose.Words oraz wdrożenie kodu poniżej.

## Wyciąganie algorytmu zawartości

Kod w tej sekcji odnosi się do wszystkich możliwych sytuacji opisanych powyżej za pomocą jednej uogólnionej i powtarzalnej metody. Ogólny zarys tej techniki obejmuje:

1. Gromadzenie węzłów, które dyktują obszar treści, które zostaną wydobyte z dokumentu. Pobieranie tych węzłów jest obsługiwane przez użytkownika w ich kodzie, w oparciu o to, co chcą być ekstrahowane.
1. Przejście tych węzłów do **ExtractContent** metoda przedstawiona poniżej. Należy również podać parametr boolean, który określa, czy węzły te, działające jako markery, powinny być włączone do ekstrakcji, czy nie.
1. Pobieranie listy sklonowanych treści (skopiowanych węzłów), które mają być ekstrahowane. Możesz użyć tej listy węzłów w dowolny sposób, na przykład, tworząc nowy dokument zawierający tylko wybraną zawartość.

## Jak wyodrębnić zawartość

Będziemy pracować z dokumentu poniżej w tym artykule. Jak widać zawiera on wiele różnych treści. Uwaga: dokument zawiera drugą sekcję zaczynającą się na środku pierwszej strony. Zakładka i komentarz są również obecne w dokumencie, ale nie są widoczne na ekranie poniżej.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

Aby wyodrębnić zawartość z dokumentu należy zadzwonić `ExtractContent` metoda poniżej i przekazać odpowiednie parametry.

Podstawą tej metody jest znalezienie węzłów poziomu blokady (akapity i tabele) i klonowanie ich do tworzenia identycznych kopii. Jeśli przepuszczane węzły znacznikowe są block- level, to metoda jest w stanie po prostu skopiować zawartość na tym poziomie i dodać ją do tablicy.

Jeżeli jednak węzły znacznikowe są wtykowe (dziecko akapitu), sytuacja staje się bardziej skomplikowana, ponieważ konieczne jest podzielenie akapitu na węzeł inline, czy to bieganie, zakładki itp. Usuwa się zawartość w sklonowanych węzłach macierzystych niewystępujących pomiędzy znacznikami. Proces ten jest stosowany w celu zapewnienia, że węzły inline nadal zachowują formatowanie punktu macierzystego.

Metoda będzie również przeprowadzać kontrole węzłów przekazywanych jako parametry i rzuca wyjątek, jeśli jeden z węzłów jest nieprawidłowy. Parametry, które należy przekazać tej metodzie, to:

1. **StartNode** oraz **EndNode**. Pierwsze dwa parametry to węzły, które określają, gdzie ma rozpocząć się ekstrakcja zawartości i zakończyć się odpowiednio. Węzły te mogą być obydwoma poziomami bloku ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) lub poziom inline (np. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) itd.):
   1. Aby przejść przez pole należy przejść odpowiednie **FieldStart** obiekt.
   1. Aby przekazać zakładki, **BookmarkStart** oraz [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) Należy przejść przez węzły.
   1. Aby przekazać uwagi, [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) oraz [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) Należy stosować węzły.
1. **IsInclusive**. Określa, czy markery są włączone do ekstrakcji, czy nie. Jeśli ta opcja jest ustawiona na false i ten sam węzeł lub kolejne węzły są przekazywane, następnie zostanie zwrócona pusta lista:

      1. **FieldStart** node jest przekazywany następnie ta opcja określa, czy całe pole ma być włączone lub wyłączone.
      1. **BookmarkStart** lub **BookmarkEnd** node jest przekazywany, ta opcja określa, czy zakładka jest włączona, czy tylko zawartość pomiędzy zakresem zakładek.
      1. **CommentRangeStart** lub **CommentRangeEnd** node jest przekazywany, ta opcja określa, czy komentarz ma być włączony, czy tylko zawartość w zakresie komentarzy.

Wdrożenie **ExtractContent** metody można znaleźć [Tutaj](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Metoda ta zostanie uwzględniona w scenariuszach zawartych w niniejszym artykule.

Zdefiniujemy również metodę niestandardową, aby łatwo wygenerować dokument z wyciągniętych węzłów. Metoda ta jest stosowana w wielu scenariuszach poniżej i po prostu tworzy nowy dokument i importuje do niego wydobytą zawartość.

Poniższy przykład kodu pokazuje jak wziąć listę węzłów i umieścić je w nowym dokumencie:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Wyciąg zawartości między ustępami

Wskazuje to, w jaki sposób stosować powyższą metodę w celu wyodrębnienia zawartości pomiędzy poszczególnymi akapitami. W tym przypadku chcemy wyodrębnić ciało listu znalezionego w pierwszej połowie dokumentu. Możemy powiedzieć, że jest to między 7 a 11 akapitem.

Poniższy kod realizuje to zadanie. Właściwe ustępy są ekstrahowane z wykorzystaniem [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) metoda na dokumencie i przekazywanie określonych wskaźników. Następnie przenosimy te węzły do **ExtractContent** metoda i stwierdzenie, że mają one zostać włączone do ekstrakcji. Metoda ta zwróci skopiowaną zawartość pomiędzy tymi węzłami, które następnie zostaną dodane do nowego dokumentu.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość między konkretnymi akapitami za pomocą `ExtractContent` Metoda powyżej:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Dokument wyjściowy zawiera dwa akapity, które zostały wydobyte.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Wyciąg zawartość między różnymi rodzajami węzłów

Możemy wyodrębnić zawartość pomiędzy dowolnymi kombinacjami węzłów block- level lub inline. W tym scenariuszu poniżej wyodrębnimy treść między akapitem pierwszym a tabelą w sekcji drugiej łącznie. Dostajemy węzły znaczników dzwoniąc [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) oraz [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) metoda na drugiej części dokumentu w celu pobrania odpowiedniej **Paragraph** oraz **Table** węzły. W przypadku niewielkich zmian powielmy zawartość i wstawimy poniżej oryginału.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość między akapitem i tabelą za pomocą **ExtractContent** Metoda:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Poniżej podsumowano treść akapitu i tabeli.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Wyciąg zawartości między ustępami W oparciu o styl

Może być konieczne wyodrębnienie zawartości między akapitami tego samego lub innego stylu, np. między akapitami oznaczonymi stylami nagłówków.

Poniższy kod pokazuje, jak to osiągnąć. Jest to prosty przykład, który wyciąga zawartość między pierwszą instancją stylów "Nagłówek 1" i "Nagłówek 3" bez wyciągania nagłówków. Aby to zrobić, ustawiamy ostatni parametr na false, który określa, że węzły znacznikowe nie powinny być włączone.

W prawidłowym wykonaniu powinno to być prowadzone w pętli w celu wyodrębnienia treści pomiędzy wszystkimi akapitami tych stylów z dokumentu. Wydobyta zawartość jest kopiowana do nowego dokumentu.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość między akapitami z konkretnych stylów za pomocą **ExtractContent** Metoda:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Poniżej przedstawiono wynik poprzedniej operacji.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Zawartość ekstraktu pomiędzy poszczególnymi biegami

Można pobrać zawartość między węzłami inline, takich jak **Run** Jak również. **Runs** z różnych punktów mogą być przekazywane jako markery. Poniższy kod pokazuje jak wyodrębnić określony tekst pomiędzy tymi samymi **Paragraph** węzeł.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość pomiędzy poszczególnymi ruchami tego samego akapitu za pomocą **ExtractContent** Metoda:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Wyekstrahowany tekst jest wyświetlany na konsoli

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Wyciągnij zawartość używając pola

Aby użyć pola jako markera, `FieldStart` Należy przejść przez węzeł. Ostatni parametr `ExtractContent` metoda określa, czy całe pole ma być włączone, czy nie. Wyciągnijmy zawartość pomiędzy polem "FullName" a akapitem w dokumencie. Używamy [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) metody [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Klasa. To zwróci **FieldStart** węzeł z nazwy pola scalenia przeszedł do niego.

W naszym przypadku ustawmy ostatni parametr przekazywany do **ExtractContent** metoda false wyłączenie pola z ekstrakcji. Dodamy ekstrahowaną zawartość do PDF.

Poniższy przykład kodu pokazuje, jak wyodrębnić zawartość pomiędzy określonym polem i paragrafem w dokumencie za pomocą **ExtractContent** Metoda:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Wyekstrahowana zawartość pomiędzy polem a akapitem, bez pól i węzłów znaczników paragrafów, które są przekazywane do PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Wyciągnij zawartość z zakładki

W dokumencie zawartość, która jest zdefiniowana w zakładce jest zamykana przez `BookmarkStart` i węzły BookmarkEnd. Zawartość znaleziona pomiędzy tymi dwoma węzłami tworzy zakładkę. Możesz przekazać jeden z tych węzłów jako każdy marker, nawet jeden z różnych zakładek, o ile znacznik początkowy pojawi się przed znacznikiem kończącym w dokumencie.

W naszym przykładowym dokumencie mamy jedną zakładkę o nazwie "Bookmark1". Zawartość tej zakładki jest podświetlana w naszym dokumencie:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

Wyciągniemy tę zawartość do nowego dokumentu używając poniższego kodu. W **IsInclusive** opcja parametru pokazuje jak zachować lub wyrzucić zakładkę.

Poniższy przykład kodu pokazuje jak wyodrębnić zawartość, do której odnosi się zakładka **ExtractContent** Metoda:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Wyjście ekstrahowane z `IsInclusive` parametr ustawiony na true. Kopia zachowa również zakładkę.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

Wyjście ekstrahowane z **IsInclusive** parametr ustawiony na false. Kopia zawiera zawartość, ale bez zakładki.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Wyciąg zawartości z komentarza

Komentarz składa się z węzłów CommentRangeStart, CommentRangeEnd i Comment. Wszystkie węzły są w linii. Pierwsze dwa węzły umieszczają zawartość w dokumencie, do którego odnosi się komentarz, jak widać w poniższym zrzucie ekranu.

W **Comment** sam węzeł jest [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) które mogą zawierać paragrafy i działa. Jest to przesłanie komentarza postrzegane jako bańka komentarza w panelu przeglądu. Ponieważ węzeł ten jest inline i potomkiem ciała można również wydobyć zawartość z wewnątrz tej wiadomości, jak również.

W naszym dokumencie mamy jeden komentarz. Pokażmy to pokazując znaczniki w zakładce Przegląd:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

Komentarz obejmuje nagłówek, pierwszy akapit oraz tabelę w sekcji drugiej. Wyciągnijmy ten komentarz do nowego dokumentu. W **IsInclusive** opcja dyktuje, czy komentarz jest przechowywany lub odrzucany.

Poniżej przedstawiono poniższy przykład kodu:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Po pierwsze ekstrahowane wyjście z `IsInclusive` parametr ustawiony na true. Kopia zawiera również komentarz.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

Po drugie, ekstrahowana produkcja **isInclusive** ustawiony na false. Kopia zawiera treść, ale bez komentarza.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Wyciągnij zawartość używając DocumentVisitor

Aspose.Words może być stosowany nie tylko do tworzenia Microsoft Word dokumenty budując je dynamicznie lub łącząc szablony z danymi, ale również do przetwarzania dokumentów w celu wyodrębnienia oddzielnych elementów dokumentów, takich jak nagłówki, stopki, akapity, tabele, obrazy i inne. Innym możliwym zadaniem jest znalezienie tekstu określonego formatowania lub stylu.

Użyj [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) klasy do wdrożenia tego scenariusza użytkowania. Klasa ta odpowiada dobrze znanemu wzorowi projektowemu Odwiedzających. Z [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), można zdefiniować i wykonać niestandardowe operacje, które wymagają wyliczenia nad drzewem dokumentów.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) zawiera zestaw **VisitXXX** metody, które są wywoływane przy napotkaniu określonego elementu dokumentu (węzła). Na przykład: [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) jest wywoływany przy odnalezieniu początku akapitu tekstowego oraz [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) jest wywoływany w momencie znalezienia końca akapitu tekstowego. Każdy **DocumentVisitor.VisitXXX** metoda akceptuje odpowiedni obiekt, który napotyka, więc można go używać w razie potrzeby (powiedzmy pobrać formatowanie), np. oba [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) oraz [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) Zaakceptuj [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) obiekt.

Każdy **DocumentVisitor.VisitXXX** metoda zwraca a **VisitorAction** wartość kontrolująca wyliczenie węzłów. Możesz poprosić o kontynuowanie wyliczania, pominięcie bieżącego węzła (ale kontynuuj wyliczanie) lub zatrzymanie wyliczania węzłów.

Są to kroki, które należy wykonać, aby programowo określić i wyodrębnić różne części dokumentu:

- Utwórz klasę pochodzącą z [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Pominięcie i zapewnić implementacje dla niektórych lub wszystkich **DocumentVisitor.VisitXXX** metody wykonywania niestandardowych operacji.
- Call [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) na węźle, skąd chcesz zacząć wyliczanie. Na przykład, jeśli chcesz zapisać cały dokument, użyj [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) zapewnia domyślną implementację dla wszystkich **DocumentVisitor.VisitXXX** metody. Ułatwia to tworzenie nowych dokumentów odwiedzających, ponieważ tylko metody wymagane dla danego odwiedzającego muszą być nadane. Nie jest konieczne lekceważenie wszystkich metod odwiedzających.

Poniższy przykład pokazuje jak używać wzorca Odwiedzający, aby dodać nowe operacje do Aspose.Words model obiektu. W tym przypadku tworzymy prosty konwerter dokumentów w formacie tekstowym:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Wyciąg tekstu Tylko

Sposoby pobierania tekstu z dokumentu są następujące:

- Stosowanie [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) z [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) aby zapisać jako zwykły tekst do pliku lub strumienia
- Stosowanie [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) i przejść `SaveFormat.Text` parametr. Wewnętrznie, przywołuje zapis jako tekst do strumienia pamięci i zwraca otrzymany ciąg
- Stosowanie [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) aby pobrać tekst ze wszystkimi Microsoft Word znaki kontrolne, w tym kody pól
- Wdrożenie zwyczaju [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) do wykonywania niestandardowych ekstrakcji

### Stosowanie `Node.GetText` oraz `Node.ToString`

A Dokument Word może zawierać znaki kontrolne, które wyznaczają specjalne elementy, takie jak pole, koniec komórki, koniec sekcji itp. Pełna lista możliwych znaków kontroli słowa jest zdefiniowana w **ControlChar** Klasa. W [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) metoda zwraca tekst ze wszystkimi znakami znaków sterowania obecnymi w węźle.

Wywołanie ToString zwraca proste przedstawienie tekstu dokumentu tylko bez znaków kontrolnych. Dalsze informacje na temat wywozu w formie zwykłego tekstu znajdują się w: **Using SaveFormat.Text**.

Poniższy przykład kodu pokazuje różnicę pomiędzy wywołaniem **GetText** oraz [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) metody na węźle:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Stosowanie `SaveFormat.Text`

Ten przykład zapisuje dokument w następujący sposób:

- Filtruje znaki i kody pól, kształt, przypis, notatkę końcową i odniesienia do komentarzy
- Zastępuje koniec ustępu [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) znaki z [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) kombinacje
- Używa kodowania UTF8

Poniższy przykład kodu pokazuje jak zapisać dokument w formacie TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Wyciągnij obrazy z kształtów

Może być konieczne pobranie obrazów dokumentów, aby wykonać niektóre zadania. Aspose.Words pozwala na to również.

Poniższy przykład kodu pokazuje jak wyodrębnić obrazy z dokumentu:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}