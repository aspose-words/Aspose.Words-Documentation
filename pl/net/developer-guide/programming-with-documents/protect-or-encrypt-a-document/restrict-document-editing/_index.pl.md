---
title: Ogranicz edycję dokumentów w C#
second_title: Aspose.Words dla .NET
articleTitle: Ogranicz edycję dokumentu
linktitle: Ogranicz edycję dokumentu
description: "Ogranicz edycję dokumentu, ustawiając typ ograniczenia za pomocą C#. Możesz także usunąć ochronę i utworzyć nieograniczone edytowalne regiony."
type: docs
weight: 30
url: /pl/net/restrict-document-editing/
---

Czasami może zaistnieć potrzeba ograniczenia możliwości edycji dokumentu i zezwolenia tylko na określone działania. Może to być przydatne, aby uniemożliwić innym osobom edytowanie wrażliwych i poufnych informacji w dokumencie.

Aspose.Words umożliwia ograniczenie edycji dokumentu poprzez ustawienie typu ograniczenia. Ponadto Aspose.Words umożliwia także określenie ustawień ochrony dokumentu przed zapisem.

W tym artykule wyjaśniono, jak używać Aspose.Words do wybierania typu ograniczenia, jak dodawać lub usuwać ochronę oraz jak tworzyć nieograniczone edytowalne regiony.

## Wybierz typ ograniczenia edycji

Aspose.Words pozwala kontrolować sposób ograniczania treści za pomocą parametru wyliczeniowego [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/). Umożliwi to wybranie dokładnego rodzaju ochrony, np. następującego:

* Zezwalaj tylko na komentarze
* Zezwalaj na pola tylko formularzy
* Zezwalaj tylko na wersje
* Tylko czytać
* Bez ochrony

Wszystkie typy są zabezpieczone hasłem i jeśli hasło to nie zostanie wprowadzone poprawnie, użytkownik nie będzie mógł legalnie zmienić treści dokumentu. Jeśli więc Twój dokument zostanie do Ciebie zwrócony bez konieczności podawania niezbędnego hasła, jest to znak, że coś jest nie tak.

Jeśli przy wyborze rodzaju zabezpieczeń nie ustawiłeś hasła, inni użytkownicy mogą po prostu zignorować ochronę Twojego dokumentu.

{{% alert color="primary" %}}

Należy pamiętać, że ustawiane hasło to tylko właściwość dokumentu, którą można usunąć w przypadku uzyskania dostępu do właściwości dokumentu. W związku z tym takie hasło nie stanowi gwarancji bezpieczeństwa dokumentu. Metoda [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) właśnie to pokazuje.

{{% /alert %}}

## Dodaj ochronę dokumentów

Dodanie ochrony do dokumentu jest prostym procesem, ponieważ wystarczy zastosować jedną z metod ochrony opisanych szczegółowo w tej sekcji.

Aspose.Words umożliwia zabezpieczenie dokumentów przed zmianami metodą [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/). Ta metoda nie stanowi zabezpieczenia i nie szyfruje dokumentu.

{{% alert color="primary" %}}

W Microsoft Word możesz ograniczyć edycję w podobny sposób, używając obu:

* Ogranicz edycję (Plik → Informacje → Chroń dokument)
* Alternatywna funkcja – "Ogranicz edycję" (Przejrzyj → Chroń → Ogranicz edycję)

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać ochronę hasłem do dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Poniższy przykład kodu pokazuje, jak ograniczyć edycję w dokumencie, tak aby możliwa była tylko edycja w polach formularza:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Usuń ochronę dokumentów

Aspose.Words umożliwia usunięcie ochrony z dokumentu poprzez prostą i bezpośrednią modyfikację dokumentu. Możesz albo usunąć ochronę dokumentu, nie znając rzeczywistego hasła, albo podać prawidłowe hasło, aby odblokować dokument, korzystając z metody [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/). Obydwa sposoby usuwania nie mają żadnej różnicy.

Poniższy przykład kodu pokazuje, jak usunąć ochronę z dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Określ nieograniczone edytowalne regiony

Możesz ograniczyć edycję swojego dokumentu i jednocześnie pozwolić na zmiany w wybranych jego fragmentach. Zatem każdy, kto otworzy Twój dokument, będzie mógł uzyskać dostęp do tych nieograniczonych części i wprowadzić zmiany w treści.

Aspose.Words umożliwia oznaczenie części dokumentu, które można zmienić, przy użyciu metod [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) i [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/).

Poniższy przykład kodu pokazuje, jak oznaczyć cały dokument jako tylko do odczytu i określić w nim edytowalne regiony:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Możesz także wybrać różne ograniczenia edycji dokumentu dla różnych sekcji.

Poniższy przykład kodu pokazuje, jak dodać ograniczenie dla całego dokumentu, a następnie usunąć ograniczenie dla jednej z sekcji:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
