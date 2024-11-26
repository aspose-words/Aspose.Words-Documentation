---
title: Praca z Hyperlinks w Java
second_title: Aspose.Words zamiast Java
articleTitle: Dodaj lub zmodyfikuj hiperłącza
linktitle: Dodaj lub zmodyfikuj hiperłącza
description: "Jak dodać hiperłącze do dokumentu za pomocą Java."
type: docs
weight: 50
url: /pl/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Hiperlink w Microsoft Word dokumentów jest `HYPERLINK` Pole. W Aspose.Words, hiperłącza są realizowane poprzez [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Klasa.

## Wstaw hiperłącze

Użyj [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) metoda wprowadzania hiperłącza do dokumentu. Metoda ta akceptuje trzy parametry:

1. Tekst odnośnika wyświetlanego w dokumencie
2. Cel połączenia (URL lub nazwa zakładki w dokumencie)
3. Parametr boolean, który powinien być true jeśli `URL` jest nazwą zakładki wewnątrz dokumentu

W **InsertHyperlink** metoda zawsze dodaje apostrofy na początku i końcu URL

{{% alert color="primary" %}}

Zauważ, że musisz wyraźnie określić formatowanie czcionki dla wyświetlanego hiperłącza za pomocą `Font` nieruchomości.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak włożyć hiperłącze do dokumentu używając [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Zastąp lub zmodyfikuj hiperłącza

Hiperlink Microsoft Word Dokumenty to pole. Pole w dokumencie Word, jak powiedzieliśmy wcześniej, jest złożoną strukturą składającą się z wielu węzłów, które obejmują start pola, kod pola, separator pola, wynik pola i koniec pola. Pola mogą być zagnieżdżone, zawierają bogatą zawartość i rozpiętość wielu akapitów lub sekcji w dokumencie.

Aby zastąpić lub zmodyfikować hiperłącza, należy znaleźć hiperłącza w dokumencie i zastąpić ich tekst, adresy URL lub oba.

Poniższy przykład kodu pokazuje jak znaleźć wszystkie hiperlinki w dokumencie Word i zmienia ich `URL` oraz nazwę wyświetlania:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
