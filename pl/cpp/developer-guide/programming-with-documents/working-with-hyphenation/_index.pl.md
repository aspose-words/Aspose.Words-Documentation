---
title: Praca z dzielenia wyrazów w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z dzielenia wyrazów
linktitle: Praca z dzielenia wyrazów
description: "Użyj dzielenia wyrazów, aby uzyskać bardziej zwarty układ tekstu za pomocą C++. Zapewnia zaawansowane algorytmy do pracy ze słownikami dzielenia wyrazów, używa słowników OpenOffice."
type: docs
weight: 220
url: /pl/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

Czasami konieczne jest użycie dzielenia wyrazów, aby uzyskać bardziej zwarty układ tekstu w dokumencie. Jednocześnie ważne jest, aby zrozumieć, że specyfika dzielenia wyrazów może się różnić dla każdego języka.

Obecnie dzielenie wyrazów nie jest używane tak często, jak kiedyś, zwłaszcza w tekstach angielskich. Niemniej jednak korzystanie z tej funkcji może mieć poważny wpływ na dokumenty użytkownika – dzielenie wyrazów wpływa na układ, aw rezultacie na wygląd plików wyjściowych, na przykład w formacie PDF.

Do prawidłowego podziału słów używane są słowniki dzielenia wyrazów specyficzne dla języka. Aspose.Words wykorzystuje zaawansowane algorytmy do pracy z takimi słownikami i pozwala uzyskać takie same dzielenie wyrazów jak w Microsoft Word.

## Słowniki Dzielenia Wyrazów

Ponieważ różne języki używają różnych norm i zasad dzielenia wyrazów, optymalnym rozwiązaniem dla prawidłowego dzielenia wyrazów jest użycie specjalnych słowników. Aspose.Words używa OpenOffice słowników.

Do sprawdzania pisowni OpenOffice używa [Hunspell biblioteka](https://hunspell.github.io/), co jest uogólnieniem algorytmu dzielenia wyrazów TeX. Algorytm ten pozwala na automatyczne niestandardowe dzielenie wyrazów przy użyciu konkurencyjnych standardowych i niestandardowych wzorców dzielenia wyrazów. Hunspell używa [Łącznik](https://github.com/hunspell/hyphen) do dzielenia wyrazów.

{{% alert color="primary" %}}

Słowniki dzielenia wyrazów można pobrać z [LibreOffice słowniki GitHub](https://github.com/LibreOffice/dictionaries). Na przykład, [pl - US słownik dzielenia wyrazów](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Ponieważ Microsoft Word używa słowników innych niż OpenOffice słowniki do wykonywania dzielenia wyrazów, dzielenie wyrazów niektórych słów zdefiniowanych przez OpenOffice słowniki mogą różnić się od dzielenia wyrazów Microsoft Word. Z tego powodu czasami musimy doradzić klientom, aby dodali niezbędne wzorce do swoich słowników, aby naprawić dzielenie wyrazów poszczególnych słów.

{{% /alert %}}

## Algorytm Dzielenia Wyrazów

Aspose.Words narzędzia [algorytm dzielenia wyrazów TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) i może ponownie używać słowników dzielenia wyrazów OpenOffice.

Należy wziąć pod uwagę następujące cechy algorytmów Aspose.Words:

* Parametry odległości dzielenia wyrazów (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) podane w słowniku dzielenia wyrazów są ignorowane. Aspose.Words używa własnego zestawu parametrów odległości w zależności od trybu zgodności dokumentu.
* Algorytm dzielenia wyrazów w Aspose.Words obsługuje [łączniki złożone](https://github.com/hunspell/hyphen/blob/master/README.compound). Jednak Aspose.Words dzieli sekwencje znaków zawierające mieszane znaki alfabetyczne i niealfabetyczne na części Alfabetyczne (słowa) i dzieli je osobno.
  Zauważ, że Microsoft Word logika dzielenia wyrazów złożonych zależy od trybu zgodności dokumentu.
* Algorytm dzielenia wyrazów w Aspose.Words nie implementuje [niestandardowe dzielenie wyrazów](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Niestandardowe wzory są ignorowane.

## Ładowanie Słowników Dzielenia Wyrazów

Aby użyć funkcji dzielenia wyrazów, najpierw zarejestruj słownik dzielenia wyrazów.Poniższy przykład kodu pokazuje, jak załadować słowniki dzielenia wyrazów dla określonych języków z pliku:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak załadować słowniki dzielenia wyrazów dla określonego języka ze strumienia:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Jako alternatywę dla wstępnej rejestracji słowników dzielenia wyrazów, możliwe jest zarejestrowanie tylko wymaganych słowników dzielenia wyrazów "na żądanie". Aby to osiągnąć, zaimplementuj interfejs [IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/) i użyj statycznego wywołania zwrotnego [Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/).

Poniższy przykład kodu pokazuje, jak zaimplementować interfejs **IHyphenationCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## Wpływ dzielenia wyrazów na układ

Podczas dzielenia tekstu na wiersze Aspose.Words sprawdza każde słowo, czy pasuje całkowicie do bieżącego wiersza. Jeśli inne słowo jest zbyt długie, aby zmieścić się na końcu wiersza, Domyślnie Aspose.Words przenosi je na początek następnego wiersza zamiast dzielić je łącznikami.

Jednak funkcja dzielenia wyrazów może być użyta w Aspose.Words do wstawiania łączników do słów w celu wyeliminowania luk w uzasadnionym tekście lub utrzymania równej długości linii w wąskich kolumnach. Może to oczywiście wpłynąć na liczbę wierszy, a tym samym na liczbę stron. Innymi słowy, użycie funkcji dzielenia wyrazów wpływa na układ dokumentu.

## Dzielenie wyrazów i uzasadnienie (H & J)

Microsoft Word ma złożoną logikę wyboru punktu przerwania, jeśli tekst jest uzasadniony, a dzielenie wyrazów jest włączone. Krótko mówiąc, Microsoft Word może preferować zmniejszanie lub rozciąganie przestrzeni, aby uniknąć dzielenia linii. Najprawdopodobniej logika ta opiera się na [Artykuł Knutha](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementuje własny algorytm H & J, który daje taki sam wynik jak Microsoft Word i zapewnia identyczne łamanie linii w dokumencie wyjściowym.

## Zobacz także

* [Hyphen-biblioteka dzielenia wyrazów](https://github.com/hunspell/hyphen/blob/master/README)
* [Niestandardowe dzielenie wyrazów](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatyczne niestandardowe dzielenie wyrazów w Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
