---
title: Skreślić dokument Edycja Java
second_title: Aspose.Words zamiast Java
articleTitle: Restrict Document Editing
linktitle: Restrict Document Editing
description: "Usuwanie edycji dokumentu poprzez ustawienie typu ograniczenia. Można również usunąć ochronę i dokonać nieograniczonych regionów edytowalnych za pomocą Java."
type: docs
weight: 30
url: /pl/java/restrict-document-editing/
---

Czasami może być konieczne ograniczenie możliwości edycji dokumentu i tylko zezwolić na pewne działania z nim. Może to być przydatne, aby uniemożliwić innym osobom edycję poufnych i poufnych informacji w dokumencie.

Aspose.Words pozwala na ograniczenie edycji dokumentu poprzez ustawienie typu ograniczenia. Ponadto, Aspose.Words pozwala również określić ustawienia ochrony zapisu dla dokumentu.

Ten artykuł wyjaśnia jak używać Aspose.Words wybrać typ ograniczenia, jak dodać lub usunąć ochronę oraz jak stworzyć nieograniczone regiony edytowalne.

## Wybierz typ ograniczenia edycji

Aspose.Words pozwala kontrolować sposób ograniczenia zawartości za pomocą [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) parametr wyliczenia. Umożliwi to wybranie dokładnego rodzaju ochrony, takiego jak:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Wszystkie typy są zabezpieczone hasłem, a jeśli hasło nie jest poprawnie wprowadzone, użytkownik nie będzie w stanie legalnie zmienić treści dokumentu. Tak więc, jeśli Twój dokument zostanie zwrócony do Ciebie bez wymogu podania niezbędnego hasła, jest to znak, że coś jest nie tak.

Jeśli nie ustawiłeś hasła przy wyborze typu zabezpieczeń, inni użytkownicy mogą po prostu zignorować ochronę dokumentu.

{{% alert color="primary" %}}

Zauważ, że ustawione hasło jest tylko właściwością w dokumencie, który może być usunięty, jeśli właściwości dokumentu są dostępne. W związku z tym takie hasło nie jest gwarancją bezpieczeństwa dokumentu. W [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) Metoda pokazuje tylko to.

{{% /alert %}}

## Dodaj ochronę dokumentu

Dodawanie ochrony do dokumentu to prosty proces, ponieważ wystarczy zastosować jedną z metod ochrony wyszczególnionych w tej sekcji.

Aspose.Words pozwala na ochronę dokumentów przed zmianami za pomocą [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) Metoda. Metoda ta nie jest funkcją bezpieczeństwa i nie szyfruje dokumentu.

{{% alert color="primary" %}}

W Microsoft Word, można ograniczyć edycję w podobny sposób za pomocą obu:

* Restrict Editing (File → Info → Chroń dokument)
* Funkcja alternatywna - "Restrict Editing" (Przegląd → Chronić → Restrict Editing)

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać ochronę hasła do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

Poniższy przykład kodu pokazuje, jak ograniczyć edycję w dokumencie, więc tylko edycja w polu formularza jest możliwa:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## Usuń ochronę dokumentu

Aspose.Words pozwala na usunięcie ochrony z dokumentu z prostą i bezpośrednią modyfikacją dokumentu. Można albo usunąć ochronę dokumentu bez znajomości rzeczywistego hasła lub podać prawidłowe hasło, aby odblokować dokument za pomocą [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) Metoda. Oba sposoby usuwania nie mają żadnej różnicy.

Poniższy przykład kodu pokazuje jak usunąć ochronę z dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## Określić nieograniczone regiony edytowalne

Możesz ograniczyć edycję dokumentu i jednocześnie zezwolić na zmiany wybranych części dokumentu. Każdy, kto otworzy twój dokument, będzie miał dostęp do tych nieograniczonych części i wprowadzi zmiany w treści.

Aspose.Words pozwala na zaznaczanie części, które mogą być zmienione w dokumencie za pomocą [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) oraz [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) metody.

Poniższy przykład kodu pokazuje, jak oznaczyć cały dokument jako tylko read- i określić edytowalne regiony w nim:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

Możesz również wybrać różne ograniczenia edycji dokumentów dla różnych sekcji.

Poniższy przykład kodu pokazuje, jak dodać ograniczenie dla całego dokumentu, a następnie usunąć ograniczenie dla jednej z sekcji:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
