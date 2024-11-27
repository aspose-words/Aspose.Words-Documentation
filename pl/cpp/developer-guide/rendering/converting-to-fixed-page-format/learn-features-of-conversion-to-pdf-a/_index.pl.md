---
title: Konwersja do PDF/A i PDF/UA
second_title: Aspose.Words dla C++
articleTitle: Poznaj funkcje konwersji do PDF/A i PDF/UA
linktitle: Poznaj funkcje konwersji do PDF/A i PDF/UA
description: "Konwertuj na PDF/A-1, PDF/A-2, PDF/A-4 i PDF/UA używając C++. Wybierz najlepszy standard PDF do konwersji dokumentu za pomocą С++."
type: docs
weight: 35
url: /pl/cpp/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF to stały format strony, który jest bardzo popularny wśród użytkowników i jest szeroko obsługiwany przez różne aplikacje, ponieważ dokument PDF wygląda tak samo na każdym urządzeniu. Z tego powodu konwersja do PDF jest ważną cechą Aspose.Words.

PDF sam w sobie jest złożonym formatem, ponieważ ma określoną strukturę plików, model graficzny, osadzanie czcionek i niektóre złożone funkcje wyjściowe, takie jak znaczniki struktury dokumentu, szyfrowanie, podpisy cyfrowe i edytowalne formularze. Ponadto konwersja dokumentu na PDF wymaga kilku etapów obliczeń, które są złożone i czasochłonne.

W tej sekcji rozważymy główne problemy, które mogą pojawić się podczas pracy z dokumentami w różnych standardach PDF i opiszemy opcje ich rozwiązania.

## Który PDF Standard Aspose.Words Obsługuje

Aspose.Words teraz pozwala użytkownikom pracować z formatami PDF/A-1, PDF/A-2 i PDF/A-4, a także PDF/UA-1:

* PDF/A-1 ma poważne ograniczenia, takie jak przezroczystość, a niektóre opcje kompresji są zabronione
* PDF/A-2 eliminuje niektóre ograniczenia PDF/A-1, takie jak obsługa przezroczystości i efektów warstw lub osadzanie czcionek OpenType
* PDF/A-4 zakłada poprawione poziomy zgodności: regularna zgodność PDF/A-4 jest równoważna zgodności poziomu u poprzednich wersji, a zgodność poziomu a jest usuwana
* PDF/UA-1 treść powinna być oznaczona i znormalizowana zgodnie z ISO 32000-1: 2008

PDF/A jest ISO-znormalizowaną wersją PDF przeznaczoną do archiwizacji i długotrwałego przechowywania dokumentów elektronicznych. Jednocześnie PDF/UA to kolejna ISO znormalizowana wersja PDF zaprojektowana w celu zapewnienia dostępności osobom niepełnosprawnym korzystającym z technologii wspomagających. Aby określić poziom zgodności ze standardami PDF, Użyj właściwości [Compliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/). Ze względu na warunki przechowywania PDF/A dokument musi osadzić wszystkie czcionki i wyłączyć szyfrowanie, podczas gdy PDF/UA musi osadzić tylko wszystkie czcionki.

W tej sekcji przyjrzymy się bliżej pracy z dokumentami PDF/A lub PDF/UA-1.

## Odpowiednie ISO dla PDF standardów

Aby dowiedzieć się więcej o różnych standardach PDF, Sprawdź następujące ISOs:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Zobacz także

* [Jak edytować znaczniki struktury dokumentu w Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Jak sprawdzić lub edytować język tekstu w Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Jak zmienić język tekstu w Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Jak dodać tekst alternatywny do kształtu, obrazu, wykresu, Grafiki SmartArt lub innego obiektu w Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Jak dodać tekst alternatywny i informacje uzupełniające do tagów](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (lub przeczytaj te same informacje w [Adobe Acrobat Podręcznik Użytkownika](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Jak skonfigurować wpis ActualText dla tekstu](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), sekcja "Dodaj rzeczywisty tekst dla skróconego terminu, formuły lub symbolu innego niż Unicode"
* [Mapowanie Unicode dla wspólnych czcionek symbolicznych Windows ](http://www.alanwood.net/demos/webdings.html)

