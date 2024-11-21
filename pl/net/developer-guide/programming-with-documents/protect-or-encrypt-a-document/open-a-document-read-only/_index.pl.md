---
title: Otwórz dokument tylko do odczytu w C#
second_title: Aspose.Words dla .NET
articleTitle: Otwórz dokument tylko do odczytu
linktitle: Otwórz dokument tylko do odczytu
description: "Ustaw dokument jako tylko do odczytu, aby zawartość mogła być kopiowana lub czytana, ale nie modyfikowana przy użyciu C#."
type: docs
weight: 10
url: /pl/net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Czasami możesz mieć dokument wymagający sprawdzenia, ale nie chcesz, aby recenzenci losowo modyfikowali Twoją treść. Aspose.Words umożliwia ustawienie uprawnień do dokumentu jako tylko do odczytu, dzięki czemu zawartość można kopiować lub czytać, ale nie można jej modyfikować. Zapobiegnie to usunięciu lub dodaniu treści do dokumentu.

{{% alert color="primary" %}}

Zastosowanie opcji tylko do odczytu do dokumentu nie uniemożliwia innej osobie utworzenia jego nowej kopii i zapisania pod inną nazwą.

{{% /alert %}}

W tym artykule wyjaśniono, jak ustawić dokument jako tylko do odczytu.

## Ustaw dokument jako tylko do odczytu

Aspose.Words ma publiczną klasę [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/), która określa ustawienia ochrony dokumentu przed zapisem. Nie tworzysz bezpośrednio instancji tej klasy.

Ochrona przed zapisem pokazuje, czy autor zalecił otwarcie dokumentu w trybie tylko do odczytu i/lub wymaganie hasła w celu modyfikacji dokumentu.

Aspose.Words umożliwia ustawienie dokumentu jako tylko do odczytu w celu ograniczenia edycji za pomocą właściwości [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) i metody [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

W Microsoft Word możesz w podobny sposób utworzyć dokument tylko do odczytu, używając obu:

* "Zawsze otwieraj tylko do odczytu" (Plik → Informacje → Chroń dokument)
* "Hasło do modyfikacji" (Zapisz jako → Narzędzia → Opcje ogólne → Hasło)

{{% /alert %}}

{{% alert color="primary" %}}

Użytkownicy mogą również ograniczyć edycję dokumentu, wybierając [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) jako **ReadOnly**, ale jest to kolejna funkcja zapewniająca bardziej zaawansowane możliwości ochrony. Istnieje taka funkcja odpowiednio w Microsoft Word, jest ona zaimplementowana w Aspose.Words.

**ProtectionType** zostanie szczegółowo opisany w jednym z kolejnych artykułów – "Ogranicz edycję dokumentów".

{{% /alert %}}

Właściwość **ReadOnlyRecommended** jest zabezpieczona hasłem, więc jeśli nie ustawisz hasła przed zastosowaniem właściwości **ReadOnlyRecommended**, inni użytkownicy będą mogli po prostu otworzyć dokument tak, jakby nie był chroniony. Dostęp do ustawień ochrony dokumentów i ustawienie hasła ochrony przed zapisem można uzyskać za pomocą metody **SetPassword**.

{{% alert color="primary" %}}

Należy pamiętać, że ustawiane hasło to tylko właściwość dokumentu, którą można usunąć w przypadku uzyskania dostępu do właściwości dokumentu. W związku z tym takie hasło nie stanowi gwarancji bezpieczeństwa dokumentu.

{{% /alert %}}

Jeśli chcesz sprawdzić, czy dokument ma hasło zabezpieczające przed zapisem, które ogranicza jego edycję, możesz użyć właściwości [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/).

Poniższy przykład kodu pokazuje, jak ustawić dokument tylko do odczytu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Usuń ograniczenie tylko do odczytu

Jeśli nie chcesz, aby użytkownik otwierał Twój dokument w trybie tylko do odczytu, możesz po prostu ustawić właściwość **ReadOnlyRecommened** na *false* lub wybrać **ProtectionType** jako **NoProtection**.

Poniższy przykład kodu pokazuje, jak usunąć dostęp tylko do odczytu dla dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
