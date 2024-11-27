---
title: Ogranicz edycję dokumentu w C++
second_title: Aspose.Words dla C++
articleTitle: Ogranicz Edycję Dokumentów
linktitle: Ogranicz Edycję Dokumentów
description: "Ogranicz edycję dokumentu, ustawiając Typ ograniczenia za pomocą C++. Możesz także usunąć ochronę i utworzyć nieograniczone edytowalne regiony."
type: docs
weight: 30
url: /pl/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Czasami może być konieczne ograniczenie możliwości edycji dokumentu i zezwolenie tylko na określone działania z nim. Może to być przydatne, aby uniemożliwić innym osobom edytowanie poufnych i poufnych informacji w dokumencie.

Aspose.Words umożliwia ograniczenie edycji dokumentu poprzez ustawienie typu ograniczenia. Ponadto Aspose.Words umożliwia również określenie ustawień ochrony przed zapisem dla dokumentu.

W tym artykule wyjaśniono, jak używać Aspose.Words do wybierania typu ograniczenia, jak dodawać lub usuwać ochronę oraz jak tworzyć nieograniczone edytowalne regiony.

## Wybierz Typ Ograniczenia Edycji

Aspose.Words pozwala kontrolować sposób ograniczania zawartości za pomocą parametru wyliczenia [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/). Umożliwi to wybranie dokładnego rodzaju ochrony, takiego jak:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Wszystkie typy są zabezpieczone hasłem, a jeśli to hasło nie zostanie wprowadzone poprawnie, użytkownik nie będzie mógł legalnie zmienić treści dokumentu. Tak więc, jeśli twój dokument zostanie Ci zwrócony bez wymogu podania niezbędnego hasła, jest to znak, że coś jest nie tak.

Jeśli nie ustawiłeś hasła przy wyborze typu zabezpieczeń, inni użytkownicy mogą po prostu zignorować ochronę Twojego dokumentu.

{{% alert color="primary" %}}

Należy pamiętać, że ustawiane hasło to tylko właściwość dokumentu, którą można usunąć, jeśli uzyskano dostęp do Właściwości dokumentu. W związku z tym takie hasło nie jest gwarancją bezpieczeństwa dokumentu. Metoda [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) pokazuje właśnie to.

{{% /alert %}}

## Dodaj Ochronę Dokumentów

Dodanie ochrony do dokumentu to prosty proces, ponieważ wszystko, co musisz zrobić, to zastosować jedną z metod ochrony opisanych w tej sekcji.

Aspose.Words umożliwia ochronę dokumentów przed zmianami przy użyciu metody [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). Ta metoda nie jest funkcją bezpieczeństwa i nie szyfruje dokumentu.

{{% alert color="primary" %}}

W Microsoft Word możesz ograniczyć edycję w podobny sposób, używając obu:

* Ogranicz Edycję (Plik → Informacje → Chroń Dokument)
* Alternatywna funkcja - " Ogranicz edycję "(Recenzja → Chroń → Ogranicz edycję)

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać ochronę hasłem do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

Poniższy przykład kodu pokazuje, jak ograniczyć edycję w dokumencie, aby możliwa była tylko edycja w polach formularza:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Usuń Ochronę Dokumentów

Aspose.Words umożliwia usunięcie ochrony z dokumentu za pomocą prostej i bezpośredniej modyfikacji dokumentu. Możesz usunąć ochronę dokumentu bez znajomości rzeczywistego hasła lub podać prawidłowe hasło, aby odblokować dokument za pomocą metody [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). Oba sposoby usuwania nie mają różnicy.

Poniższy przykład kodu pokazuje, jak usunąć ochronę z dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Określ Nieograniczone Edytowalne Regiony

Możesz ograniczyć edycję dokumentu i jednocześnie zezwolić na zmiany w wybranych jego częściach. Tak więc każdy, kto otworzy Twój dokument, będzie mógł uzyskać dostęp do tych nieograniczonych części i wprowadzić zmiany w treści.

Aspose.Words umożliwia zaznaczanie części, które można zmienić w dokumencie przy użyciu metod [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) i [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/).

Poniższy przykład kodu pokazuje, jak oznaczyć cały dokument jako Tylko do odczytu i określić w nim edytowalne regiony:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

Możesz także wybrać różne ograniczenia edycji dokumentów dla różnych sekcji.

Poniższy przykład kodu pokazuje, jak dodać ograniczenie dla całego dokumentu, a następnie usunąć ograniczenie dla jednej z sekcji:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
