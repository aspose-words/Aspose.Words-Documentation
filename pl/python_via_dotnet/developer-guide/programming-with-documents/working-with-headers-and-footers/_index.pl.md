---
title: Praca z nagłówkami i stopkami
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z nagłówkami i stopkami
linktitle: Praca z nagłówkami i stopkami
description: "Twórz, zarządzaj i usuwaj nagłówki i stopki w dokumencie za pomocą Python."
type: docs
weight: 150
url: /pl/python-net/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umożliwia użytkownikom pracę z nagłówkami i stopkami w dokumencie. Nagłówek to tekst umieszczany na górze strony, a stopka to tekst na dole strony. Zwykle w tych obszarach umieszczane są informacje, które powinny zostać powtórzone na wszystkich lub niektórych stronach dokumentu, takie jak numery stron, data utworzenia, informacje o firmie itp.

## Twórz nagłówki i stopki za pomocą narzędzia DocumentBuilder

Jeśli chcesz programowo dodać nagłówek lub stopkę dokumentu, najłatwiej jest to zrobić za pomocą klasy [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

Poniższy przykład kodu pokazuje, jak dodać nagłówek i stopkę do stron dokumentu:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "create-header-footer.py" >}}

## Określ opcje nagłówka lub stopki

Dodając nagłówek lub stopkę do dokumentu, możesz ustawić pewne zaawansowane właściwości. Aspose.Words zapewnia użytkownikom klasy [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) i [HeaderFooterCollection](https://reference.aspose.com/words/python-net/aspose.words/headerfootercollection/), a także wyliczenie [HeaderFooterType](https://reference.aspose.com/words/python-net/aspose.words/headerfootertype/), które zapewniają większą kontrolę nad procesem dostosowywania nagłówka i stopki.

### Określ typ nagłówka lub stopki

Dla jednego dokumentu możesz określić trzy różne typy nagłówków i trzy różne typy stopek:

1. Nagłówek i/lub stopka pierwszej strony
2. Nagłówek i/lub stopka stron parzystych
3. Nagłówek i/lub stopka stron nieparzystych

Poniższy przykład kodu pokazuje, jak dodać nagłówek dla nieparzystych stron dokumentu:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "header-footer-type.py" >}}

### Określ, czy na pierwszej stronie mają być wyświetlane różne nagłówki czy stopki

Jak powiedziano powyżej, możesz także ustawić inny nagłówek lub stopkę dla pierwszej strony. Aby to zrobić, musisz ustawić flagę [different_first_page_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/different_first_page_header_footer/) na `true`, a następnie określić wartość **HeaderFirst** lub **FooterFirst**.

Poniższy przykład kodu pokazuje, jak ustawić nagłówek tylko dla pierwszej strony:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "different-first-page.py" >}}

### Określ, czy wyświetlać różne nagłówki i stopki dla stron nieparzystych i parzystych

 Następnie będziesz chciał ustawić różne nagłówki i stopki dla stron nieparzystych i parzystych w dokumencie. Aby to zrobić należy ustawić flagę [odd_and_even_pages_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/odd_and_even_pages_header_footer/) na `true`, a następnie podać wartości **HeaderPrimary** i **HeaderEven** lub **FooterPrimary** i **FooterEven**.

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "odd-even-pages.py" >}}

### Wstaw obraz umieszczony całkowicie w nagłówku

Aby umieścić obraz w nagłówku lub stopce, użyj typu nagłówka **HeaderPrimary** lub typu stopki **FooterPrimary** i metody [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/).

Poniższy przykład kodu pokazuje, jak dodać obraz do nagłówka:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "insert-image.py" >}}

### Ustaw właściwości czcionki i akapitu dla tekstu nagłówka lub stopki

Dzięki Aspose.Words możesz ustawić właściwości czcionki i akapitu, użyć typu nagłówka **HeaderPrimary** lub typu stopki **FooterPrimary**, a także metod i właściwości do pracy z czcionkami i akapitami używanymi w treści dokumentu.

Poniższy przykład kodu pokazuje, jak ustawić tekst w nagłówku na Arial, pogrubienie, rozmiar 14 i wyrównanie do środka:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "font-props.py" >}}

### Wstaw numery stron do nagłówka lub stopki

W razie potrzeby możesz dodać numery stron do nagłówka lub stopki. Aby to zrobić, użyj typu nagłówka **HeaderPrimary** lub typu stopki **FooterPrimary** i metody [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), aby dodać wymagane pole.

Poniższy przykład kodu pokazuje, jak dodać numery stron do stopki po prawej stronie:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "page-numbers.py" >}}

### Użyj nagłówków i stopek zdefiniowanych w poprzedniej sekcji

Jeśli chcesz skopiować nagłówek lub stopkę z poprzedniej sekcji, możesz to również zrobić.

Poniższy przykład kodu pokazuje, jak skopiować nagłówek lub stopkę z poprzedniej sekcji:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "copy-headers-footers-from-previous-section.py" >}}

### Upewnij się, że nagłówek lub stopka mają wygląd w przypadku korzystania z różnych orientacji strony i rozmiaru strony

Aspose.Words umożliwia nadanie wyglądu nagłówka lub stopki w przypadku korzystania z różnych orientacji i rozmiarów strony.

Poniższy przykład pokazuje, jak to zrobić:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

## Jak usunąć tylko nagłówki lub tylko stopki

Każda sekcja dokumentu może mieć maksymalnie trzy nagłówki i maksymalnie trzy stopki (dla stron pierwszej, parzystej i nieparzystej). Jeśli chcesz usunąć wszystkie nagłówki lub wszystkie stopki w dokumencie, musisz przejść przez wszystkie sekcje i usunąć każdy odpowiedni węzeł nagłówka lub stopki.

Poniższy przykład kodu pokazuje, jak usunąć wszystkie stopki ze wszystkich sekcji, ale pozostawić nagłówki nienaruszone. W podobny sposób możesz usunąć tylko nagłówki:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "remove-footers.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}
