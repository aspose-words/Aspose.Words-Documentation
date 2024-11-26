---
title: Öffnen Sie ein Dokument schreibgeschützt in C#
second_title: Aspose.Words für .NET
articleTitle: Öffnen Sie ein Dokument schreibgeschützt
linktitle: Öffnen Sie ein Dokument schreibgeschützt
description: "Machen Sie Ihr Dokument schreibgeschützt, damit der Inhalt mit C# kopiert oder gelesen, aber nicht geändert werden kann."
type: docs
weight: 10
url: /de/net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Manchmal haben Sie vielleicht ein Dokument, das einer Überprüfung bedarf, aber Sie möchten nicht, dass Prüfer Ihren Inhalt willkürlich ändern. Mit Aspose.Words können Sie die Berechtigung Ihres Dokuments schreibgeschützt festlegen, sodass der Inhalt kopiert oder gelesen, aber nicht geändert werden kann. Dadurch wird verhindert, dass Inhalte aus Ihrem Dokument entfernt oder hinzugefügt werden.

{{% alert color="primary" %}}

Das Anwenden der schreibgeschützten Option auf Ihr Dokument hindert niemanden daran, eine neue Kopie davon zu erstellen und sie unter einem anderen Namen zu speichern.

{{% /alert %}}

In diesem Artikel wird erläutert, wie Sie ein Dokument schreibgeschützt machen.

## Machen Sie ein Dokument schreibgeschützt

Aspose.Words verfügt über die öffentliche Klasse [WriteProtection](https://reference.aspose.com/words/de/net/aspose.words.settings/writeprotection/), die Schreibschutzeinstellungen für ein Dokument angibt. Sie erstellen keine Instanzen dieser Klasse direkt.

Der Schreibschutz zeigt an, ob der Autor empfohlen hat, ein Dokument schreibgeschützt zu öffnen und/oder ein Passwort zum Ändern des Dokuments zu verlangen.

Mit Aspose.Words können Sie ein Dokument schreibgeschützt machen, um die Bearbeitung einzuschränken, indem Sie die [ReadOnlyRecommended](https://reference.aspose.com/words/de/net/aspose.words.settings/writeprotection/readonlyrecommended/)-Eigenschaft und die [SetPassword](https://reference.aspose.com/words/de/net/aspose.words.settings/writeprotection/setpassword/)-Methode verwenden.

{{% alert color="primary" %}}

In Microsoft Word können Sie auf ähnliche Weise ein schreibgeschütztes Dokument erstellen, indem Sie Folgendes verwenden:

* "Immer schreibgeschützt öffnen" (Datei → Info → Dokument schützen)
* "Zu änderndes Passwort" (Speichern unter → Extras → Allgemeine Optionen → Passwort)

{{% /alert %}}

{{% alert color="primary" %}}

Benutzer können die Dokumentbearbeitung auch einschränken, indem sie [ProtectionType](https://reference.aspose.com/words/de/net/aspose.words/protectiontype/) als **ReadOnly** auswählen. Dies ist jedoch eine weitere Funktion, die erweiterte Schutzfunktionen bietet. Eine solche Funktion gibt es in Microsoft Word bzw. sie ist in Aspose.Words implementiert.

**ProtectionType** wird in einem der folgenden Artikel ausführlich beschrieben – "Dokumentbearbeitung einschränken".

{{% /alert %}}

Die **ReadOnlyRecommended**-Eigenschaft ist passwortgeschützt. Wenn Sie also vor der Anwendung der **ReadOnlyRecommended**-Eigenschaft kein Passwort festlegen, können andere Benutzer das Dokument einfach so öffnen, als wäre es ungeschützt. Über die **SetPassword**-Methode greifen Sie auf die Dokumentenschutzeinstellungen zu und legen ein Schreibschutzpasswort fest.

{{% alert color="primary" %}}

Beachten Sie, dass das festgelegte Passwort lediglich eine Eigenschaft in einem Dokument ist, die entfernt werden kann, wenn auf die Dokumenteigenschaften zugegriffen wird. Dementsprechend ist ein solches Passwort keine Garantie für die Dokumentensicherheit.

{{% /alert %}}

Wenn Sie überprüfen müssen, ob ein Dokument über ein Schreibschutzkennwort verfügt, das die Bearbeitung verhindert, können Sie die [IsWriteProtected](https://reference.aspose.com/words/de/net/aspose.words.settings/writeprotection/iswriteprotected/)-Eigenschaft verwenden.

Das folgende Codebeispiel zeigt, wie man ein Dokument schreibgeschützt macht:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Entfernen Sie die Lesebeschränkung

Wenn Sie nicht möchten, dass ein Benutzer Ihr Dokument schreibgeschützt öffnet, können Sie einfach die **ReadOnlyRecommened**-Eigenschaft auf *false* setzen oder **ProtectionType** als **NoProtection** auswählen.

Das folgende Codebeispiel zeigt, wie der Lesezugriff für ein Dokument entfernt wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
