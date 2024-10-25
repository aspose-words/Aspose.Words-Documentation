---
title: Öffnen Sie ein Dokument schreibgeschützt in C++
second_title: Aspose.Words für C++
articleTitle: Öffnen eines Dokuments schreibgeschützt
linktitle: Öffnen eines Dokuments schreibgeschützt
description: "Machen Sie Ihr Dokument schreibgeschützt, damit der Inhalt kopiert oder gelesen, aber nicht geändert werden kann."
type: docs
weight: 10
url: /de/cpp/open-a-document-read-only/
---

Manchmal haben Sie möglicherweise ein Dokument, das überprüft werden muss, aber Sie möchten nicht, dass Prüfer Ihren Inhalt nach dem Zufallsprinzip ändern. Aspose.Words ermöglicht es Ihnen, die Berechtigung Ihres Dokuments schreibgeschützt zu machen, sodass der Inhalt kopiert oder gelesen, aber nicht geändert werden kann. Dadurch wird verhindert, dass Inhalte entfernt oder Ihrem Dokument hinzugefügt werden.

{{% alert color="primary" %}}

Das Anwenden der schreibgeschützten Option auf Ihr Dokument hindert niemanden daran, eine neue Kopie davon zu erstellen und unter einem anderen Namen zu speichern.

{{% /alert %}}

In diesem Artikel wird erläutert, wie Sie ein Dokument schreibgeschützt machen.

## Ein Dokument schreibgeschützt machen

Aspose.Words hat die öffentliche Klasse [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/), die Schreibschutzeinstellungen für ein Dokument angibt. Sie erstellen Instanzen dieser Klasse nicht direkt.

Der Schreibschutz zeigt an, ob der Autor empfohlen hat, ein Dokument schreibgeschützt zu öffnen und / oder ein Kennwort zum Ändern des Dokuments zu benötigen.

Aspose.Words ermöglicht es Ihnen, ein Dokument schreibgeschützt zu machen, um die Bearbeitung mithilfe der Eigenschaft [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) und der Methode [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/) einzuschränken.

{{% alert color="primary" %}}

In Microsoft Word können Sie auf ähnliche Weise ein schreibgeschütztes Dokument erstellen, indem Sie beide verwenden:

* "Immer schreibgeschützt öffnen" (Datei → Info → Dokument schützen)
* "Zu änderndes Passwort" (Speichern unter → Extras → Allgemeine Optionen → Passwort)

{{% /alert %}}

{{% alert color="primary" %}}

Benutzer können die Dokumentbearbeitung auch einschränken, indem sie [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) als **ReadOnly** auswählen.Dies ist jedoch eine weitere Funktion, die erweiterte Schutzfunktionen bietet. Es gibt eine solche Funktion in Microsoft Word bzw. sie ist in Aspose.Words implementiert.

**ProtectionType**

{{% /alert %}}

Die Eigenschaft **ReadOnlyRecommended** ist kennwortgeschützt.Wenn Sie also vor dem Anwenden der Eigenschaft **ReadOnlyRecommended** kein Kennwort festlegen, können andere Benutzer das Dokument einfach so öffnen, als wäre es ungeschützt. Sie greifen auf die Dokumentenschutzeinstellungen zu und legen über die Methode **SetPassword** ein Schreibschutzkennwort fest.

{{% alert color="primary" %}}

Beachten Sie, dass das festgelegte Kennwort nur eine Eigenschaft in einem Dokument ist, die entfernt werden kann, wenn auf die Dokumenteigenschaften zugegriffen wird. Dementsprechend ist ein solches Passwort keine Garantie für die Dokumentensicherheit.

{{% /alert %}}

Wenn Sie überprüfen müssen, ob ein Dokument über ein Schreibschutzkennwort verfügt, das die Bearbeitung einschränkt, können Sie die Eigenschaft [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/) verwenden.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument schreibgeschützt machen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## Entfernen Sie die schreibgeschützte Einschränkung

Wenn Sie nicht möchten, dass ein Benutzer Ihr Dokument schreibgeschützt öffnet, können Sie einfach die Eigenschaft **ReadOnlyRecommened** auf *false* setzen oder **ProtectionType** als **NoProtection** auswählen.

Das folgende Codebeispiel zeigt, wie Sie den schreibgeschützten Zugriff für ein Dokument entfernen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
