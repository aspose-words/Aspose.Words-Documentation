---
title: Otwórz dokument Read- Tylko w Java
second_title: Aspose.Words zamiast Java
articleTitle: Otwórz tylko odczyt dokumentu
linktitle: Otwórz tylko odczyt dokumentu
description: "Czyń swój dokument read- tylko tak, aby zawartość mogła być kopiowana lub odczytywana, ale nie modyfikowana przy użyciu Java."
type: docs
weight: 10
url: /pl/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Czasami możesz mieć dokument, który wymaga przeglądu, ale nie chcesz, aby recenzenci losowo modyfikowali zawartość. Aspose.Words pozwala na odczytanie zgody dokumentu tylko po to, aby zawartość mogła być kopiowana lub odczytana, ale nie modyfikowana. Uniemożliwi to usunięcie lub dodanie treści do dokumentu.

{{% alert color="primary" %}}

Zastosowanie opcji read- only do dokumentu nie uniemożliwia komuś tworzenia nowej kopii i zapisywania jej z inną nazwą.

{{% /alert %}}

Ten artykuł wyjaśnia, jak zrobić dokument tylko do wczytania.

## Zrobić tylko odczyt dokumentu

Aspose.Words posiada klasę publiczną [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) który określa ustawienia ochrony zapisu dla dokumentu. Nie tworzy się bezpośrednio instancji tej klasy.

Ochrona zapisu pokazuje, czy autor zalecił otwarcie dokumentu tylko jako read- i / lub wymaga hasła do modyfikacji dokumentu.

Aspose.Words pozwala na zrobienie dokumentu read- tylko w celu ograniczenia edycji za pomocą [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) nieruchomości i [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) Metoda.

{{% alert color="primary" %}}

W Microsoft Word, można utworzyć dokument Read- Only w podobny sposób za pomocą obu:

* "Always Open Read- Only" (Plik → Info → Chroń dokument)
* "Hasło do modyfikacji" (Zapisz jako → Narzędzia → Ogólne opcje → Hasło)

{{% /alert %}}

{{% alert color="primary" %}}

Użytkownicy mogą również ograniczyć edycję dokumentów poprzez wybór [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) jako **ReadOnly**, ale jest to kolejna funkcja, która zapewnia bardziej zaawansowane możliwości ochrony. Istnieje taka funkcja w Microsoft Word, jest wdrażany odpowiednio w Aspose.Words.

**ProtectionType** zostaną szczegółowo opisane w jednym z następujących artykułów - "Restrict Document Editing".

{{% /alert %}}

W **ReadOnlyRecommended** właściwość jest zabezpieczona hasłem, więc jeśli nie ustawisz hasła przed zastosowaniem **ReadOnlyRecommended** właściwość, wtedy inni użytkownicy mogą po prostu otworzyć dokument jak gdyby nie był chroniony. Dostęp do ustawień ochrony dokumentu i ustawić hasło ochrony zapisu poprzez **SetPassword** Metoda.

{{% alert color="primary" %}}

Zauważ, że ustawione hasło jest tylko właściwością w dokumencie, który może być usunięty, jeśli właściwości dokumentu są dostępne. W związku z tym takie hasło nie jest gwarancją bezpieczeństwa dokumentu.

{{% /alert %}}

Jeśli musisz sprawdzić, czy dokument posiada hasło ochrony zapisu, które ogranicza go od edycji, można użyć [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) nieruchomości.

Poniższy przykład kodu pokazuje, jak dokonać odczytu tylko dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Usuń ograniczenie odczytu

Jeśli nie chcesz, aby użytkownik otworzył dokument jako read- tylko, można po prostu ustawić **ReadOnlyRecommened** nieruchomości *false* lub wybrać **ProtectionType** jako **NoProtection**.

Poniższy przykład kodu pokazuje, jak usunąć dostęp tylko do odczytu dla dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
