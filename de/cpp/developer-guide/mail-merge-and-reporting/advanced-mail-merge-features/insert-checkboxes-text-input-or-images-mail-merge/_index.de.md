---
title: Fügen Sie Checkboxes, Texteingaben oder Bilder während Mail Merge ein
second_title: Aspose.Words für C++
articleTitle: Checkboxes, Texteingaben oder Bilder einfügen
linktitle: Checkboxes, Texteingaben oder Bilder einfügen
description: "Fügen Sie Kontrollkästchen oder Texteingabefelder während Mail Merge mit C++ ein. Fügen Sie auch Bilder aus einer Datenbank während Mail Merge in C++ ein."
type: docs
weight: 40
url: /de/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Die Merge-Engine nimmt ein Dokument als Eingabe, sucht darin nach `MERGEFIELD` -Feldern und ersetzt sie durch die aus der Datenquelle erhaltenen Daten. Normalerweise werden Klartext und HTML eingefügt, aber Aspose.Words -Benutzer können auch ein Dokument generieren, das ungewöhnlichere Szenarien für Mail Merge -Felder behandelt.

Die leistungsstarke Aspose.Words -Funktionalität ermöglicht es Ihnen, den mail merge-Prozess zu erweitern:

- Kontrollkästchen und Texteingabeformularfelder während eines mail merge-Vorgangs in das Dokument einfügen
- fügen Sie Bilder aus einem beliebigen benutzerdefinierten Speicher (Dateien, BLOB -Felder usw.) ein.)

## Checkboxes und Texteingabe während Mail Merge einfügen

Manchmal ist es erforderlich, eine Mail Merge -Operation auszuführen, damit im Seriendruckfeld kein Text ersetzt wird, sondern ein Kontrollkästchen oder ein Texteingabefeld. Auch wenn dies nicht das häufigste Szenario ist, ist es für einige Aufgaben sehr praktisch.

Der folgende Screenshot eines Word-Dokuments zeigt eine Vorlage mit Seriendruckfeldern:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Dieser Screenshot des Word-Dokuments unten zeigt das bereits generierte Dokument:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Beachten Sie, dass einige Felder durch einfachen Text ersetzt wurden, einige Felder durch Kontrollkästchen-Formularfelder und das Feld `Subject` durch ein Texteingabefeld ersetzt wurden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Kontrollkästchen und Eingabetextfelder während einer Mail Merge in ein Dokument eingefügt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## Bilder während Mail Merge einfügen

Wenn Sie eine Mail Merge -Operation ausführen, können Sie Bilder aus der Datenbank mithilfe spezieller Bildfelder Mail Merge in das Dokument einfügen. Das Feld Bild Mail Merge ist ein Seriendruckfeld mit dem Namen Bild:MyFieldName.

### Bilder aus einer Datenbank einfügen

Wenn während eines Mail Merge ein Bild Mail Merge -Feld in einem Dokument gefunden wird, wird das [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/) -Ereignis ausgelöst. Sie können auf dieses Ereignis reagieren, um einen Dateinamen, einen Stream oder ein Bildobjekt an die mail merge-Engine zurückzugeben, damit es in das Dokument eingefügt werden kann.

Das folgende Codebeispiel zeigt, wie Bilder, die in einem Datenbankfeld BLOB gespeichert sind, in einen Bericht eingefügt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### Bildeigenschaften während Mail Merge festlegen

Beim Zusammenführen eines Bild-Seriendruckfelds müssen Sie möglicherweise manchmal verschiedene Bildeigenschaften steuern, z. B. [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

Derzeit können Sie mit [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args) nur die Eigenschaften für die Bildbreite bzw. -höhe festlegen. Um dieses Problem zu beheben, stellt Aspose.Words die Eigenschaft [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/) bereit, mit der Sie die vollständige Kontrolle über das eingefügte Bild oder eine andere Form erhalten.

Das folgende Codebeispiel zeigt, wie verschiedene Bildeigenschaften festgelegt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
