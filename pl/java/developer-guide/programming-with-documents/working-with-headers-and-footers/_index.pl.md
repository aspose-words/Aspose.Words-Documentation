---
title: Praca z Headers i Footers w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z Headers i Footers
linktitle: Praca z Headers i Footers
description: "Jak manipulować nagłówkami i stopkami za pomocą Java."
type: docs
weight: 150
url: /pl/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words pozwala użytkownikom pracować z nagłówkami i stopkami w dokumencie. Nagłówek to tekst umieszczony na górze strony, a stopka to tekst na dole strony. Zazwyczaj obszary te są wykorzystywane do umieszczania informacji, które powinny być powtórzone na wszystkich lub niektórych stronach dokumentu, takich jak numery stron, data utworzenia, informacje o firmie itp.

## Tworzenie nagłówków lub znaczników przy użyciu DocumentBuilder

Jeśli chcesz dodać nagłówek dokumentu lub stopkę programowo, najprostszym sposobem jest użycie [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Na zajęcia.

Poniższy przykład kodu pokazuje jak dodać nagłówek i stopkę dla stron dokumentu:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Określ opcje nagłówka lub footera

Po dodaniu nagłówka lub stopki do dokumentu można ustawić pewne zaawansowane właściwości. Aspose.Words zapewnia użytkownikom [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) oraz [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) zajęcia, jak również [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) wyliczenie, które daje większą kontrolę nad procesem dostosowywania nagłówka i stopy.

### Określić typ nagłówka lub footera

Dla jednego dokumentu można podać trzy różne typy nagłówków i trzy różne typy stóp:

1. Nagłówek i / lub stopka dla pierwszej strony
2. Nagłówek lub stopka dla parzystych stron
3. Nagłówek lub stopka dla nieparzystych stron

Poniższy przykład kodu pokazuje jak dodać nagłówek dla stron nieparzystych dokumentów:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Określ, czy wyświetlić różne nagłówki lub znaczniki dla pierwszej strony

Jak wspomniano powyżej, możesz również ustawić inny nagłówek lub stopkę dla pierwszej strony. Aby to zrobić, musisz ustawić [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) do `true` a następnie specyfikować **HeaderFirst** lub **FooterFirst** wartość.

Poniższy przykład kodu pokazuje jak ustawić nagłówek tylko dla pierwszej strony:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Określa, czy wyświetlać różne nagłówki lub znaczniki dla stron nieparzystych lub parzystych

 Następnie, będziesz chciał ustawić różne nagłówki lub stopki dla nieparzystych, a nawet stron w dokumencie. Aby to zrobić, musisz ustawić [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) do `true` a następnie określić wartości **HeaderPrimary** oraz **HeaderEven**, lub **FooterPrimary** oraz **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Wstaw bezwzględną pozycję Obraz w nagłówku

Aby umieścić obraz w nagłówku lub stopka, należy użyć **HeaderPrimary** typ nagłówka lub **FooterPrimary** typ stopy i [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) Metoda.

Poniższy przykład kodu pokazuje jak dodać obraz do nagłówka:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Ustaw właściwości czcionki i paragrafu dla tekstu nagłówka lub footera

Z Aspose.Words możesz ustawić właściwości czcionki i paragrafu, użyj **HeaderPrimary** typ nagłówka lub **FooterPrimary** typ stopki, jak również metody i właściwości do pracy z czcionkami i paragrafami używanymi dla ciała dokumentu.

Poniższy przykład kodu pokazuje, jak ustawić tekst w nagłówku na Arial, pogrubiony, rozmiar 14 i osiowanie środka:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Wstaw numery stron do nagłówka lub footera

W razie potrzeby można dodać numery stron do nagłówka lub stopki. Aby to zrobić, należy użyć **HeaderPrimary** typ nagłówka lub **FooterPrimary** typ stopy i [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) metoda dodawania wymaganego pola.

Poniższy przykład kodu pokazuje jak dodać numery stron do stopki po prawej stronie:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Użyj nagłówków lub znaczników zdefiniowanych w poprzedniej sekcji

Jeśli musisz skopiować nagłówek lub stopkę z poprzedniej sekcji, możesz to zrobić także.

Poniższy przykład kodu pokazuje jak skopiować nagłówek lub stopkę z poprzedniej sekcji:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Zapewnienie wyglądu nagłówka lub footera podczas korzystania z różnych orientacji strony i rozmiar strony

Aspose.Words pozwala na uzyskanie wyglądu nagłówka lub stopki przy użyciu różnych kierunków i rozmiarów stron.

Poniższy przykład pokazuje jak to zrobić:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Jak usunąć tylko nagłówki lub tylko znaczniki

Każda sekcja dokumentu może mieć do trzech nagłówków i do trzech stóp (dla pierwszych, parzystych i dziwnych stron). Jeśli chcesz usunąć wszystkie nagłówki lub wszystkie stopy w dokumencie, musisz pętlę przez wszystkie sekcje i usunąć każdy odpowiedni węzeł nagłówka lub węzeł stopki.

Poniższy przykład kodu pokazuje, jak usunąć wszystkie stopy ze wszystkich sekcji, ale pozostawić nagłówki nienaruszone. Można usunąć tylko nagłówki w podobny sposób:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
