---
title: Znajdź i zastąp Java
second_title: Aspose.Words zamiast Java
articleTitle: Znajdź i zastąp
linktitle: Znajdź i zastąp
type: docs
description: "Znajdź ciąg znaków lub wzorzec wyrażenia regularnego w dokumencie i zastąp go tekstem, którego używasz Java."
weight: 100
url: /pl/java/find-and-replace/
---

Można łatwo poruszać się w obrębie dokumentu za pomocą klawiatury i myszy, ale jeśli masz wiele stron do przewinięcia, to zajmie sporo czasu, aby znaleźć określony tekst w długim dokumencie. Będzie to bardziej czasochłonne, gdy chcesz zastąpić niektóre znaki lub słowa, które zostały użyte w dokumencie. Funkcja "Znajdź i zastąp" pozwala znaleźć sekwencję znaków w dokumencie i zastąpić ją inną sekwencją znaków.

Aspose.Words pozwala na znalezienie określonego łańcucha lub wzoru wyrażeń regularnych w dokumencie i zastąpienie go alternatywą bez instalowania i przy użyciu dodatkowych aplikacji, takich jak: Microsoft Word. To przyspieszy wiele zadań maszynopisania i formatowania, potencjalnie oszczędzając godziny pracy.

Ten artykuł wyjaśnia, jak stosować wymianę strun i wyrażenia regularne przy wsparciu metacharacter.

## Sposoby znalezienia i zastąpienia {#ways-to-find-and-replace}

Aspose.Words zapewnia dwa sposoby zastosowania wyszukiwania i wymiany operacji za pomocą:

1. * Proste zastępowanie strun * - aby znaleźć i zastąpić określony łańcuch innym, musisz określić łańcuch wyszukiwania (znaki alfanumeryczne), który zostanie zastąpiony zgodnie ze wszystkimi zdarzeniami innym określonym łańcuchem zastępczym. Oba łańcuchy nie mogą zawierać symboli. Należy wziąć pod uwagę, że porównanie strun może być wrażliwe na przypadek, lub można nie być pewnym pisowni lub mieć kilka podobnych pisowni.
2. * Wyrażenia regularne * - aby określić wyrażenie regularne, aby znaleźć dokładne dopasowanie łańcuchów i zastąpić je zgodnie z wyrażeniem regularnym. Należy zauważyć, że słowo jest zdefiniowane jako składające się wyłącznie z znaków alfanumerycznych. Jeśli zamiana jest wykonywana z dopasowanymi tylko całymi słowami i łańcuch wejściowy zawiera symbole, wtedy nie zostaną znalezione żadne zwroty.

Ponadto można użyć specjalnych metacharaktorów z prostym wymianą strun i wyrażeniami regularnymi, aby określić przerwy w operacji wyszukiwania i wymiany.

Aspose.Words prezentuje funkcje wyszukiwania i wymiany z [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). Możesz pracować z wieloma opcjami podczas wyszukiwania i zastępowania procesu za pomocą [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) Klasa.

### Znajdź i zastąp tekst za pomocą prostej wymiany strun {#find-and-replace-text-using-simple-string-replacement}

Można użyć jednego z [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) metody odnalezienia lub zastąpienia danego łańcucha i zwrócenia liczby dokonanych wymian. W tym przypadku możesz określić łańcuch, który ma być zastąpiony, łańcuch, który zastąpi wszystkie jego zdarzenia, czy zamiana jest wrażliwa na przypadek i czy tylko samodzielne słowa będą miały wpływ.

Poniższy przykład kodu pokazuje jak znaleźć łańcuch "_ CustomerName _" i zastąpić go łańcuchem * "James Bond" *:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Możesz zauważyć różnicę między dokumentem przed zastosowaniem prostej wymiany łańcucha:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

