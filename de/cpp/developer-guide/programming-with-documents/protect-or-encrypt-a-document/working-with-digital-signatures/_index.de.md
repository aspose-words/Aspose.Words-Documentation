---
title: Arbeiten mit digitalen Signaturen in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit digitalen Signaturen
linktitle: Arbeiten mit digitalen Signaturen
description: "Dokumente digital signieren und vorhandene digitale Signaturen erkennen, zählen, verifizieren und entfernen."
type: docs
weight: 160
url: /de/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Eine digitale Signatur ist eine technologische Implementierung elektronischer Signaturen zum Signieren von Dokumenten und zur Authentifizierung des Unterzeichners, um sicherzustellen, dass ein Dokument seit seiner Unterzeichnung nicht geändert wurde. Jede digitale Signatur ist für jeden Unterzeichner eindeutig, da das PKI -Protokoll befolgt wird, um sowohl öffentliche als auch private Schlüssel zu generieren. Ein Dokument digital signieren bedeutet, eine Signatur mit dem privaten Schlüssel des Unterzeichners zu erstellen, wobei ein mathematischer Algorithmus verwendet wird, um den generierten Hash zu verschlüsseln.

Aspose.Words ermöglicht es Ihnen, vorhandene digitale Signaturen zu erkennen, zu zählen oder zu verifizieren sowie Ihrem Dokument eine neue Signatur hinzuzufügen, um Manipulationen festzustellen. Sie können auch alle digitalen Signaturen aus einem Dokument entfernen. Verwenden Sie die Klasse [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/), um mit digitalen Signaturen zu arbeiten.

In diesem Artikel wird erläutert, wie Sie alle oben genannten Schritte ausführen, um die Authentizität und Integrität eines digitalen Dokuments zu überprüfen.

{{% alert color="primary" %}}

**Online ausprobieren**

Sie können diese Funktionalität mit unserem ausprobieren [Kostenlose Online Signatur](https://products.aspose.app/words/signature).

{{% /alert %}}

## Unterstützte Formate

Mit Aspose.Words können Sie mit digitalen Signaturen für DOC-, OOXML- und ODT-Dokumente arbeiten und das generierte Dokument im Format PDF oder XPS signieren.

## Einschränkungen digitaler Signaturen

In der folgenden Tabelle werden einige Einschränkungen beschrieben, die bei der Arbeit mit digitalen Signaturen über Aspose.Words auftreten können, sowie einige alternative Optionen.

| Einschränkung | Alternative Option |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Verlust von digitalen Signaturen auf einem Dokument nach dem Laden und Speichern. Daher kann die Verarbeitung eines Dokuments auf einem Server zum Verlust aller digitalen Signaturen ohne Vorankündigung führen. | Überprüfen Sie, ob ein Dokument über digitale Signaturen verfügt, und ergreifen Sie gegebenenfalls die entsprechenden Maßnahmen. Senden Sie beispielsweise eine Warnung an die Kunden, in der sie darüber informiert werden, dass das hochgeladene Dokument digitale Signaturen enthält, die bei der Verarbeitung verloren gehen. |
| Aspose.Words unterstützt die Arbeit mit Makros in einem Dokument. Aspose.Words unterstützt jedoch noch keine digitalen Signaturen auf Makros. | Exportieren Sie das Dokument zurück in ein beliebiges Word-Format und fügen Sie Makros mit Microsoft Word eine digitale Signatur hinzu. |

## Digitale Signaturen erkennen, zählen und verifizieren

Aspose.Words ermöglicht es Ihnen, digitale Signaturen in einem Dokument mithilfe der [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/)-Methode und der [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/)-Eigenschaft zu erkennen. Es ist anzumerken, dass eine solche Überprüfung nur die Tatsache der Unterschrift, nicht aber ihre Gültigkeit erkennt.

Ein Dokument kann mehrmals signiert werden, und dies kann von verschiedenen Benutzern durchgeführt werden. Um die Gültigkeit digitaler Signaturen zu überprüfen, müssen Sie sie mit der Methode [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) aus dem Dokument laden und die Eigenschaft [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/) verwenden. Außerdem können Sie mit Aspose.Words einen Satz aller digitalen Signaturen in einem Dokument mithilfe der Eigenschaft [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/) zählen.

All dies bietet eine effiziente und sichere Möglichkeit, ein Dokument vor der Verarbeitung auf Signaturen zu überprüfen.

Das folgende Codebeispiel zeigt, wie Sie das Vorhandensein digitaler Signaturen erkennen und überprüfen können:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Erstellen einer digitalen Signatur {#create-a-digital-signature}

Um eine digitale Signatur zu erstellen, müssen Sie ein Signaturzertifikat laden, das die Identität bestätigt. Wenn Sie ein digital signiertes Dokument senden, senden Sie auch Ihr Zertifikat und Ihren öffentlichen Schlüssel.

Mit Aspose.Words können Sie ein X.509-Zertifikat erstellen, ein digitales Zertifikat, das den international anerkannten X.509 PKI -Standard verwendet, um zu überprüfen, ob ein öffentlicher Schlüssel dem im Zertifikat enthaltenen Unterzeichner gehört. Verwenden Sie dazu die Methode [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) innerhalb der Klasse [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

In den nächsten Abschnitten wird erläutert, wie Sie eine digitale Signatur, eine Signaturzeile und ein generiertes PDF-Dokument signieren.

### Ein Dokument signieren

Mit Aspose.Words können Sie ein DOC-, DOCX- oder ODT-Dokument digital mit der [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/)-Methode und den [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/)-Eigenschaften signieren.

Das folgende Codebeispiel zeigt, wie Dokumente mit einem Zertifikatsinhaber und Signaturoptionen signiert werden:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Fügen Sie eine Signaturzeile hinzu

Eine Signaturzeile ist eine visuelle Darstellung einer digitalen Signatur in einem Dokument. Mit Aspose.Words können Sie eine Signaturzeile mit der Methode [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/) einfügen. Sie können die Parameter für diese Darstellung auch mit der Klasse [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/) festlegen.

Das folgende Bild zeigt beispielsweise, wie gültige und ungültige Signaturen angezeigt werden können.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

Wenn ein Dokument eine Signaturzeile und keine digitale Signatur enthält, gibt es auch eine Funktion, mit der der Benutzer aufgefordert wird, eine Signatur hinzuzufügen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mit einem persönlichen Zertifikat und einer bestimmten Signaturzeile signieren:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Signieren eines generierten PDF Dokuments {#sign-a-generated-pdf-document}

Aspose.Words ermöglicht das Signieren und Abrufen aller Details eines PDF-Dokuments mithilfe der [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/)-Eigenschaften.

Das folgende Codebeispiel zeigt, wie eine generierte PDF signiert wird:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Abrufen des Werts der digitalen Signatur

Aspose.Words bietet auch die Möglichkeit, den digitalen Signaturwert aus einem digital signierten Dokument als Byte-Array mit der Eigenschaft [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/) abzurufen.

Das folgende Codebeispiel zeigt, wie Sie den Wert der digitalen Signatur als Byte-Array aus einem Dokument abrufen:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Digitale Signaturen entfernen

Mit Aspose.Words können Sie alle digitalen Signaturen mit der [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/)-Methode aus einem signierten Dokument entfernen.

Das folgende Codebeispiel zeigt, wie Sie digitale Signaturen aus einem Dokument laden und entfernen:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Beachten Sie, dass Sie nicht nur eine digitale Signatur in Ihrem Dokument entfernen können.

{{% /alert %}}
