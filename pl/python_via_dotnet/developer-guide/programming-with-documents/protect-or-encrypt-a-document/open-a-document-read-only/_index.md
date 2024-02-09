---
title: Otwórz dokument tylko do odczytu w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Otwórz dokument tylko do odczytu
linktitle: Otwórz dokument tylko do odczytu
description: "Ustaw dokument jako tylko do odczytu, aby zawartość mogła być kopiowana lub czytana, ale nie modyfikowana przy użyciu Python."
type: docs
weight: 10
url: /pl/python-net/open-a-document-read-only/
---

Czasami możesz mieć dokument wymagający sprawdzenia, ale nie chcesz, aby recenzenci losowo modyfikowali Twoją treść. Aspose.Words umożliwia ustawienie uprawnień do dokumentu jako tylko do odczytu, dzięki czemu zawartość można kopiować lub czytać, ale nie można jej modyfikować. Zapobiegnie to usunięciu lub dodaniu treści do dokumentu.

{{% alert color="primary" %}}

Zastosowanie opcji tylko do odczytu do dokumentu nie uniemożliwia innej osobie utworzenia jego nowej kopii i zapisania pod inną nazwą.

{{% /alert %}}

W tym artykule wyjaśniono, jak ustawić dokument jako tylko do odczytu.

## Ustaw dokument jako tylko do odczytu

Aspose.Words ma publiczną klasę [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/), która określa ustawienia ochrony dokumentu przed zapisem. Nie tworzysz bezpośrednio instancji tej klasy.

Ochrona przed zapisem pokazuje, czy autor zalecił otwarcie dokumentu w trybie tylko do odczytu i/lub wymaganie hasła w celu modyfikacji dokumentu.

Aspose.Words umożliwia ustawienie dokumentu jako tylko do odczytu w celu ograniczenia edycji za pomocą właściwości [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) i metody [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

W Microsoft Word możesz w podobny sposób utworzyć dokument tylko do odczytu, używając obu:

* "Zawsze otwieraj tylko do odczytu" (Plik → Informacje → Chroń dokument)
* "Hasło do modyfikacji" (Zapisz jako → Narzędzia → Opcje ogólne → Hasło)

{{% /alert %}}

{{% alert color="primary" %}}

Użytkownicy mogą również ograniczyć edycję dokumentu, wybierając [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) jako [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), ale jest to kolejna funkcja zapewniająca bardziej zaawansowane możliwości ochrony. Istnieje taka funkcja odpowiednio w Microsoft Word, jest ona zaimplementowana w Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) zostanie szczegółowo opisany w jednym z kolejnych artykułów – "Ogranicz edycję dokumentów".

{{% /alert %}}

Właściwość [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) jest zabezpieczona hasłem, więc jeśli nie ustawisz hasła przed zastosowaniem właściwości [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/), inni użytkownicy będą mogli po prostu otworzyć dokument tak, jakby nie był chroniony. Dostęp do ustawień ochrony dokumentów i ustawienie hasła ochrony przed zapisem można uzyskać za pomocą metody [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

Należy pamiętać, że ustawiane hasło to tylko właściwość dokumentu, którą można usunąć w przypadku uzyskania dostępu do właściwości dokumentu. W związku z tym takie hasło nie stanowi gwarancji bezpieczeństwa dokumentu.

{{% /alert %}}

Jeśli chcesz sprawdzić, czy dokument ma hasło zabezpieczające przed zapisem, które ogranicza jego edycję, możesz użyć właściwości [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/).

Poniższy przykład kodu pokazuje, jak ustawić dokument tylko do odczytu:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Usuń ograniczenie tylko do odczytu

Jeśli nie chcesz, aby użytkownik otwierał Twój dokument w trybie tylko do odczytu, możesz po prostu ustawić właściwość [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) na `False` lub wybrać [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) jako [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

Poniższy przykład kodu pokazuje, jak usunąć dostęp tylko do odczytu dla dokumentu:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
