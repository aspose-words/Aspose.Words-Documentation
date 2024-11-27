---
title: Znajdź i zamień w C++
second_title: Aspose.Words dla C++
articleTitle: Znajdź i zamień
linktitle: Znajdź i zamień
type: docs
description: "Znajdź ciąg znaków lub wzorzec wyrażenia regularnego w dokumencie i zastąp go tekstem, który chcesz, używając C++."
weight: 100
url: /pl/cpp/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Możesz łatwo poruszać się po dokumencie za pomocą klawiatury i myszy, ale jeśli masz wiele stron do przewinięcia, znalezienie określonego tekstu w długim dokumencie zajmie trochę czasu. Będzie to bardziej czasochłonne, gdy chcesz zastąpić określone znaki lub słowa użyte w dokumencie. Funkcja "Znajdź i zamień" umożliwia znalezienie sekwencji znaków w dokumencie i zastąpienie jej inną sekwencją znaków.

Aspose.Words umożliwia znalezienie określonego ciągu lub wzorca wyrażeń regularnych w dokumencie i zastąpienie go alternatywą bez instalowania i używania dodatkowych aplikacji, takich jak Microsoft Word. Przyspieszy to wiele zadań pisania i formatowania, potencjalnie oszczędzając godziny pracy.

W tym artykule wyjaśniono, jak stosować zastępowanie ciągów i wyrażenia regularne przy pomocy metaznaków.

## Sposoby znajdowania i zastępowania {#ways-to-find-and-replace}

Aspose.Words udostępnia dwa sposoby zastosowania operacji znajdź i zamień za pomocą następujących:

1. *Simple string replacement* - aby znaleźć i zastąpić określony ciąg innym, musisz określić ciąg wyszukiwania (znaki alfanumeryczne), który zostanie zastąpiony zgodnie ze wszystkimi wystąpieniami innym określonym ciągiem zastępczym. Oba ciągi nie mogą zawierać symboli. Weź pod uwagę, że porównanie ciągów może uwzględniać wielkość liter lub możesz nie mieć pewności co do pisowni lub mieć kilka podobnych pisowni.
2. *Regular expressions* - aby określić Wyrażenie regularne, aby znaleźć dokładne dopasowania ciągów i zastąpić je zgodnie z wyrażeniem regularnym. Zauważ, że słowo jest zdefiniowane jako składające się tylko ze znaków alfanumerycznych. Jeśli zamiana jest wykonywana z dopasowaniem tylko całych słów, a ciąg wejściowy zawiera symbole, nie zostaną znalezione żadne frazy.

Ponadto możesz użyć specjalnych metaznaków z prostym zastępowaniem ciągów i wyrażeniami regularnymi, aby określić podziały w operacji znajdź i zamień.

Aspose.Words przedstawia funkcję Znajdź i zamień na [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing) przestrzeń nazw. Możesz pracować z wieloma opcjami podczas procesu znajdź i zamień przy użyciu klasy [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/).

### Znajdź i zamień tekst za pomocą prostego zastępowania ciągów {#find-and-replace-text-using-simple-string-replacement}

Możesz użyć jednej z metod [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/), aby znaleźć lub zastąpić określony ciąg i zwrócić liczbę wykonanych zamienników. W takim przypadku można określić ciąg, który ma zostać zastąpiony, ciąg, który zastąpi wszystkie jego wystąpienia, czy w zastępstwie rozróżniana jest wielkość liter i czy wpłynie to tylko na samodzielne słowa.

Poniższy przykład kodu pokazuje, jak znaleźć ciąg "_CustomerName_" i zastąpić go ciągiem *"James Bond"*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

Możesz zauważyć różnicę między dokumentem przed zastosowaniem prostej wymiany ciągu:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

I po zastosowaniu prostej wymiany Sznurka:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### Znajdź i zamień tekst za pomocą wyrażeń regularnych {#find-and-replace-text-using-regular-expressions}

Wyrażenie regularne (regex) to wzorzec opisujący określoną sekwencję tekstu. Załóżmy, że chcesz zastąpić wszystkie podwójne wystąpienia słowa jednym wystąpieniem słowa. Następnie możesz zastosować następujące wyrażenie regularne, aby określić wzór podwójnego słowa: `([a-zA-Z]+) \1`.

