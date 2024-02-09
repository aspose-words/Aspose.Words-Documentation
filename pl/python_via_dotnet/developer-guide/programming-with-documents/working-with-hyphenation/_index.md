---
title: Praca z dzieleniem wyrazów w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z dzieleniem wyrazów
linktitle: Praca z dzieleniem wyrazów
description: "Użyj dzielenia wyrazów, aby uzyskać bardziej zwarty układ tekstu w formacie Python. Zapewnia zaawansowane algorytmy do pracy ze słownikami dzielenia wyrazów, wykorzystuje słowniki OpenOffice."
type: docs
weight: 220
url: /pl/python-net/working-with-hyphenation/
---

Czasami konieczne jest użycie dzielenia wyrazów, aby uzyskać bardziej zwarty układ tekstu w dokumencie. Jednocześnie ważne jest, aby zrozumieć, że specyfika dzielenia wyrazów może się różnić w zależności od języka.

Obecnie dzielenie wyrazów nie jest już stosowane tak często jak kiedyś, szczególnie w tekstach angielskich. Niemniej jednak użycie tej funkcji może mieć poważny wpływ na dokumenty użytkownika – dzielenie wyrazów wpływa na układ, a co za tym idzie na wygląd plików wyjściowych, na przykład w formacie PDF.

W celu prawidłowego podziału słów stosowane są słowniki dzielenia wyrazów specyficzne dla danego języka. Aspose.Words wykorzystuje zaawansowane algorytmy do pracy z takimi słownikami i pozwala uzyskać takie samo dzielenie wyrazów jak w Microsoft Word.

## Słowniki dzielenia wyrazów

Ponieważ w różnych językach obowiązują różne normy i zasady dzielenia słów, optymalnym rozwiązaniem dla prawidłowego dzielenia wyrazów jest korzystanie ze specjalnych słowników. Aspose.Words korzysta ze słowników OpenOffice.

Do sprawdzania pisowni OpenOffice używa [Biblioteka Hunspell](https://hunspell.github.io/), który jest uogólnieniem algorytmu dzielenia wyrazów TeX-a. Algorytm ten pozwala na automatyczne niestandardowe dzielenie wyrazów przy użyciu konkurencyjnych standardowych i niestandardowych wzorców dzielenia wyrazów. Hunspell używa formatu [Łącznik](https://github.com/hunspell/hyphen) do dzielenia wyrazów.

{{% alert color="primary" %}}

Słowniki dzielenia wyrazów można pobrać z [Słowniki LibreOffice GitHub](https://github.com/LibreOffice/dictionaries). Na przykład [en-amerykański słownik dzielenia wyrazów](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Ponieważ Microsoft Word używa do dzielenia wyrazów innych niż słowniki OpenOffice, dzielenie wyrazów niektórych słów zdefiniowanych w słownikach OpenOffice może różnić się od dzielenia wyrazów Microsoft Word. Z tego powodu czasami musimy doradzić klientom, aby dodali do swoich słowników niezbędne wzorce w celu poprawienia dzielenia poszczególnych słów.

{{% /alert %}}

## Algorytm dzielenia wyrazów

Aspose.Words implementuje [algorytm dzielenia wyrazów TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) i może ponownie wykorzystywać słowniki dzielenia wyrazów OpenOffice.

Należy wziąć pod uwagę następujące cechy algorytmów Aspose.Words:

* Parametry odległości dzielenia wyrazów (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) określone w słowniku dzielenia wyrazów są ignorowane. Aspose.Words wykorzystuje własny zestaw parametrów odległości w zależności od trybu zgodności dokumentu.
* Algorytm dzielenia wyrazów w Aspose.Words obsługuje [dzielenie wyrazów złożonych](https://github.com/hunspell/hyphen/blob/master/README.compound). Jednak Aspose.Words dzieli sekwencje znaków zawierające mieszane znaki alfabetyczne i niealfabetyczne na części składające się wyłącznie z alfabetu (słowa) i dzieli je osobno.
  Należy pamiętać, że logika Microsoft Word dzielenia wyrazów złożonych zależy od trybu zgodności dokumentu.
* Algorytm dzielenia wyrazów w Aspose.Words nie implementuje [niestandardowe dzielenie wyrazów](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Wzory niestandardowe są ignorowane.

## Ładowanie słowników dzielenia wyrazów

Aby skorzystać z funkcji dzielenia wyrazów, najpierw zarejestruj słownik dzielenia wyrazów. Poniższy przykład kodu pokazuje, jak załadować słowniki dzielenia wyrazów dla określonych języków z pliku:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak załadować słowniki dzielenia wyrazów dla określonego języka ze strumienia:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Wpływ dzielenia wyrazów na układ

Dzieląc tekst na linie, Aspose.Words sprawdza każde słowo, czy mieści się w całości w bieżącym wierszu. Jeśli inne słowo jest zbyt długie, aby zmieścić się na końcu linii, Aspose.Words domyślnie przenosi je na początek następnej linii, zamiast je dzielić.

Jednakże funkcji dzielenia wyrazów można używać w Aspose.Words do wstawiania łączników do słów, aby wyeliminować luki w wyjustowanym tekście lub zachować równą długość linii w wąskich kolumnach. Może to oczywiście wpłynąć na liczbę wierszy, a tym samym na liczbę stron. Innymi słowy, użycie funkcji dzielenia wyrazów wpływa na układ dokumentu.

## Dzielenie wyrazów i justowanie (H&amp;J)

Microsoft Word ma złożoną logikę wyboru punktu przerwania, jeśli tekst jest wyjustowany i włączone jest dzielenie wyrazów. Krótko mówiąc, Microsoft Word może preferować zmniejszanie lub rozciąganie spacji, aby uniknąć dzielenia wierszy. Najprawdopodobniej ta logika opiera się na [artykuł Knutha](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementuje własny algorytm H&amp;J, który daje taki sam wynik jak Microsoft Word i zapewnia identyczne łamanie linii w dokumencie wyjściowym.

## Zobacz też

* [Łącznik – biblioteka dzielenia wyrazów](https://github.com/hunspell/hyphen/blob/master/README)
* [Niestandardowe dzielenie wyrazów](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatyczne niestandardowe dzielenie wyrazów w Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
