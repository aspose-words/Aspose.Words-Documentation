---
title: Praca z Listami w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z Listami
linktitle: Praca z Listami
description: "Wprowadzenie do funkcji formatowania numeracji w Aspose.Words zamiast Java."
type: docs
weight: 200
url: /pl/java/working-with-lists/
---

Lista w Microsoft Word dokument jest zbiorem właściwości formatowania listy. Listy mogą być używane w dokumentach do formatowania, układania i podkreślania tekstu. Listy są świetnym sposobem organizowania danych w dokumentach i ułatwiają czytelnikom zrozumienie kluczowych punktów.

Każda lista może mieć do 9 poziomów i właściwości formatowania, takich jak styl numeryczny, wartość początkowa, tiret, pozycja zakładki i inne są zdefiniowane oddzielnie dla każdego poziomu.

Ten artykuł opisuje programową pracę z listami za pomocą Aspose.Words.

## Tworzenie list poprzez zastosowanie formatowania listy

Aspose.Words umożliwia łatwe tworzenie list poprzez zastosowanie formatowania listy. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) zapewnia [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) właściwość, która zwraca **ListFormat** obiekt. Obiekt ten posiada kilka metod, aby rozpocząć i zakończyć listę i zwiększyć / zmniejszyć tiret. Istnieją dwa ogólne rodzaje list w Microsoft Word: zbulletowane i ponumerowane:

- Aby rozpocząć listę, zadzwoń [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Aby rozpocząć listę numerowaną, zadzwoń [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Kula lub numer i formatowanie są dodawane do bieżącego akapitu i wszystkie kolejne paragrafy utworzone przy użyciu **DocumentBuilder** do [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) jest wywoływany, aby zatrzymać skompilowane formatowanie listy.

W dokumentach Worda listy mogą składać się z maksymalnie dziewięciu poziomów. Lista formatowania dla każdego poziomu określa, jaki pocisk lub numer jest używany, lewe tiret, przestrzeń między pociskiem i tekstem itp. Następujące metody zmieniają poziom listy i stosują właściwości formatowania nowego poziomu:

- Aby zwiększyć poziom listy obecnego ustępu o jeden poziom, wywołanie [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Aby zmniejszyć poziom listy obecnego ustępu o jeden poziom, wywołanie [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Metody zmieniają poziom listy i stosują właściwości formatowania nowego poziomu.

{{% alert color="primary" %}}

Można również użyć [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) właściwość do uzyskania lub ustalenia poziomu listy dla akapitu. Poziomy listy są ponumerowane od 0 do 8.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak zbudować listę wielopoziomową:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Określ formatowanie poziomu listy

Obiekty List- level są tworzone automatycznie przy tworzeniu listy. Użyj właściwości i metod [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) klasy do kontroli formatowania poszczególnych poziomów listy.

## Przywróć listę dla każdej sekcji

Możesz ponownie uruchomić listę dla każdej sekcji za pomocą [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) nieruchomości. Pamiętaj, że ta opcja jest obsługiwana tylko w formatach dokumentów RTF, DOC i DOCX. Opcja ta zostanie zapisana do DOCX tylko wtedy, gdy OoxmlCompliance jest wyższa niż Ecma376.

Poniższy przykład kodu pokazuje jak stworzyć listę i uruchomić ją ponownie dla każdej sekcji:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

