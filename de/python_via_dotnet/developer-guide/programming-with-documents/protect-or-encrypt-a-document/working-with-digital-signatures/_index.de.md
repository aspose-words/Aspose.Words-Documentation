---
title: Arbeiten mit digitalen Signaturen
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit digitalen Signaturen
linktitle: Arbeiten mit digitalen Signaturen
description: "Signieren Sie Dokumente digital und erkennen, zählen, überprüfen und entfernen Sie vorhandene digitale Signaturen mit Python."
type: docs
weight: 40
url: /de/python-net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Mithilfe einer digitalen Signatur wird ein Dokument authentifiziert, um sicherzustellen, dass der Absender des Dokuments derjenige ist, für den er sich ausgibt, und dass der Inhalt des Dokuments nicht manipuliert wurde.

Aspose.Words unterstützt Dokumente mit digitalen Signaturen und bietet Zugriff darauf, sodass Sie digitale Signaturen in einem Dokument erkennen und validieren und ein generiertes PDF-Dokument mit einem bereitgestellten Zertifikat signieren können. Derzeit werden digitale Signaturen für DOC-, OOXML- und ODT-Dokumente unterstützt. Das Signieren generierter Dokumente wird im PDF-Format unterstützt.

{{% alert color="primary" %}}

**Versuchen Sie es online**