I po zastosowaniu prostej wymiany strun:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Znajdź i zastąp tekst używając wyrażeń regularnych {#find-and-replace-text-using-regular-expressions}

Wyrażenie regularne (regex) jest wzorem opisującym pewną sekwencję tekstu. Załóżmy, że chcesz zastąpić wszystkie podwójne wystąpienia słowa pojedynczym wyrazem. Następnie można zastosować następujące wyrażenie regularne, aby określić wzór duble- słowo: `([a-zA-Z]+) \1`.

Użyj drugiego [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) metoda wyszukiwania i zastępowania poszczególnych kombinacji znaków przez ustawienie `Regex` parametr jako wzorzec wyrażenia regularnego do znalezienia dopasowania.

Poniższy przykład kodu pokazuje, jak zastąpić łańcuchy pasujące do wzoru wyrażenia regularnego określonym łańcuchem zastępczym:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Możesz zauważyć różnicę między dokumentem przed zastosowaniem wymiany łańcucha wyrażeń regularnych:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

I po zastosowaniu wymiany strun z wyrażeniami regularnymi:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Znajdź i zastąp String używając Metacharacters {#find-and-replace-text-using-metacharacters}

Możesz użyć metacharaktorów w łańcuchu wyszukiwania lub w łańcuchu zastępczym, jeśli dany tekst lub zdanie składa się z wielu akapitów, sekcji lub stron. Niektóre metacharaktory obejmują **&p** dla przerwy w wyciągu, **&b** na przerwę w sekcji, **&m** dla przerwy na stronie, oraz **&l** Na przerwę w kolejce.

{{% alert color="primary" %}}

Należy zauważyć, że metacharacter **&&** równa się **&**. Na przykład, jeśli trzeba znaleźć tekst dla **&p** to nie jest przerwa na paragraf, wtedy można użyć **&&p**.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak zastąpić tekst akapitem i przerwą na stronie:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Znajdź i zastąp String w nagłówku / Footer dokumentu {#find-and-replace-string-in-header-or-footer-of-a-document}

Można znaleźć i zastąpić tekst w sekcji nagłówka / stopki dokumentu Word za pomocą [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) Klasa.

Poniższy przykład kodu pokazuje jak zastąpić tekst sekcji nagłówka w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Możesz zauważyć różnicę między dokumentem przed zastosowaniem zmiany nagłówka:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

I po zastosowaniu wymiany nagłówka:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Przykład kodu zastępujący tekst sekcji stopki w dokumencie jest bardzo podobny do poprzedniego przykładu kodu nagłówka. Wszystko, co musisz zrobić, to zastąpić następujące dwie linie:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Następujące elementy:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Można zauważyć różnicę między dokumentem przed zastosowaniem wymiany znaków stopki:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

I po zastosowaniu wymiany strun stopki:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Ignoruj tekst podczas wyszukiwania i zamiany {#ignore-text-during-find-and-replace}

Podczas stosowania operacji wyszukiwania i wymiany, można zignorować niektóre segmenty tekstu. Tak więc, niektóre części tekstu mogą być wyłączone z wyszukiwania, a znalezienie i wymiana mogą być stosowane tylko do pozostałych części.

Aspose.Words zapewnia wiele właściwości wyszukiwania i wymiany dla ignorowania tekstu, takich jak [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), oraz [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

Poniższy przykład kodu pokazuje jak ignorować tekst wewnątrz usunąć poprawki:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Dostosuj operację Znajdź i zastąp {#customize-find-and-replace-operation}

Aspose.Words zapewnia wiele różnych [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) znaleźć i zastąpić tekst taki jak stosowanie określonego formatu [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) oraz [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) właściwości, za pomocą substytucji w wzorach zamiennych z [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) nieruchomości i innych.

Poniższy przykład kodu pokazuje, jak podkreślić konkretne słowo w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words pozwala na użycie [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) interfejs do tworzenia i wywoływania niestandardowych metod podczas operacji wymiany. Możesz mieć kilka przypadków użycia, gdzie trzeba dostosować wyszukiwania i wymiany operacji, takich jak zastąpienie tekstu określonego wyrażeniem regularnym z znacznikami HTML, więc w zasadzie będzie stosować zastępowanie z wstawiania HTML.

Jeśli trzeba zastąpić łańcuch znacznikiem HTML, należy zastosować **IReplacingCallback** interfejs, aby dostosować operację wyszukiwania i wymiany tak mecz zaczyna się na początku uruchomienia z węzłem dopasowania dokumentu. Podajmy kilka przykładów użycia **IReplacingCallback**.

Poniższy przykład kodu pokazuje jak zastąpić tekst określony w HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Poniższy przykład kodu pokazuje, jak podkreślić liczby dodatnie z zielonym kolorem i liczby ujemne z czerwonym kolorem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Poniższy przykład kodu pokazuje, jak prepremiować numer linii do każdej linii:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
