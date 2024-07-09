---
title: Praca z tekstem w tabeli
second_title: Aspose.Words zamiast Java
articleTitle: Praca z tekstem w tabeli
linktitle: Praca z tekstem w tabeli
description: "Zastąpić tekst w tabeli w Java. Wyciągnij zwykły tekst ze stołu lub komórki za pomocą Java."
type: docs
weight: 60
url: /pl/java/extract-text-from-and-replace-text-in-a-table/
---

Jak wspomniano w poprzednich artykułach, tabela zazwyczaj zawiera zwykły tekst, chociaż inne treści, takie jak obrazy lub nawet inne tabele mogą być umieszczone w komórkach tabeli.

Dodawanie tekstu lub innych treści do tabeli odbywa się przy użyciu odpowiednich metod [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) klasa i jest opisana w **"Utwórz tabelę"** Artykuł. W tym artykule omówimy jak pracować z tekstem w istniejącej tabeli.

## Zastąp tekst w tabeli

Stół, jak każdy inny węzeł w Aspose.Words, ma dostęp do [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) obiekt. Korzystanie z zakresu tabeli obiektu, można zastąpić tekst w tabeli.

Możliwość używania znaków specjalnych podczas zastępowania jest obecnie obsługiwana, więc możliwe jest zastąpienie istniejącego tekstu tekstem wieloskładnikowym. Aby to zrobić, należy użyć specjalnych metacharaktorów opisanych w odpowiednich [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) Metoda.

{{% alert color="primary" %}}

Zwykle wymiana tekstu powinna odbywać się na poziomie komórki (na komórkę) lub na poziomie akapitu.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak zastąpić wszystkie instancje łańcucha tekstu w komórkach całej tabeli:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Wydrukuj zwykły tekst ze stołu

Korzystanie z **Range** obiekt, można również wywołać metody w całym zakresie tabeli i ekstrahować tabelę jako zwykły tekst. Aby to zrobić, należy użyć [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) nieruchomości

Poniższy przykład kodu pokazuje jak wydrukować zakres tekstu tabeli:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

Tę samą technikę stosuje się wyłącznie do ekstrakcji zawartości z poszczególnych komórek stołowych.

Poniższy przykład kodu pokazuje, jak wydrukować zakres elementów wiersza i tabeli:

{{% /alert %}}

Poniższy przykład kodu pokazuje jak wydrukować zakres tekstu elementów wiersza i tabeli.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Praca z alternatywnym tekstem tabeli

Microsoft Word tabele mają `table title` oraz `table description` które zapewniają alternatywne tekstualne przedstawienie informacji zawartych w tabeli.

W Aspose.Words, można również dodać tytuł tabeli i opis za pomocą [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) oraz [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) nieruchomości. Właściwości te mają znaczenie dla dokumentów DOCX zgodnych z ISO/ IEC 29500. Podczas zapisywania w formatach wcześniej niż ISO/ IEC 29500, te właściwości są ignorowane.

Poniższy przykład kodu pokazuje jak ustawić właściwości tytułu i opisu tabeli:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}