---
title: Arbeiten Sie mit digitalen Signaturen in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten Sie mit digitalen Signaturen
linktitle: Arbeiten Sie mit digitalen Signaturen
description: "Signieren Sie Dokumente digital und erkennen, zählen, überprüfen und entfernen Sie vorhandene digitale Signaturen mit C#."
type: docs
weight: 40
url: /de/net/working-with-digital-signatures/
---

Eine digitale Signatur ist eine technologische Implementierung elektronischer Signaturen zum Signieren von Dokumenten und zum Authentifizieren des Unterzeichners, um sicherzustellen, dass ein Dokument seit seiner Signatur nicht verändert wurde. Jede digitale Signatur ist für jeden Unterzeichner einzigartig, da das PKI-Protokoll zur Generierung sowohl öffentlicher als auch privater Schlüssel befolgt wird. Das digitale Signieren eines Dokuments bedeutet, dass eine Signatur mithilfe des privaten Schlüssels des Unterzeichners erstellt wird, wobei ein mathematischer Algorithmus zum Verschlüsseln des generierten Hashs verwendet wird.

Mit Aspose.Words können Sie vorhandene digitale Signaturen erkennen, zählen oder überprüfen und Ihrem Dokument auch eine neue Signatur hinzufügen, um etwaige Manipulationen daran festzustellen. Sie können auch alle digitalen Signaturen aus einem Dokument entfernen. Verwenden Sie die [DigitalSignatureUtil](https://reference.aspose.com/words/de/net/aspose.words.digitalsignatures/digitalsignatureutil/)-Klasse, um mit digitalen Signaturen zu arbeiten.

In diesem Artikel wird erläutert, wie Sie alle oben genannten Schritte ausführen, um die Authentizität und Integrität eines digitalen Dokuments zu überprüfen.

{{% alert color="primary" %}}

Beachten Sie, dass Sie nur dann auf digitale Signaturen Ihres Dokuments zugreifen können, wenn Sie die .NET Framework-Version 2.0 und höher ausführen.

{{% /alert %}}

{{% alert color="primary" %}}

**Versuchen Sie es online**

Sie können diese Funktionalität mit unserem [Kostenlose Online Signatur](https://products.aspose.app/words/signature) ausprobieren.

{{% /alert %}}

## Unterstützte Formate

Mit Aspose.Words können Sie mit digitalen Signaturen an DOC-, OOXML- und ODT-Dokumenten arbeiten und das generierte Dokument im PDF- oder XPS-Format signieren.

## Einschränkungen digitaler Signaturen

In der folgenden Tabelle werden einige Einschränkungen beschrieben, die bei der Arbeit mit digitalen Signaturen über Aspose.Words auftreten können, sowie einige alternative Optionen.

|  Einschränkung |  Alternative Möglichkeit |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Verlust digitaler Signaturen auf einem Dokument nach dem Laden und Speichern. Daher kann die Verarbeitung eines Dokuments auf einem Server ohne Vorankündigung zum Verlust aller digitalen Signaturen führen |  Überprüfen Sie, ob ein Dokument über digitale Signaturen verfügt, und ergreifen Sie die entsprechenden Maßnahmen, wenn solche gefunden werden. Senden Sie beispielsweise eine Benachrichtigung an die Kunden, um sie darüber zu informieren, dass das von ihnen hochgeladene Dokument digitale Signaturen enthält, die bei der Verarbeitung verloren gehen |
|  Aspose.Words unterstützt die Arbeit mit Makros in einem Dokument. Aspose.Words unterstützt jedoch noch keine digitalen Signaturen für Makros |  Exportieren Sie das Dokument zurück in ein beliebiges Word-Format und verwenden Sie Microsoft Word, um Makros eine digitale Signatur hinzuzufügen |

## Digitale Signaturen erkennen, zählen und überprüfen

Mit Aspose.Words können Sie mithilfe der [DetectFileFormat](https://reference.aspose.com/words/de/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/)-Methode und der [HasDigitalSignature](https://reference.aspose.com/words/de/net/aspose.words/fileformatinfo/hasdigitalsignature/)-Eigenschaft digitale Signaturen in einem Dokument erkennen. Es ist zu beachten, dass bei einer solchen Prüfung nur die Tatsache der Unterschrift festgestellt wird, nicht jedoch deren Gültigkeit.

Ein Dokument kann mehr als einmal signiert werden, und dies kann von verschiedenen Benutzern erfolgen. Um die Gültigkeit digitaler Signaturen zu überprüfen, müssen Sie diese mit der [LoadSignatures](https://reference.aspose.com/words/de/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/)-Methode aus dem Dokument laden und die [IsValid](https://reference.aspose.com/words/de/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/)-Eigenschaft verwenden. Mit Aspose.Words können Sie außerdem mithilfe der [Count](https://reference.aspose.com/words/de/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/)-Eigenschaft einen Satz aller digitalen Signaturen in einem Dokument zählen.

All dies bietet eine effiziente und sichere Möglichkeit, ein Dokument vor der Verarbeitung auf Unterschriften zu prüfen.

Das folgende Codebeispiel zeigt, wie Sie das Vorhandensein digitaler Signaturen erkennen und verifizieren können:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Erstellen Sie eine digitale Signatur {#create-a-digital-signature}

Um eine digitale Signatur zu erstellen, müssen Sie ein Signaturzertifikat laden, das die Identität bestätigt. Wenn Sie ein digital signiertes Dokument senden, senden Sie auch Ihr Zertifikat und Ihren öffentlichen Schlüssel.

Mit Aspose.Words können Sie ein X.509-Zertifikat erstellen, ein digitales Zertifikat, das den international anerkannten X.509-PKI-Standard verwendet, um zu überprüfen, ob ein öffentlicher Schlüssel zum im Zertifikat enthaltenen Unterzeichner gehört. Verwenden Sie dazu die [Create](https://reference.aspose.com/words/de/net/aspose.words.digitalsignatures/certificateholder/create/)-Methode innerhalb der [CertificateHolder](https://reference.aspose.com/words/de/net/aspose.words.digitalsignatures/certificateholder/)-Klasse.

In den nächsten Abschnitten wird erläutert, wie Sie eine digitale Signatur und eine Signaturzeile hinzufügen und ein generiertes PDF-Dokument signieren.

### Unterschreiben Sie ein Dokument

Mit Aspose.Words können Sie ein DOC-, DOCX-, XPS- oder ODT-Dokument mithilfe der [Sign](https://reference.aspose.com/words/de/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/)-Methode und [SignOptions](https://reference.aspose.com/words/de/net/aspose.words.digitalsignatures/signoptions/)-Eigenschaften digital signieren.

Das folgende Codebeispiel zeigt, wie Sie Dokumente mithilfe eines Zertifikatsinhabers und der Signaturoptionen signieren:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Fügen Sie eine Signaturzeile hinzu

Eine Signaturzeile ist eine visuelle Darstellung einer digitalen Signatur in einem Dokument. Mit Aspose.Words können Sie eine Signaturzeile mithilfe der [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertsignatureline/)-Methode einfügen. Sie können die Parameter für diese Darstellung auch mithilfe der [SignatureLineOptions](https://reference.aspose.com/words/de/net/aspose.words/signaturelineoptions/)-Klasse festlegen.

Das Bild unten zeigt beispielsweise, wie gültige und ungültige Signaturen angezeigt werden können.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="Zeichnung" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="Zeichnung" style="width:300px"/>

Wenn ein Dokument eine Signaturzeile und keine digitale Signatur enthält, gibt es außerdem eine Funktion, mit der der Benutzer aufgefordert wird, eine Signatur hinzuzufügen.

Das folgende Codebeispiel zeigt, wie man ein Dokument mit einem persönlichen Zertifikat und einer bestimmten Signaturzeile signiert:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Signieren Sie ein generiertes PDF-Dokument {#sign-a-generated-pdf-document}

Mit Aspose.Words können Sie mithilfe der [PdfDigitalSignatureDetails](https://reference.aspose.com/words/de/net/aspose.words.saving/pdfdigitalsignaturedetails/)-Eigenschaften ein PDF-Dokument signieren und alle Details abrufen.

Das folgende Codebeispiel zeigt, wie ein generiertes PDF signiert wird:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Rufen Sie den Wert der digitalen Signatur ab

Aspose.Words bietet außerdem die Möglichkeit, mithilfe der [SignatureValue](https://reference.aspose.com/words/de/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/)-Eigenschaft den Wert der digitalen Signatur aus einem digital signierten Dokument als Byte-Array abzurufen.

Das folgende Codebeispiel zeigt, wie der Wert der digitalen Signatur als Byte-Array aus einem Dokument abgerufen wird:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Entfernen Sie digitale Signaturen

Mit Aspose.Words können Sie mithilfe der [RemoveAllSignatures](https://reference.aspose.com/words/de/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/)-Methode alle digitalen Signaturen aus einem signierten Dokument entfernen.

Das folgende Codebeispiel zeigt, wie digitale Signaturen aus einem Dokument geladen und entfernt werden:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Beachten Sie, dass Sie nicht nur eine digitale Signatur in Ihrem Dokument entfernen können.

{{% /alert %}}
