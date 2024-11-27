---
title: Otwórz dokument Tylko do odczytu w C++
second_title: Aspose.Words dla C++
articleTitle: Otwórz dokument Tylko do odczytu
linktitle: Otwórz dokument Tylko do odczytu
description: "Ustaw dokument tylko do odczytu, aby zawartość mogła być kopiowana lub odczytywana, ale nie modyfikowana."
type: docs
weight: 10
url: /pl/cpp/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Czasami możesz mieć dokument, który wymaga recenzji, ale nie chcesz, aby recenzenci losowo modyfikowali Twoje treści. Aspose.Words umożliwia uprawnienie dokumentu tylko do odczytu, aby zawartość mogła być kopiowana lub odczytywana, ale nie modyfikowana. Zapobiegnie to usuwaniu lub dodawaniu treści do dokumentu.

{{% alert color="primary" %}}

Zastosowanie opcji Tylko do odczytu do dokumentu nie uniemożliwia komuś utworzenia nowej kopii i zapisania jej pod inną nazwą.

{{% /alert %}}

W tym artykule wyjaśniono, jak utworzyć dokument tylko do odczytu.

## Utwórz dokument Tylko do odczytu

Aspose.Words ma klasę publiczną [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/), która określa ustawienia ochrony przed zapisem dla dokumentu. Nie tworzysz instancji tej klasy bezpośrednio.

Ochrona przed zapisem pokazuje, czy autor zalecił otwarcie dokumentu jako Tylko do odczytu i / lub wymaganie hasła do modyfikacji dokumentu.

Aspose.Words umożliwia utworzenie dokumentu tylko do odczytu w celu ograniczenia edycji przy użyciu właściwości [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) i metody [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

W Microsoft Word możesz utworzyć dokument Tylko do odczytu w podobny sposób, używając obu:

* "Zawsze Otwieraj Tylko Do Odczytu" (Plik → Informacje → Chroń Dokument)
* "Hasło do modyfikacji" (Zapisz jako → Narzędzia → Opcje Ogólne → hasło)

{{% /alert %}}

{{% alert color="primary" %}}

Użytkownicy mogą również ograniczyć edycję dokumentów, wybierając [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) jako **ReadOnly**, ale jest to kolejna funkcja, która zapewnia bardziej zaawansowane możliwości ochrony. Jest taka funkcja odpowiednio w Microsoft Word, jest zaimplementowana w Aspose.Words.

**ProtectionType**

{{% /alert %}}

Właściwość **ReadOnlyRecommended** jest zabezpieczona hasłem, więc jeśli nie ustawisz hasła przed zastosowaniem właściwości **ReadOnlyRecommended**, inni użytkownicy mogą po prostu otworzyć dokument tak, jakby był niezabezpieczony. Uzyskujesz dostęp do ustawień ochrony dokumentów i ustawiasz hasło ochrony przed zapisem za pomocą metody **SetPassword**.

{{% alert color="primary" %}}

Należy pamiętać, że ustawiane hasło to tylko właściwość dokumentu, którą można usunąć, jeśli uzyskano dostęp do Właściwości dokumentu. W związku z tym takie hasło nie jest gwarancją bezpieczeństwa dokumentu.

{{% /alert %}}

Jeśli chcesz sprawdzić, czy dokument ma hasło ochrony przed zapisem, które ogranicza jego edycję, możesz użyć właściwości [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/).

Poniższy przykład kodu pokazuje, jak zrobić dokument tylko do odczytu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## Usuń Ograniczenie Tylko Do Odczytu

Jeśli nie chcesz, aby użytkownik otwierał dokument jako Tylko do odczytu, możesz po prostu ustawić właściwość **ReadOnlyRecommened** na *false* lub wybrać **ProtectionType** jako **NoProtection**.

Poniższy przykład kodu pokazuje, jak usunąć dostęp tylko do odczytu dla dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
