---
title: Dokument einschränken Bearbeiten in Java
second_title: Aspose.Words für Java
articleTitle: Einschränkung der Dokumentenbearbeitung
linktitle: Einschränkung der Dokumentenbearbeitung
description: "Beschränken Sie die Bearbeitung eines Dokuments durch Setzen eines Restriktionstyps. Sie können auch Schutz entfernen und unbeschränkte editierbare Regionen mit Java."
type: docs
weight: 30
url: /de/java/restrict-document-editing/
---

Manchmal müssen Sie möglicherweise die Fähigkeit begrenzen, ein Dokument zu bearbeiten und nur bestimmte Aktionen mit ihm zuzulassen. Dies kann nützlich sein, um zu verhindern, dass andere Personen sensible und vertrauliche Informationen in Ihrem Dokument bearbeiten.

Aspose.Words Sie können die Bearbeitung eines Dokuments durch die Einstellung eines Restriktionstyps einschränken. Außerdem, Aspose.Words Sie können auch Schreibschutzeinstellungen für ein Dokument angeben.

Dieser Artikel erklärt, wie man verwendet Aspose.Words einen Restriktionstyp auswählen, wie man Schutz hinzufügt oder entfernt, und wie man unbeschränkte editierbare Regionen macht.

## Wählen Sie Editing Restriction Type

Aspose.Words Sie können die Art und Weise kontrollieren, wie Sie die Inhalte mit der [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) Enumerationsparameter. Damit können Sie eine exakte Schutzart wie folgt auswählen:

* Genehmigen Sie nur
* Erlauben Sie nurFormFields
* ErlaubenNurRevisionen
* ReadOnly
* NoProtektion

Alle Typen sind passwortgesichert und wenn dieses Passwort nicht korrekt eingegeben wird, kann ein Benutzer den Inhalt Ihres Dokuments nicht gesetzlich ändern. Wenn Ihr Dokument also ohne Anforderung an Sie zurückgegeben wird, um das notwendige Passwort bereitzustellen, ist dies ein Zeichen, dass etwas falsch ist.

Wenn Sie bei der Auswahl des Sicherheitstyps kein Passwort gesetzt haben, können andere Benutzer den Schutz Ihres Dokuments einfach ignorieren.

{{% alert color="primary" %}}

Beachten Sie, dass das gesetzte Passwort nur eine Eigenschaft in einem Dokument ist, die entfernt werden kann, wenn die Belegeigenschaften aufgerufen werden. Ein solches Passwort ist somit keine Garantie für die Dokumentensicherheit. Die [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) Das zeigt die Methode.

{{% /alert %}}

## Dokumentschutz hinzufügen

Das Hinzufügen von Schutz zu Ihrem Dokument ist ein einfacher Prozess, da alles, was Sie tun müssen, eine der in diesem Abschnitt aufgeführten Schutzmethoden anzuwenden ist.

Aspose.Words ermöglicht es Ihnen, Ihre Dokumente vor Änderungen zu schützen [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) Methode. Dieses Verfahren ist kein Sicherheitsmerkmal und verschlüsselt kein Dokument.

{{% alert color="primary" %}}

In Microsoft Word, Sie können die Bearbeitung in ähnlicher Weise mit beiden einschränken:

* Einschränkung Editing (Datei → Info → Dokument schützen)
* Alternative Funktion – "Beschränkung bearbeiten" (Review → Schutz → Einschränkung bearbeiten)

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie Ihr Dokument den Passwortschutz hinzufügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

Das folgende Codebeispiel zeigt, wie man die Bearbeitung in einem Dokument einschränkt, so dass nur eine Bearbeitung in Formfeldern möglich ist:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## Dokumentschutz entfernen

Aspose.Words Sie können Schutz aus einem Dokument mit einfacher und direkter Dokumentenänderung entfernen. Sie können entweder den Dokumentenschutz entfernen, ohne das eigentliche Passwort zu kennen oder das korrekte Passwort zur Entsperrung des Dokuments mit dem [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) Methode. Beide Entfernungswege haben keinen Unterschied.

Das folgende Codebeispiel zeigt, wie Sie Schutz aus Ihrem Dokument entfernen können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## Unbeschränkte Editierbare Regionen angeben

Sie können die Bearbeitung Ihres Dokuments einschränken und gleichzeitig Änderungen an ausgewählten Teilen zulassen. Jeder, der Ihr Dokument öffnet, kann auf diese unbeschränkten Teile zugreifen und Änderungen am Inhalt vornehmen.

Aspose.Words Sie können die Teile markieren, die in Ihrem Dokument mit der [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) und [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) Methoden.

Das folgende Codebeispiel zeigt, wie das gesamte Dokument nur als gelesen markiert werden kann und bearbeitbare Regionen darin angeben:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

Sie können auch verschiedene Dokumentbearbeitungsbeschränkungen für verschiedene Abschnitte auswählen.

Das folgende Codebeispiel zeigt, wie man eine Einschränkung für das gesamte Dokument addiert und dann die Einschränkung für einen der Abschnitte entfernt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
