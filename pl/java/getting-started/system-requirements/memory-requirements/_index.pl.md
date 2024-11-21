---
title: Wymagania dotyczące pamięci
second_title: Aspose.Words zamiast Java
articleTitle: Wymagania dotyczące pamięci
linktitle: Wymagania dotyczące pamięci
description: "Ile pamięci robi Aspose.Words zamiast Java wymagać pracy z dokumentami? Dowiedz się szczegółów."
type: docs
weight: 10
url: /pl/java/memory-requirements/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words zapewnia szeroki zakres funkcji do pracy z dokumentami w różnych formatach. Należy zauważyć, że nie ma ograniczeń co do maksymalnej wielkości pliku dokumentu, który Aspose.Words może przetwarzać lub renderować. Jedynym ograniczeniem jest ilość pamięci RAM dostępnej po Twojej stronie.

## Ile pamięci Aspose.Words Potrzeby

Zazwyczaj Aspose.Words potrzebuje kilku razy więcej pamięci niż rozmiar dokumentu, aby zbudować model dokumentu w pamięci. Na przykład, jeśli Twój rozmiar dokumentu to 1 MB, Aspose.Words potrzebuje 10- 20 MB pamięci RAM do budowy Document Object Model (DOM) w pamięci. Mnożnik zależy od formatu, ponieważ niektóre formaty są bardziej kompaktowe niż inne. Na przykład DOCX jest bardziej kompaktowy niż DOC i RTF, a DOC jest bardziej kompaktowy niż RTF.

Nie ma dokładnego sposobu, aby oszacować ile pamięci Aspose.Words faktycznie zużywa podczas przetwarzania każdego konkretnego pliku dokumentu. Jak pewnie wiesz Java przechowuje dane w klasach, każda instancja klasy używa pamięci dla JVM (Java wirtualna maszyna) cele wewnętrzne. Więc każdy akapit lub sformatowany tekst (nawet składa się z jednego znaku) wymaga dodatkowej pamięci po załadowaniu do DOM. Ponadto Java silnik kolektora śmieci używa złożonego algorytmu do określenia najlepszego czasu na wykonanie kolekcji pamięci, co utrudnia określenie rzeczywistego zużycia pamięci.

## Jak obliczyć ilość pamięci

Rozważmy dwa dokumenty:

1. DOCX "A" dokument - 0.35 MB rozmiar (2 tysiące stron), tekst tylko
2. DOCX "B" dokument - rozmiar 0,35 MB (tylko 1 strona), z obrazkiem PNG wewnątrz

Jak wiecie, wiele nowoczesnych formatów, takich jak DOCX, ODT, itp. to proste archiwa ZIP. Dostajemy następujący algorytm obliczeniowy:
1. Odpinanie. Odpinany dokument "A" ma rozmiar 20 MB, dokument "B" ma rozmiar 0,4 MB
2. Ładowanie dokumentu do modelu (budowa jego Document Object Model - DOM):
* Tworzenie DOM pierwszego dokumentu "A" wymaga rozmiaru 49 MB
* Tworzenie DOM drugiego dokumentu "B" wymaga tylko 2 MB wielkości.
3. Pomiar wymaganej ilości pamięci w celu przekazania tych dokumentów do PDF. Dla tej operacji, Aspose.Words wymaga:
  * 294 MB dla dokumentu "A"
  * 7 MB dla dokumentu "B"

Jak widzicie, nie ma liniowej zależności od wielkości dokumentu wejściowego. Istnieje wiele czynników, które mogą wpływać na wymagany rozmiar RAM - format dokumentu, jego złożoność i struktura, liczba obrazów i ich format, i wiele innych czynników.

## Jak obliczyć mnożnik pamięci najbardziej dokładne

Eksperymenty z tysiącami prawdziwych dokumentów pokazują, że zazwyczaj Aspose.Words wymaga kilkakrotnie więcej pamięci niż przeciętny rozmiar dokumentu do budowy modelu dokumentu w pamięci i wykonywania prostych operacji, takich jak konwersja między formatami przepływu, mail merge, Parse, zastąp i tak dalej. Czasami mówimy o mnożniku 2, a czasem 20.

Bardziej złożone operacje, takie jak renderowanie (przekształcenie na stałe formaty stron), aktualizacja pól, podział strony, i inne, dla niektórych dokumentów wymagają 20 razy więcej zasobów niż pamięci przydzielonej przez dokument załadowany w Aspose.Words DOM.

Jeśli wyniki profilowania wskazują na możliwe problemy pamięci w Aspose.Words, prosimy o kontakt z naszym [Wsparcie techne](/words/pl/java/technical-support/) i zawierać wszystkie informacje diagnostyczne.

## Zobacz również

* [Renderowanie](/words/pl/java/rendering/)
* [Mail Merge i świętości](/words/java/mail-merge-and-reporting/)
* [Praca z Fields](/words/pl/java/working-with-fields/)
