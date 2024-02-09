---
title: Öffnen Sie ein Dokument schreibgeschützt in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Öffnen Sie ein Dokument schreibgeschützt
linktitle: Öffnen Sie ein Dokument schreibgeschützt
description: "Machen Sie Ihr Dokument schreibgeschützt, damit der Inhalt mit Python kopiert oder gelesen, aber nicht geändert werden kann."
type: docs
weight: 10
url: /de/python-net/open-a-document-read-only/
---

Manchmal haben Sie vielleicht ein Dokument, das einer Überprüfung bedarf, aber Sie möchten nicht, dass Prüfer Ihren Inhalt willkürlich ändern. Mit Aspose.Words können Sie die Berechtigung Ihres Dokuments schreibgeschützt festlegen, sodass der Inhalt kopiert oder gelesen, aber nicht geändert werden kann. Dadurch wird verhindert, dass Inhalte aus Ihrem Dokument entfernt oder hinzugefügt werden.

{{% alert color="primary" %}}

Das Anwenden der schreibgeschützten Option auf Ihr Dokument hindert niemanden daran, eine neue Kopie davon zu erstellen und sie unter einem anderen Namen zu speichern.

{{% /alert %}}

In diesem Artikel wird erläutert, wie Sie ein Dokument schreibgeschützt machen.

## Machen Sie ein Dokument schreibgeschützt

Aspose.Words verfügt über die öffentliche Klasse [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/), die Schreibschutzeinstellungen für ein Dokument angibt. Sie erstellen keine Instanzen dieser Klasse direkt.

Der Schreibschutz zeigt an, ob der Autor empfohlen hat, ein Dokument schreibgeschützt zu öffnen und/oder ein Kennwort zum Ändern des Dokuments zu erfordern.

Mit Aspose.Words können Sie ein Dokument schreibgeschützt machen, um die Bearbeitung einzuschränken, indem Sie die [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/)-Eigenschaft und die [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/)-Methode verwenden.

{{% alert color="primary" %}}

In Microsoft Word können Sie auf ähnliche Weise ein schreibgeschütztes Dokument erstellen, indem Sie Folgendes verwenden:

* "Immer schreibgeschützt öffnen" (Datei → Info → Dokument schützen)
* "Zu änderndes Passwort" (Speichern unter → Extras → Allgemeine Optionen → Passwort)

{{% /alert %}}

{{% alert color="primary" %}}

Benutzer können die Dokumentbearbeitung auch einschränken, indem sie [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) als [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only) auswählen. Dies ist jedoch eine weitere Funktion, die erweiterte Schutzfunktionen bietet. Eine solche Funktion gibt es in Microsoft Word bzw. sie ist in Aspose.Words implementiert.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) wird in einem der folgenden Artikel ausführlich beschrieben – "Dokumentbearbeitung einschränken".

{{% /alert %}}

Die [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/)-Eigenschaft ist passwortgeschützt. Wenn Sie also vor der Anwendung der [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/)-Eigenschaft kein Passwort festlegen, können andere Benutzer das Dokument einfach so öffnen, als wäre es ungeschützt. Über die [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/)-Methode greifen Sie auf die Dokumentenschutzeinstellungen zu und legen ein Schreibschutzpasswort fest.

{{% alert color="primary" %}}

Beachten Sie, dass das festgelegte Passwort lediglich eine Eigenschaft in einem Dokument ist, die entfernt werden kann, wenn auf die Dokumenteigenschaften zugegriffen wird. Dementsprechend ist ein solches Passwort keine Garantie für die Dokumentensicherheit.

{{% /alert %}}

Wenn Sie überprüfen müssen, ob ein Dokument über ein Schreibschutzkennwort verfügt, das die Bearbeitung verhindert, können Sie die [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/)-Eigenschaft verwenden.

Das folgende Codebeispiel zeigt, wie man ein Dokument schreibgeschützt macht:

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

## Entfernen Sie die Lesebeschränkung

Wenn Sie nicht möchten, dass ein Benutzer Ihr Dokument schreibgeschützt öffnet, können Sie einfach die [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/)-Eigenschaft auf `False` setzen oder [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) als [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection) auswählen.

Das folgende Codebeispiel zeigt, wie der Lesezugriff für ein Dokument entfernt wird:

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
