---
title: Praca z hifenacją w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z hifenacją
linktitle: Praca z hifenacją
description: "Używać hyfenation dla bardziej kompaktowego układu tekstu. Zapewnia zaawansowane algorytmy do pracy ze słownikami hifenacyjnymi, używa słowników OpenOffice za pomocą Java."
type: docs
weight: 220
url: /pl/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Czasami konieczne jest użycie hyfenation dla bardziej kompaktowego rozmieszczenia tekstu w dokumencie. Jednocześnie ważne jest, aby zrozumieć, że specyfika słowa hyfenation może się różnić dla każdego języka.

Obecnie hifenacja nie jest stosowana tak często, jak kiedyś, szczególnie w tekstach angielskich. Niemniej jednak użycie tej funkcji może mieć poważny wpływ na dokumenty użytkownika - hifenacja wpływa na układ i, w rezultacie, wygląd plików wyjściowych, na przykład w formacie PDF.

Do prawidłowego podziału słów używane są słowniki hifenacyjne specyficzne dla języka. Aspose.Words wykorzystuje zaawansowane algorytmy do pracy z takimi słownikami i pozwala uzyskać ten sam hyfenation jak w Microsoft Word.

## Słowniki hifenacji

Ponieważ różne języki używają różnych norm i zasad w odniesieniu do hyfenacji słowa, optymalnym rozwiązaniem dla prawidłowego hifenacji jest użycie specjalnych słowników. Aspose.Words używa słowników OpenOffice.

Do sprawdzania pisowni OpenOffice używa [Hunspell biblioteka](https://hunspell.github.io/), co jest uogólnieniem algorytmu hifenacji TeX. Algorytm ten pozwala na automatyczną niestandardową hifenację przy użyciu konkurencyjnych wzorców standardowych i niestandardowych. Hunspell wykorzystuje [Hyphen](https://github.com/hunspell/hyphen) do hifenacji.

{{% alert color="primary" %}}

Słowniki hifenacyjne można pobrać z [LibreOffice słowniki GitHub](https://github.com/LibreOffice/dictionaries). Na przykład: [en- US słownik hifening](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

As Microsoft Word używa słowników innych niż słowniki OpenOffice do wykonywania hyfenation, hyfenation niektórych słów określonych przez słowniki OpenOffice może różnić się od Microsoft Word hifenacja. Z tego powodu, czasami musimy doradzać klientom, aby dodali niezbędne wzory do ich słowników w celu ustalenia hyfenalizacji poszczególnych słów.

{{% /alert %}}

## Hifenacja Algorytm

Aspose.Words narzędzia [algorytm hifenonia TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) i może ponownie używać słowników hyfenation OpenOffice.

Następujące cechy Aspose.Words należy uwzględnić algorytmy:

* Parametry odległości hifenacji (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTYFENMIN, COMPoUNDRIGHYPHENMIN) podany w słowniku hifenacji są ignorowane. Aspose.Words wykorzystuje własny zestaw parametrów odległości w zależności od trybu kompatybilności dokumentu.
* Algorytm hifenacji w Aspose.Words wsparcie [Hyfenacja kompozytowa](https://github.com/hunspell/hyphen/blob/master/README.compound). Jednakże, Aspose.Words rozdziela sekwencje znaków zawierające mieszane znaki alfabetyczne i niealfabetyczne na części tylko alfabetyczne (słowa) i łączy je oddzielnie.
  Zauważ, że Microsoft Word logika hifenacji złożonych słów zależy od trybu kompatybilności dokumentu.
* Algorytm hifenacji w Aspose.Words nie wdraża [niestandardowa hifenacja](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Niestandardowe wzory są ignorowane.

## Wczytywanie słowników hifenacji

Aby skorzystać z funkcji hifenacji, najpierw zarejestruj słownik hifenacji. Poniższy przykład kodu pokazuje jak załadować słowniki hifenacyjne dla określonych języków z pliku:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje jak załadować słowniki hifenacyjne dla określonego języka ze strumienia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Jako alternatywa dla prerejestracyjnych słowników hifenacyjnych, można zarejestrować tylko wymagane słowniki hifenacyjne "na życzenie". Aby to osiągnąć, należy wdrożyć [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) interfejs i używać statycznego połączenia zwrotnego [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

Poniższy przykład kodu pokazuje, jak wdrożyć **IHyphenationCallback** interfejs:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Wpływ nadmiaru na układ

Rozdzielając tekst na linie, Aspose.Words sprawdza każde słowo, czy pasuje całkowicie do bieżącej linii. Jeśli inne słowo jest zbyt długie, aby zmieścić się na końcu linii, domyślnie Aspose.Words przesuwa go na początek następnej linii zamiast hifenacji.

Jednak funkcja hifenacji może być stosowana w Aspose.Words umieszczanie hypenów w słowach w celu usunięcia luk w uzasadnionym tekście lub utrzymania równomiernej długości linii w wąskich kolumnach. Może to oczywiście mieć wpływ na liczbę linii, a tym samym na liczbę stron. Innymi słowy, użycie funkcji hifenacji wpływa na układ dokumentu.

## Hifenacja i uzasadnienie (H & J)

Microsoft Word ma skomplikowaną logikę wyboru punktu przełomowego, jeśli tekst jest uzasadniony i hyfenacja jest włączona. Krótko mówiąc, Microsoft Word może preferować kurczenie lub rozciąganie przestrzeni, aby uniknąć hifenacji linii. Prawdopodobnie ta logika opiera się na [Artykuł Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementuje własny algorytm H & J, który daje ten sam wynik co Microsoft Word i zapewnia identyczne złamanie linii w dokumencie wyjściowym.

## Zobacz również

* [Hyphen - biblioteka hipnonia](https://github.com/hunspell/hyphen/blob/master/README)
* [Hifenacja niestandardowa](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatyczne niestandartowe hifenacje w otwartym biurze](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