Użyj innej metody [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/), aby wyszukać i zastąpić określone kombinacje znaków, ustawiając parametr `Regex` jako wzorzec wyrażenia regularnego, aby znaleźć dopasowania.

Poniższy przykład kodu pokazuje, jak zastąpić ciągi pasujące do wzorca wyrażenia regularnego określonym ciągiem zastępczym:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

Możesz zauważyć różnicę między dokumentem przed zastosowaniem zamiany ciągu NA wyrażenia regularne:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

I po zastosowaniu zamiany ciągu NA wyrażenia regularne:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### Znajdź i zamień ciąg za pomocą metaznaków {#find-and-replace-text-using-metacharacters}

Możesz użyć metaznaków w ciągu wyszukiwania lub ciągu zastępczego, jeśli określony tekst lub fraza składa się z wielu akapitów, sekcji lub stron. Niektóre metaznaki obejmują **&p** dla podziału akapitu, **&b** dla podziału sekcji, **&m** dla podziału strony i **&l** dla podziału wiersza.

{{% alert color="primary" %}}

Zauważ, że metaznak **&&** jest równy **&**. Na przykład, jeśli chcesz znaleźć tekst dla **&p**, który nie jest podziałem akapitu, możesz użyć **&&p**.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zastąpić tekst akapitem i podziałem strony:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## Znajdź i zamień ciąg w nagłówku / stopce dokumentu {#find-and-replace-string-in-header-or-footer-of-a-document}

Możesz znaleźć i zastąpić tekst w sekcji Nagłówek/Stopka dokumentu Word przy użyciu klasy [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/).

Poniższy przykład kodu pokazuje, jak zastąpić tekst sekcji nagłówka w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

Możesz zauważyć różnicę między dokumentem przed zastosowaniem zamiany ciągu nagłówka:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

I po zastosowaniu wymiany ciągu nagłówka:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Przykład kodu zastępujący tekst sekcji stopki w dokumencie jest bardzo podobny do poprzedniego przykładu kodu nagłówka. Wszystko, co musisz zrobić, to zastąpić następujące dwie linie:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

Z następującymi:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

Możesz zauważyć różnicę między dokumentem przed zastosowaniem zamiany ciągu stopki:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

I po zastosowaniu stopki ciąg wymiana:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## Ignoruj tekst podczas wyszukiwania i zamiany {#ignore-text-during-find-and-replace}

Podczas stosowania operacji znajdź i zamień możesz zignorować niektóre segmenty tekstu. Tak więc niektóre części tekstu można wykluczyć z wyszukiwania, A wyszukiwanie i zastępowanie można zastosować tylko do pozostałych części.

Aspose.Words zapewnia wiele właściwości znajdź i zamień dla ignorowania tekstu, takich jak [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), i [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

Poniższy przykład kodu pokazuje, jak ignorować tekst wewnątrz delete revisions:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## Dostosuj operację znajdź i zamień {#customize-find-and-replace-operation}

Aspose.Words zapewnia wiele różnych [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) do znajdowania i zastępowania tekstu, takich jak stosowanie określonego formatu za pomocą właściwości [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) i [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), używanie podstawień we wzorcach zastępowania za pomocą właściwości [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) i innych.

Poniższy przykład kodu pokazuje, jak wyróżnić określone słowo w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words umożliwia użycie interfejsu [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) do tworzenia i wywoływania metody niestandardowej podczas operacji zastąpienia. Możesz mieć pewne przypadki użycia, w których musisz dostosować operację znajdź i zamień, takie jak zastąpienie tekstu określonego wyrażeniem regularnym znacznikami HTML, więc zasadniczo zastosujesz zamień na wstawienie HTML.

Jeśli chcesz zastąpić ciąg tagiem HTML, Zastosuj interfejs **IReplacingCallback**, aby dostosować operację znajdź i Zamień, aby dopasowanie rozpoczynało się na początku uruchomienia z węzłem dopasuj dokumentu. Podajmy kilka przykładów użycia **IReplacingCallback**.

Poniższy przykład kodu pokazuje, jak zastąpić określony tekst HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

Poniższy przykład kodu pokazuje, jak wyróżnić liczby dodatnie kolorem zielonym i liczby ujemne kolorem czerwonym:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

Poniższy przykład kodu pokazuje, jak dodać numer wiersza do każdego wiersza:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
