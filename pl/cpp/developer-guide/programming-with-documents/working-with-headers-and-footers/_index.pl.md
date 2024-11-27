---
title: Praca z nagłówkami i stopkami w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z nagłówkami i stopkami
linktitle: Praca z nagłówkami i stopkami
description: "Jak manipulować nagłówkami i stopkami za pomocą C++."
type: docs
weight: 150
url: /pl/cpp/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umożliwia użytkownikom pracę z nagłówkami i stopkami w dokumencie. Nagłówek to tekst umieszczony u góry strony, a stopka to tekst u dołu strony. Zazwyczaj te obszary służą do wstawiania informacji, które należy powtórzyć na wszystkich lub niektórych stronach dokumentu, takich jak numery stron, Data utworzenia, informacje o firmie i tak dalej.

## Utwórz nagłówki lub stopki za pomocą DocumentBuilder

Jeśli chcesz programowo dodać nagłówek lub stopkę dokumentu, najłatwiej jest użyć do tego klasy [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).

Poniższy przykład kodu pokazuje, jak dodać nagłówek i stopkę do stron dokumentu:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## Określ opcje nagłówka lub stopki

Po dodaniu nagłówka lub stopki do dokumentu można ustawić niektóre zaawansowane właściwości. Aspose.Words zapewnia użytkownikom klasy [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) i [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/), a także [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/) wyliczenie, które daje większą kontrolę nad procesem dostosowywania nagłówka i stopki.

### Określ typ nagłówka lub stopki

Dla jednego dokumentu można określić trzy różne typy nagłówków i trzy różne typy stopek:

1. Nagłówek i / lub stopka pierwszej strony
2. Nagłówek i / lub stopka dla parzystych stron
3. Nagłówek i / lub stopka dla stron nieparzystych

Poniższy przykład kodu pokazuje, jak dodać nagłówek dla nieparzystych stron dokumentu:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### Określ, czy na pierwszej stronie mają być wyświetlane różne nagłówki czy stopki

Jak wspomniano powyżej, możesz również ustawić inny nagłówek lub stopkę dla pierwszej strony. Aby to zrobić, musisz ustawić flagę [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) na `true`, a następnie podać wartość **HeaderFirst** lub **FooterFirst**.

Poniższy przykład kodu pokazuje, jak ustawić nagłówek tylko dla pierwszej strony:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### Określ, czy mają być wyświetlane różne nagłówki lub stopki dla stron nieparzystych czy parzystych

 Następnie będziesz chciał ustawić różne nagłówki lub stopki dla stron nieparzystych i parzystych w dokumencie. Aby to zrobić, musisz ustawić flagę [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) na `true`, a następnie określić wartości **HeaderPrimary** i **HeaderEven** lub **FooterPrimary** i **FooterEven**.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### Wstaw absolutnie umieszczony obraz do nagłówka

Aby umieścić obraz w nagłówku lub stopce, użyj **HeaderPrimary** typ nagłówka lub **FooterPrimary** Typ stopki i Metoda `InsertImage`.

Poniższy przykład kodu pokazuje, jak dodać obraz do nagłówka:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### Ustaw właściwości czcionki i akapitu dla tekstu nagłówka lub stopki

Za pomocą Aspose.Words możesz ustawić właściwości czcionki i akapitu, użyć typu Nagłówka **HeaderPrimary** lub typu Stopki **FooterPrimary**, a także metod i właściwości do pracy z czcionkami i akapitami używanymi w treści dokumentu.

Poniższy przykład kodu pokazuje, jak ustawić tekst w nagłówku na Arial, bold, rozmiar 14 i wyrównanie do środka:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### Wstaw numery stron do nagłówka lub stopki

W razie potrzeby możesz dodać numery stron do nagłówka lub stopki. Aby to zrobić, użyj typu nagłówka **HeaderPrimary** lub typu stopki **FooterPrimary** i metody [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), aby dodać wymagane pole.

Poniższy przykład kodu pokazuje, jak dodać numery stron do stopki po prawej stronie:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### Użyj nagłówków lub stopek zdefiniowanych w poprzedniej sekcji

Jeśli chcesz skopiować nagłówek lub stopkę z poprzedniej sekcji, możesz to również zrobić.

Poniższy przykład kodu pokazuje, jak skopiować nagłówek lub stopkę z poprzedniej sekcji:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### Zapewnij wygląd nagłówka lub stopki podczas korzystania z różnych orientacji strony i rozmiaru strony

Aspose.Words pozwala zapewnić wygląd nagłówka lub stopki przy użyciu różnych orientacji i rozmiarów stron.

Poniższy przykład pokazuje, jak to zrobić:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## Jak usunąć tylko nagłówki lub tylko stopki

Każda sekcja w dokumencie może mieć do trzech nagłówków i do trzech stopek (dla stron pierwszych, parzystych i nieparzystych). Jeśli chcesz usunąć wszystkie nagłówki lub wszystkie stopki w dokumencie, musisz przejrzeć wszystkie sekcje i usunąć każdy odpowiedni węzeł nagłówka lub węzeł stopki.

Poniższy przykład kodu pokazuje, jak usunąć wszystkie stopki ze wszystkich sekcji, ale pozostawić nienaruszone nagłówki. Możesz usunąć tylko nagłówki w podobny sposób:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
