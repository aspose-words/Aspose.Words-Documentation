---
title: Beschränken Sie die Dokumentbearbeitung in C#
second_title: Aspose.Words für .NET
articleTitle: Beschränken Sie die Bearbeitung von Dokumenten
linktitle: Beschränken Sie die Bearbeitung von Dokumenten
description: "Beschränken Sie die Bearbeitung eines Dokuments, indem Sie mithilfe von C# einen Einschränkungstyp festlegen. Sie können den Schutz auch entfernen und uneingeschränkt bearbeitbare Bereiche erstellen."
type: docs
weight: 30
url: /de/net/restrict-document-editing/
---

Manchmal müssen Sie möglicherweise die Möglichkeit zum Bearbeiten eines Dokuments einschränken und nur bestimmte Aktionen damit zulassen. Dies kann nützlich sein, um zu verhindern, dass andere Personen sensible und vertrauliche Informationen in Ihrem Dokument bearbeiten.

Mit Aspose.Words können Sie die Bearbeitung eines Dokuments einschränken, indem Sie einen Einschränkungstyp festlegen. Darüber hinaus können Sie mit Aspose.Words auch Schreibschutzeinstellungen für ein Dokument festlegen.

In diesem Artikel wird erklärt, wie Sie mit Aspose.Words einen Einschränkungstyp auswählen, wie Sie einen Schutz hinzufügen oder entfernen und wie Sie uneingeschränkt bearbeitbare Bereiche erstellen.

## Wählen Sie den Typ der Bearbeitungseinschränkung aus

Mit Aspose.Words können Sie mithilfe des [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/)-Enumerationsparameters steuern, wie Sie den Inhalt einschränken. Auf diese Weise können Sie eine genaue Schutzart auswählen, z. B. die folgende:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* Schreibgeschützt
* Kein Schutz

Alle Typen sind passwortgeschützt. Wenn dieses Passwort nicht korrekt eingegeben wird, kann ein Benutzer den Inhalt Ihres Dokuments nicht legal ändern. Wenn Ihr Dokument also ohne Angabe des erforderlichen Passworts an Sie zurückgesandt wird, ist dies ein Zeichen dafür, dass etwas nicht stimmt.

Wenn Sie bei der Auswahl des Sicherheitstyps kein Passwort festgelegt haben, können andere Benutzer den Schutz Ihres Dokuments einfach ignorieren.

{{% alert color="primary" %}}

Beachten Sie, dass das festgelegte Passwort lediglich eine Eigenschaft in einem Dokument ist, die entfernt werden kann, wenn auf die Dokumenteigenschaften zugegriffen wird. Dementsprechend ist ein solches Passwort keine Garantie für die Dokumentensicherheit. Die [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/)-Methode zeigt genau das.

{{% /alert %}}

## Dokumentenschutz hinzufügen

Das Hinzufügen eines Schutzes zu Ihrem Dokument ist ein einfacher Vorgang, da Sie lediglich eine der in diesem Abschnitt beschriebenen Schutzmethoden anwenden müssen.

Mit Aspose.Words können Sie Ihre Dokumente mithilfe der [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/)-Methode vor Änderungen schützen. Diese Methode stellt keine Sicherheitsfunktion dar und verschlüsselt kein Dokument.

{{% alert color="primary" %}}

In Microsoft Word können Sie die Bearbeitung auf ähnliche Weise einschränken, indem Sie Folgendes verwenden:

* Bearbeitung einschränken (Datei → Info → Dokument schützen)
* Alternative Funktion – "Bearbeitung einschränken" (Überprüfen → Schützen → Bearbeiten einschränken)

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie Ihrem Dokument einen Passwortschutz hinzufügen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Das folgende Codebeispiel zeigt, wie Sie die Bearbeitung in einem Dokument einschränken können, sodass nur die Bearbeitung in Formularfeldern möglich ist:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Entfernen Sie den Dokumentenschutz

Mit Aspose.Words können Sie den Schutz eines Dokuments durch einfache und direkte Dokumentänderung entfernen. Sie können entweder den Dokumentschutz entfernen, ohne das tatsächliche Passwort zu kennen, oder das richtige Passwort eingeben, um das Dokument mithilfe der [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/)-Methode zu entsperren. Beide Entfernungsmethoden haben keinen Unterschied.

Das folgende Codebeispiel zeigt, wie Sie den Schutz aus Ihrem Dokument entfernen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Geben Sie uneingeschränkt bearbeitbare Bereiche an

Sie können die Bearbeitung Ihres Dokuments einschränken und gleichzeitig Änderungen an ausgewählten Teilen davon zulassen. Somit kann jeder, der Ihr Dokument öffnet, auf diese uneingeschränkten Teile zugreifen und Änderungen am Inhalt vornehmen.

Mit Aspose.Words können Sie die Teile in Ihrem Dokument markieren, die mithilfe der [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/)- und [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/)-Methoden geändert werden können.

Das folgende Codebeispiel zeigt, wie das gesamte Dokument als schreibgeschützt markiert und bearbeitbare Bereiche darin angegeben werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Sie können auch unterschiedliche Dokumentbearbeitungseinschränkungen für verschiedene Abschnitte auswählen.

Das folgende Codebeispiel zeigt, wie Sie eine Einschränkung für das gesamte Dokument hinzufügen und dann die Einschränkung für einen der Abschnitte entfernen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