Sie können diese Funktionalität mit unserem [Kostenlose Online Signatur](https://products.aspose.app/words/signature) ausprobieren.

{{% /alert %}}

## Digitale Signaturen bleiben beim Öffnen und Speichern nicht erhalten

Ein wichtiger Punkt ist, dass bei einem mit Aspose.Words geladenen und dann gespeicherten Dokument alle auf dem Dokument signierten digitalen Signaturen verloren gehen. Dies ist beabsichtigt, da eine digitale Signatur sicherstellt, dass der Inhalt nicht geändert wurde, und außerdem die Identität des Unterzeichners des Dokuments authentifiziert. Diese Grundsätze würden ungültig, wenn die Originalunterschriften auf das resultierende Dokument übertragen würden.

Wenn Sie auf einen Server hochgeladene Dokumente verarbeiten, kann dies daher möglicherweise dazu führen, dass Sie ein auf Ihren Server hochgeladenes Dokument auf diese Weise beschädigen, ohne es zu wissen. Daher ist es am besten, ein Dokument auf digitale Signaturen zu überprüfen und die entsprechenden Maßnahmen zu ergreifen, wenn solche gefunden werden. Beispielsweise kann eine Warnung an den Kunden gesendet werden, die ihn darüber informiert, dass das Dokument, das er weitergibt, digitale Signaturen enthält, die verloren gehen, wenn dies der Fall ist verarbeitet. Sie können die Vorlagendatei dieses Beispiels von [Hier](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx) herunterladen.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Der obige Code verwendet die [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/)-Methode, um zu erkennen, ob ein Dokument digitale Signaturen enthält, ohne das Dokument zuerst zu laden. Dies bietet eine effiziente und sichere Möglichkeit, ein Dokument vor der Verarbeitung auf Unterschriften zu prüfen. Bei der Ausführung gibt die Methode ein [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/)-Objekt zurück, das die Eigenschaft [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/) bereitstellt. Diese Eigenschaft gibt true zurück, wenn das Dokument eine oder mehrere digitale Signaturen enthält. Es ist wichtig zu beachten, dass diese Methode die Signaturen nicht validiert, sondern nur ermittelt, ob Signaturen vorhanden sind. Die Validierung digitaler Signaturen wird im nächsten Abschnitt behandelt.

{{% alert color="primary" %}}

Sie können nach dem Laden auch überprüfen, ob ein Dokument über digitale Signaturen verfügt, indem Sie die `Count`-Eigenschaft der [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/)-Sammlung überprüfen.

{{% /alert %}}

## Digitale Signaturen auf Makros (VBA-Projekte)

Auf digitale Signaturen von Makros kann nicht zugegriffen oder diese signiert werden. Dies liegt daran, dass Aspose.Words nicht direkt mit Makros in einem Dokument umgeht. Allerdings bleiben digitale Signaturen auf Makros erhalten, wenn das Dokument zurück in ein beliebiges Word-Format exportiert wird. Diese Signaturen können im VBA-Code beibehalten werden, da der binäre Inhalt der Makros nicht geändert wird, selbst wenn das Dokument selbst geändert wird.

### Auf digitale Signaturen zugreifen und diese überprüfen

Ein Dokument kann mehrere digitale Signaturen haben. Auf diese Signaturen kann alle über die [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/)-Sammlung zugegriffen werden. Jedes zurückgegebene Objekt ist ein [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/), das eine einzelne digitale Signatur des Dokuments darstellt. Dies bietet Mitgliedern die Möglichkeit, die Gültigkeit der Signatur zu überprüfen.

Die wichtigste Eigenschaft, die mit digitalen Signaturen überprüft werden muss, ist die Gültigkeit jeder Signatur im Dokument. Alle Signaturen im Dokument können durch Aufruf der [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/)-Eigenschaft auf einmal validiert werden. Dies gibt true zurück, wenn alle Signaturen im Dokument gültig sind oder wenn das Dokument keine Signaturen hat, und false, wenn mindestens eine digitale Signatur ungültig ist.

Jede Signatur kann auch einzeln durch den Aufruf von [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/) validiert werden. Eine Signatur kann aus mehreren Gründen ungültig sein, beispielsweise wurde das Dokument seit der Signatur geändert oder das Zertifikat ist abgelaufen. Darüber hinaus können auch zusätzliche Details der Signatur abgerufen werden. Das folgende Codebeispiel zeigt, wie jede Signatur in einem Dokument validiert und grundlegende Informationen zur Signatur angezeigt werden. Sie können die Vorlagendatei dieses Beispiels von [Hier](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx) herunterladen.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Signieren von Word-Dokumenten

Die [DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/)-Klasse stellt Methoden zum Signieren von Dokumenten bereit. Die [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/)-Methode signiert das Quelldokument mithilfe des angegebenen [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) mit digitaler Signatur und schreibt das signierte Dokument in den Zielstream

Das folgende Beispiel zeigt, wie ein einfaches Dokument signiert wird

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

Das folgende Beispiel zeigt, wie ein verschlüsseltes Dokument signiert wird

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Signieren eines Word-Dokuments mit der Signaturzeile

Sie können das Quelldokument mit der angegebenen [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/)- und [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/)-Datei mit digitaler Signatur signieren und das signierte Dokument in die Zieldatei schreiben. Mithilfe der [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/)-Klasse können Sie Optionen für das Signieren von Dokumenten festlegen. Das folgende Beispiel zeigt, wie Sie eine neue Signaturzeile erstellen und ein Dokument signieren

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

Das folgende Beispiel zeigt, wie Sie eine vorhandene Signaturzeile ändern und ein Dokument signieren

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Signieren eines Word-Dokuments mit der Signaturanbieter-ID

Das folgende Beispiel zeigt, wie Sie ein Word-Dokument mit der Signaturanbieter-ID signieren. Der Kryptografiedienstanbieter (CSP) ist ein unabhängiges Softwaremodul, das tatsächlich Kryptografiealgorithmen zur Authentifizierung, Kodierung und Verschlüsselung ausführt. MS Office reserviert den Wert {00000000-0000-0000-0000-000000000000} für seinen Standardsignaturanbieter.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Erstellen Sie ein neues Signaturzeilen-Signatur-Word-Dokument mit der Anbieter-ID

Das folgende Beispiel zeigt, wie Sie eine Signaturzeile erstellen und ein Word-Dokument mithilfe der Signaturanbieter-ID signieren.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Rufen Sie den Wert der digitalen Signatur ab

Aspose.Words bietet außerdem die Möglichkeit, mithilfe der [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/)-Eigenschaft den Wert der digitalen Signatur aus einem digital signierten Dokument als Byte-Array abzurufen.

Das folgende Codebeispiel zeigt, wie der Wert der digitalen Signatur als Byte-Array aus einem Dokument abgerufen wird:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}
