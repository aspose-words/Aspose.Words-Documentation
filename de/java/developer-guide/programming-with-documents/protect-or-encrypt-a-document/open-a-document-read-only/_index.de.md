---
title: Öffnen Sie ein Dokument nur in Java
second_title: Aspose.Words für Java
articleTitle: Dokument öffnen Nur lesen
linktitle: Dokument öffnen Nur lesen
description: "Machen Sie Ihr Dokument nur lesbar, damit der Inhalt kopiert oder gelesen werden kann, aber nicht mit Java."
type: docs
weight: 10
url: /de/java/open-a-document-read-only/
---

Manchmal haben Sie möglicherweise ein Dokument, das eine Überprüfung benötigt, aber Sie wollen nicht, dass die Bewerter Ihre Inhalte zufällig ändern. Aspose.Words Sie können die Erlaubnis Ihres Dokuments nur lesen, damit der Inhalt kopiert oder gelesen werden kann, aber nicht geändert wird. Dadurch wird verhindert, dass Inhalte entfernt oder Ihrem Dokument hinzugefügt werden.

{{% alert color="primary" %}}

Die Anwendung der nur gelesenen Option auf Ihr Dokument verhindert nicht, dass jemand eine neue Kopie davon erstellt und es mit einem anderen Namen speichert.

{{% /alert %}}

Dieser Artikel erklärt, wie man ein Dokument nur lesen kann.

## Machen Sie ein Dokument nur lesen

Aspose.Words hat die öffentliche Klasse [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) die Schreibschutzeinstellungen für ein Dokument angibt. Sie erstellen keine Instanzen dieser Klasse direkt.

Schreibschutz zeigt, ob der Autor empfohlen hat, ein Dokument nur als gelesen zu öffnen und/oder ein Passwort zur Änderung des Dokuments zu benötigen.

Aspose.Words Sie können ein Dokument nur lesen, um die Bearbeitung durch die Verwendung der [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) und die [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) Methode.

{{% alert color="primary" %}}

In Microsoft Word, Sie können ein Read-Only-Dokument in ähnlicher Weise mit beiden erstellen:

* "Always Open Read-Only" (Datei → Info → Dokument schützen)
* "Password to modifizieren" (Save As → Tools → Allgemeine Optionen → Passwort)

{{% /alert %}}

{{% alert color="primary" %}}

Benutzer können auch die Dokumentbearbeitung durch Auswahl beschränken [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) wie **ReadOnly**, aber dies ist eine weitere Funktion, die erweiterte Schutzfunktionen bietet. Es gibt eine solche Funktion in Microsoft Word, sie wird in Aspose.Words.

**ProtectionType** wird in einem der folgenden Artikel – "Beschränkung der Dokumentenbearbeitung" detailliert beschrieben.

{{% /alert %}}

Die **ReadOnlyRecommended** Eigenschaft ist passwortgeschützt, also wenn Sie kein Passwort vor der Anwendung der **ReadOnlyRecommended** Eigenschaft, dann können andere Benutzer einfach das Dokument öffnen, als ob es nicht geschützt wäre. Sie greifen auf die Dokumentenschutzeinstellungen zu und setzen über die **SetPassword** Methode.

{{% alert color="primary" %}}

Beachten Sie, dass das gesetzte Passwort nur eine Eigenschaft in einem Dokument ist, die entfernt werden kann, wenn die Belegeigenschaften aufgerufen werden. Ein solches Passwort ist somit keine Garantie für die Dokumentensicherheit.

{{% /alert %}}

Wenn Sie überprüfen müssen, ob ein Dokument ein Schreibschutz-Passwort hat, das es von der Bearbeitung einschränkt, können Sie die [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) Eigentum.

Das folgende Codebeispiel zeigt, wie ein Dokument nur gelesen werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Entfernen Read-Only Einschränkung

Wenn Sie nicht möchten, dass ein Benutzer Ihr Dokument als Lektüre öffnet, können Sie einfach das **ReadOnlyRecommened** Eigentum an *false* oder wählen **ProtectionType** wie **NoProtection**.

Das folgende Codebeispiel zeigt, wie man nur Lesezugriff für ein Dokument entfernt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
