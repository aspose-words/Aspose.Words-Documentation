---
title: Dokumentbearbeitung einschränken in C++
second_title: Aspose.Words für C++
articleTitle: Dokumentbearbeitung einschränken
linktitle: Dokumentbearbeitung einschränken
description: "Beschränken Sie die Bearbeitung eines Dokuments, indem Sie einen Einschränkungstyp mit C++ festlegen. Sie können auch den Schutz aufheben und uneingeschränkt bearbeitbare Bereiche erstellen."
type: docs
weight: 30
url: /de/cpp/restrict-document-editing/
---

Manchmal müssen Sie möglicherweise die Möglichkeit zum Bearbeiten eines Dokuments einschränken und nur bestimmte Aktionen damit zulassen. Dies kann nützlich sein, um zu verhindern, dass andere Personen vertrauliche und vertrauliche Informationen in Ihrem Dokument bearbeiten.

Mit Aspose.Words können Sie die Bearbeitung eines Dokuments einschränken, indem Sie einen Einschränkungstyp festlegen. Darüber hinaus können Sie mit Aspose.Words auch Schreibschutzeinstellungen für ein Dokument festlegen.

In diesem Artikel wird erläutert, wie Sie mit Aspose.Words einen Einschränkungstyp auswählen, Schutz hinzufügen oder entfernen und uneingeschränkte bearbeitbare Bereiche erstellen.

## Bearbeitungsbeschränkungstyp auswählen

Mit Aspose.Words können Sie steuern, wie Sie den Inhalt mithilfe des [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/)-Aufzählungsparameters einschränken. Auf diese Weise können Sie eine genaue Schutzart wie die folgende auswählen:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Alle Typen sind passwortgeschützt, und wenn dieses Passwort nicht korrekt eingegeben wird, kann ein Benutzer den Inhalt Ihres Dokuments nicht legal ändern. Wenn Ihr Dokument also ohne Angabe des erforderlichen Kennworts an Sie zurückgesandt wird, ist dies ein Zeichen dafür, dass etwas nicht stimmt.

Wenn Sie bei der Auswahl des Sicherheitstyps kein Kennwort festgelegt haben, können andere Benutzer den Schutz Ihres Dokuments einfach ignorieren.

{{% alert color="primary" %}}

Beachten Sie, dass das festgelegte Kennwort nur eine Eigenschaft in einem Dokument ist, die entfernt werden kann, wenn auf die Dokumenteigenschaften zugegriffen wird. Dementsprechend ist ein solches Passwort keine Garantie für die Dokumentensicherheit. Die [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) -Methode zeigt genau das.

{{% /alert %}}

## Dokumentenschutz hinzufügen

Das Hinzufügen von Schutz zu Ihrem Dokument ist ein einfacher Vorgang, da Sie lediglich eine der in diesem Abschnitt beschriebenen Schutzmethoden anwenden müssen.

Mit Aspose.Words können Sie Ihre Dokumente mit der [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/)-Methode vor Änderungen schützen. Diese Methode ist kein Sicherheitsmerkmal und verschlüsselt kein Dokument.

{{% alert color="primary" %}}

In Microsoft Word können Sie die Bearbeitung auf ähnliche Weise einschränken, indem Sie beide verwenden:

* Bearbeitung einschränken (Datei → Info → Dokument schützen)
* Alternative Funktion – "Bearbeitung einschränken" (Überprüfen → Schützen → Bearbeitung einschränken)

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie Ihrem Dokument einen Kennwortschutz hinzufügen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

Das folgende Codebeispiel zeigt, wie Sie die Bearbeitung in einem Dokument einschränken, sodass nur die Bearbeitung in Formularfeldern möglich ist:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Dokumentenschutz entfernen

Aspose.Words ermöglicht es Ihnen, den Schutz eines Dokuments durch einfache und direkte Dokumentänderung zu entfernen. Sie können entweder den Dokumentenschutz aufheben, ohne das tatsächliche Kennwort zu kennen, oder das richtige Kennwort zum Entsperren des Dokuments mithilfe der [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/)-Methode angeben. Beide Entfernungswege haben keinen Unterschied.

Das folgende Codebeispiel zeigt, wie Sie den Schutz aus Ihrem Dokument entfernen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Geben Sie uneingeschränkt bearbeitbare Bereiche an

Sie können die Bearbeitung Ihres Dokuments einschränken und gleichzeitig Änderungen an ausgewählten Teilen davon zulassen. Jeder, der Ihr Dokument öffnet, kann also auf diese uneingeschränkten Teile zugreifen und Änderungen am Inhalt vornehmen.

Mit Aspose.Words können Sie die Teile markieren, die in Ihrem Dokument mit den Methoden [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) und [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/) geändert werden können.

Das folgende Codebeispiel zeigt, wie Sie das gesamte Dokument als schreibgeschützt markieren und darin bearbeitbare Bereiche angeben:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

Sie können auch verschiedene Dokumentbearbeitungsbeschränkungen für verschiedene Abschnitte auswählen.

Das folgende Codebeispiel zeigt, wie Sie eine Einschränkung für das gesamte Dokument hinzufügen und dann die Einschränkung für einen der Abschnitte entfernen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
