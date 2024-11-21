---
title: Konwersja do formatu PDF/A i PDF/UA
second_title: Aspose.Words dla .NET
articleTitle: Poznaj funkcje konwersji do formatu PDF/A i PDF/UA
linktitle: Poznaj funkcje konwersji do formatu PDF/A i PDF/UA
description: "Konwertuj do formatu PDF/A-1, PDF/A-2, PDF/A-4 i PDF/UA za pomocą C#. Wybierz najlepszy standard PDF, aby przekonwertować dokument za pomocą C#."
type: docs
weight: 25
url: /pl/net/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF to format o stałej stronie, który jest bardzo popularny wśród użytkowników i jest szeroko obsługiwany przez różne aplikacje, ponieważ dokument PDF wygląda tak samo na każdym urządzeniu. Z tego powodu konwersja do formatu PDF jest ważną funkcją Aspose.Words.

PDF sam w sobie jest formatem złożonym, ponieważ ma specyficzną strukturę pliku, model graficzny, osadzanie czcionek i pewne złożone funkcje wyjściowe, takie jak znaczniki struktury dokumentu, szyfrowanie, podpisy cyfrowe i formularze edytowalne. Ponadto konwersja dokumentu do formatu PDF wymaga kilku etapów obliczeń, które są złożone i czasochłonne.

W kolejnych artykułach rozważymy główne problemy, które mogą pojawić się podczas pracy z dokumentami w różnych standardach PDF i opiszemy możliwości ich rozwiązania.

## Który standard PDF obsługuje Aspose.Words

Aspose.Words umożliwia teraz użytkownikom pracę z formatami PDF/A-1, PDF/A-2 i PDF/A-4, a także PDF/UA-1:

* PDF/A-1 ma poważne ograniczenia, takie jak przezroczystość, a niektóre opcje kompresji są zabronione
* PDF/A-2 eliminuje niektóre ograniczenia formatu PDF/A-1, takie jak obsługa przezroczystości i efektów warstw czy osadzanie czcionek OpenType
* PDF/A-4 zakłada poprawiony poziom zgodności: zwykła zgodność PDF/A-4 jest równoważna zgodności z poziomem U poprzednich wersji, a zgodność na poziomie A została usunięta
* Treść PDF/UA-1 powinna być oznaczona i ujednolicona zgodnie z ISO 32000-1: 2008

PDF/A to ustandaryzowana w formacie ISO wersja pliku PDF przeznaczona do archiwizacji i długotrwałego przechowywania dokumentów elektronicznych. Jednocześnie PDF/UA jest kolejną wersją PDF zgodną ze standardem ISO, zaprojektowaną w celu zapewnienia dostępności osobom niepełnosprawnym korzystającym z technologii wspomagających. Aby określić poziom zgodności ze standardami PDF, użyj właściwości [Compliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/compliance/). Ze względu na warunki przechowywania dokument PDF/A musi zawierać wszystkie czcionki i wyłączyć szyfrowanie, podczas gdy dokument PDF/UA musi zawierać tylko wszystkie czcionki.

W tej sekcji przyjrzymy się bliżej pracy z dokumentami PDF/A lub PDF/UA-1.

## Odpowiednie standardy ISO dla PDF

Aby dowiedzieć się więcej na temat różnych standardów PDF, sprawdź następujące dokumenty ISO:

* PDF 1.7 = ISO-32000-1: 2008
* PDF 2.0 = ISO-32000-2: 2020
* PDF/A-1 = ISO-19005-1: 2005
* PDF/A-2 = ISO-19005-2: 2011
* PDF/A-4 = ISO-19005-4: 2020
* PDF/UA-1 = ISO-14289: 2014

## Zobacz też

* [Konwertuj dokument na format PDF](/words/pl/net/convert-a-document-to-pdf/)
* [Jak edytować znaczniki struktury dokumentu w Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Jak sprawdzić lub edytować język tekstu w Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Jak zmienić język tekstu w Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Jak dodać tekst alternatywny do kształtu, obrazu, wykresu, grafiki SmartArt lub innego obiektu w Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Jak dodać tekst alternatywny i informacje uzupełniające do tagów](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (lub przeczytaj te same informacje w [Podręcznik użytkownika Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Jak skonfigurować wpis ActualText dla tekstu](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), sekcja "Dodaj rzeczywisty tekst skróconego terminu, formuły lub symbolu innego niż Unicode"
* [Mapowanie Unicode dla popularnych czcionek symbolicznych Windows](http://www.alanwood.net/demos/webdings.html)
