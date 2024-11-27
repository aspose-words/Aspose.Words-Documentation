---
title: Rodzaje operacji Mail Merge W C++
second_title: Aspose.Words dla C++
articleTitle: Rodzaje operacji Mail Merge
linktitle: Rodzaje operacji Mail Merge
type: docs
description: "Wykonaj dwa różne typy operacji Mail Merge: proste Mail Merge i Mail Merge z regionami używającymi C++. Simple Mail Merge powtarza cały dokument na każdy rekord źródła danych, podczas gdy Mail Merge z regionami powtarza tylko wyznaczone regiony na rekord."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /pl/cpp/types-of-mail-merge-operations/
timestamp: 2024-09-24-14-35-44
---

Główną ideą Mail Merge jest automatyczne utworzenie dokumentu lub kilku dokumentów na podstawie szablonu i danych pobranych ze źródła danych. Aspose.Words umożliwia wykonywanie dwóch różnych typów operacji Mail Merge: prostych Mail Merge i Mail Merge z regionami.

Najczęstszym przykładem użycia simple Mail Merge jest wysłanie dokumentu dla różnych klientów poprzez umieszczenie ich nazw na początku dokumentu. Aby to zrobić, musisz utworzyć w szablonie pola scalania, takie jak *First Name* i *Last Name*, a następnie wypełnić je danymi ze źródła danych. Natomiast najczęstszym przykładem użycia Mail Merge z regionami jest wysłanie dokumentu zawierającego określone zamówienia z listą wszystkich elementów w każdym zamówieniu. Aby to zrobić, musisz utworzyć regiony scalania w swoim własnym regionie szablonu dla każdego zamówienia, aby wypełnić je wszystkimi wymaganymi danymi dla elementów.

Główna różnica między obiema operacjami scalania polega na tym, że proste Mail Merge (bez regionów) powtarza cały dokument na każdy rekord źródła danych, podczas gdy Mail Merge z regionami powtarza tylko wyznaczone regiony na rekord. Możesz myśleć o prostej operacji Mail Merge jako szczególnym przypadku scalania z regionami, w których jedynym regionem jest cały dokument.

{{% alert color="primary" %}}

Klasa [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) reprezentuje funkcjonalność Mail Merge. Dzięki jego właściwościom można dostosować wymagane zachowanie przed wykonaniem operacji Mail Merge.

{{% /alert %}}

