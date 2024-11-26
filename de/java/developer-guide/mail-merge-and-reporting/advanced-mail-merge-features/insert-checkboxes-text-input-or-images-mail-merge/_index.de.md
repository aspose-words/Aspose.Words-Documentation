---
title: Fügen Sie Checkboxes, Texteingaben oder Bilder während Mail Merge ein
second_title: Aspose.Words für Java
articleTitle: Checkboxes, Texteingaben oder Bilder einfügen
linktitle: Checkboxes, Texteingaben oder Bilder einfügen
description: "Fügen Sie checkboxes oder Texteingabefelder während Mail Merge mit Java ein. Fügen Sie auch Bilder aus einer Datenbank während Mail Merge in Java ein."
type: docs
weight: 20
url: /de/java/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Die Merge-Engine nimmt ein Dokument als Eingabe, sucht darin nach `MERGEFIELD` -Feldern und ersetzt sie durch die aus der Datenquelle erhaltenen Daten. Normalerweise werden Klartext und HTML eingefügt, aber Aspose.Words -Benutzer können auch ein Dokument generieren, das ungewöhnlichere Szenarien für Mail Merge -Felder behandelt.

Die leistungsstarke Aspose.Words -Funktionalität ermöglicht es Ihnen, den Mail Merge-Prozess zu erweitern:

- fügen Sie checkboxes- und Texteingabeformularfelder während eines mail merge-Vorgangs in das Dokument ein
- fügen Sie Bilder aus einem beliebigen benutzerdefinierten Speicher (Dateien, BLOB -Felder usw.) ein.)

## Checkboxes und Texteingabe während Mail Merge einfügen

Manchmal ist es erforderlich, eine Mail Merge -Operation auszuführen, damit im Seriendruckfeld kein Text ersetzt wird, sondern ein checkbox - oder Texteingabefeld. Auch wenn dies nicht das häufigste Szenario ist, ist es für einige Aufgaben sehr praktisch.

Der folgende Screenshot eines Word-Dokuments zeigt eine Vorlage mit Seriendruckfeldern:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-1](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge_1.jpeg)

Dieser Screenshot des Word-Dokuments unten zeigt das bereits generierte Dokument:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-2](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge-2.png)

{{% alert color="primary" %}}

Beachten Sie, dass einige Felder durch einfachen Text ersetzt wurden, einige Felder durch checkbox -Formularfelder und das `Subject` -Feld durch ein Texteingabefeld ersetzt wurden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie checkboxes eingefügt und Textfelder während einer mail merge in ein Dokument eingegeben werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-HandleMergeField.java" >}}

## Bilder während Mail Merge einfügen

Wenn Sie eine Mail Merge -Operation ausführen, können Sie Bilder aus der Datenbank mithilfe spezieller Bildfelder Mail Merge in das Dokument einfügen. Das Feld Bild Mail Merge ist ein Seriendruckfeld mit dem Namen Bild:MyFieldName.

### Bilder aus einer Datenbank einfügen

Wenn während eines mail merge ein Bild Mail Merge -Feld in einem Dokument gefunden wird, wird das [FieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldMergingCallback) -Ereignis ausgelöst. Sie können auf dieses Ereignis reagieren, um einen Dateinamen, einen Stream oder ein Bildobjekt an die Mail Merge-Engine zurückzugeben, damit es in das Dokument eingefügt werden kann.

Das folgende Codebeispiel zeigt, wie Bilder, die in einem Datenbankfeld BLOB gespeichert sind, in einen Bericht eingefügt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageFromBlob.java" >}}

### Bildeigenschaften während Mail Merge festlegen

Beim Zusammenführen eines Bild-Seriendruckfelds müssen Sie möglicherweise manchmal verschiedene Bildeigenschaften steuern, z. B. [WrapType](https://reference.aspose.com/words/java/com.aspose.words/wraptype/).

Derzeit können Sie mit [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/) nur die Eigenschaften für die Bildbreite bzw. -höhe festlegen. Um dieses Problem zu beheben, stellt Aspose.Words die Eigenschaft [Shape](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/#getShape) bereit, mit der Sie die vollständige Kontrolle über das eingefügte Bild oder eine andere Form erhalten.

Das folgende Codebeispiel zeigt, wie verschiedene Bildeigenschaften festgelegt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-MailMergeImageField.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-FieldMergingHandler.java" >}}

