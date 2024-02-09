---
title: Wymagania dotyczące pamięci
second_title: Aspose.Words dla .NET
articleTitle: Wymagania dotyczące pamięci
linktitle: Wymagania dotyczące pamięci
description: "Ile pamięci wymaga Aspose.Words dla .NET do pracy z dokumentami? Poznaj szczegóły."
type: docs
weight: 10
url: /pl/net/memory-requirements/
---

Aspose.Words zapewnia szeroką gamę funkcji do pracy z dokumentami w różnych formatach. Należy pamiętać, że nie ma ograniczeń co do maksymalnego rozmiaru pliku dokumentu, który Aspose.Words może przetworzyć lub wyrenderować. Jedynym ograniczeniem jest ilość pamięci RAM (pamięci) dostępnej po Twojej stronie.

## Ile pamięci potrzebuje Aspose.Words

Zwykle Aspose.Words potrzebuje kilka razy więcej pamięci niż rozmiar dokumentu, aby zbudować model dokumentu w pamięci. Na przykład, jeśli rozmiar dokumentu wynosi 1 MB, Aspose.Words potrzebuje 10–20 MB pamięci RAM, aby utworzyć w pamięci plik Document Object Model (DOM). Mnożnik zależy od formatu, ponieważ niektóre formaty są bardziej zwarte niż inne. Na przykład DOCX jest bardziej kompaktowy niż DOC i RTF, a DOC jest bardziej kompaktowy niż RTF.

Nie ma dokładnego sposobu oszacowania, ile pamięci faktycznie zużywa Aspose.Words podczas przetwarzania konkretnego pliku dokumentu. Jak zapewne wiesz, .NET przechowuje dane w klasach, każda instancja klasy wykorzystuje część pamięci do wewnętrznych celów CLR. Zatem każdy akapit lub sformatowany tekst (nawet składający się z jednego znaku) zajmuje dodatkową pamięć po załadowaniu do pliku DOM. Co więcej, silnik zbierający elementy bezużyteczne .NET wykorzystuje złożony algorytm do określenia najlepszego czasu na zebranie pamięci, co utrudnia określenie rzeczywistego zużycia pamięci.

## Jak obliczyć ilość pamięci

Rozważmy dwa dokumenty:

1. Dokument DOCX "A" – rozmiar 0,35 MB (2 tys. stron), tylko tekst
2. Dokument DOCX "B" – rozmiar 0,35 MB (tylko 1 strona), zawierający obraz PNG

Jak wiadomo, wiele nowoczesnych formatów, takich jak DOCX, ODT itp., to proste archiwa ZIP. Otrzymujemy więc następujący algorytm obliczeniowy:
1. Rozpakowanie. Rozpakowany dokument "A" ma rozmiar 20 MB, dokument "B" ma rozmiar 0,4 MB
2. Załadowanie dokumentu do modelu (budowanie jego Document Object Model – DOM):
* Utworzenie DOM pierwszego dokumentu "A" wymaga rozmiaru 49 MB
* Utworzenie DOM drugiego dokumentu "B" wymaga jedynie rozmiaru 2 MB.
3. Pomiar wymaganej ilości pamięci do renderowania tych dokumentów do formatu PDF. Do tej operacji Aspose.Words wymaga:
  * 294 MB dla dokumentu "A"
  * 7 MB dla dokumentu "B"

Jak więc widać, nie ma liniowej zależności od rozmiaru dokumentu wejściowego. Istnieje wiele czynników, które mogą mieć wpływ na wymagany rozmiar pamięci RAM – format dokumentu, jego złożoność i struktura, liczba obrazów i ich format oraz wiele innych czynników.

## Jak najdokładniej obliczyć mnożnik pamięci

Eksperymenty z tysiącami prawdziwych dokumentów pokazują, że standard Aspose.Words wymaga zazwyczaj kilka razy więcej pamięci niż średni rozmiar dokumentu do zbudowania modelu dokumentu w pamięci i wykonania prostych operacji, takich jak konwersja między formatami przepływu, mail merge, parsowanie, zamiana i tak dalej. Czasami mówimy o mnożniku 2, a czasami 20.

Bardziej złożone operacje, takie jak renderowanie (konwersja do ustalonych formatów strony), aktualizacja pól, dzielenie strony i inne, w przypadku niektórych dokumentów wymagają 20 razy więcej zasobów niż pamięć przydzielona przez dokument załadowany w formacie Aspose.Words DOM.

Jeśli wyniki Twojego profilowania wskazują na możliwy problem z pamięcią w Aspose.Words, skontaktuj się z naszym [Pomoc techniczna](/words/pl/net/technical-support/) i załącz wszystkie informacje diagnostyczne.

## Zobacz też

* [Zmierz wykorzystanie pamięci w formacie Visual Studio (C#, Visual Basic, C++, F#)](https://learn.microsoft.com/en-us/visualstudio/profiling/memory-usage?view=vs-2022)
* [Wykonanie](/words/pl/net/rendering/)
* [Mail Merge i raportowanie](https://docs.aspose.com/words/net/mail-merge-and-reporting/)
* [Praca z polami](/words/pl/net/working-with-fields/)