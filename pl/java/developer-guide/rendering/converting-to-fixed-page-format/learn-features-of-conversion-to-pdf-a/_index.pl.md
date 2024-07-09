---
title: Konwersja na PDF / A i PDF / UA
second_title: Aspose.Words zamiast Java
articleTitle: Naucz się funkcji konwersji na PDF / A i PDF / UA
linktitle: Naucz się funkcji konwersji na PDF / A i PDF / UA
description: "Konwertuj na PDF / A-1, PDF / A-2, PDF / A-4 i PDF / UA używając Java. Wybierz najlepszy standard PDF do konwersji dokumentu za pomocą Java."
type: docs
weight: 25
url: /pl/java/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

PDF to stały format strony, który jest bardzo popularny wśród użytkowników i jest szeroko wspierany przez różne aplikacje, ponieważ dokument PDF wygląda tak samo na każdym urządzeniu. Z tego powodu przekształcenie w PDF jest ważną cechą Aspose.Words.

PDF sam w sobie jest złożonym formatem, ponieważ posiada specyficzną strukturę pliku, model graficzny, osadzanie czcionek oraz pewną skomplikowaną funkcjonalność wyjściową, taką jak tagi struktury dokumentów, szyfrowanie, podpisy cyfrowe oraz edytowalne formularze. Ponadto przekształcenie dokumentu w PDF wymaga kilku etapów obliczeniowych, które są skomplikowane i czasochłonne.

W tej części rozważamy główne problemy, które mogą pojawić się podczas pracy z dokumentami w różnych standardach PDF i opisujemy opcje ich rozwiązywania.

## Który PDF Standardowy Aspose.Words Obsługa

Aspose.Words teraz pozwala użytkownikom pracować z PDF / A-1, PDF / A-2 i PDF / A-4, a także PDF / UA-1:

* PDF / A-1 ma poważne ograniczenia, takie jak przejrzystość i niektóre opcje kompresji są zabronione
* PDF / A-2 eliminuje niektóre ograniczenia PDF / A-1, takie jak wsparcie przejrzystości i efektów warstw lub osadzanie czcionek OpenType
* PDF / A- 4 zakłada skorygowane poziomy zgodności: regularna zgodność PDF / A- 4 jest równoważna z poprzednimi wersjami 'poziom U conformance, a poziom A conformance jest usuwany
* Zawartość PDF / UA-1 powinny być oznaczone i standaryzowane zgodnie z ISO 32000-1: 2008

PDF / A jest ISO-standaryzowana wersja PDF przeznaczona do archiwizacji i długoterminowego przechowywania dokumentów elektronicznych. Jednocześnie PDF / UA jest innym ISO standaryzowana wersja PDF zaprojektowana w celu zapewnienia dostępności osobom niepełnosprawnym używającym technologii wspomagającej. Aby określić poziom zgodności ze standardami PDF, należy użyć [Compliance](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getCompliance) nieruchomości. Ze względu na warunki przechowywania dokument PDF / A musi osadzić wszystkie czcionki i wyłączyć szyfrowanie, podczas gdy PDF / UA musi osadzać tylko wszystkie czcionki.

W tej sekcji przyjrzymy się bliżej pracy z dokumentami PDF / A lub PDF / UA-1.

## Odpowiednie ISO dla PDF Normy

Aby dowiedzieć się więcej o różnych standardach PDF, sprawdź następujące ISOs:

- PDF 1,7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF / A-1 = ISO-19005-1: 2005
- PDF / A-2 = ISO-19005-2: 2011
- PDF / A- 4 = ISO- 19005- 4: 2020
- PDF / UA-1 = ISO-14289: 2014

## Zobacz również

* [Jak edytować tagi struktury dokumentu w Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Jak rozłożyć lub edytować jeden tekst w Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Jak zmniejsze dnie dal w Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Jak dodać tekst alternatny do kształtu, obrazu, wykresu, grafiki Intelegentne Art lub innego obiektu w Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Jak dodać alternatny tekst i informacje dotyczące wyników do znaczników](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (lub przeczytać te same informacje w [Adobe Acrobat Przewoźnicy dla użytkowników](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Jak skonfiguroować wpis ActualText dla projektu](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), sekcja "Dodaj rzeczywisty tekst dla skróconego terminu, wzoru lub symbolu Non-Unicode"
* [Mapowanie Unicode dla wszystkich Windows Czcionki symboliczne](http://www.alanwood.net/demos/webdings.html)
