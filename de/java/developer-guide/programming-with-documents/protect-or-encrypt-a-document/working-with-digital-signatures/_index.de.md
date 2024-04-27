---
title: Arbeiten mit digitalen Signaturen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit digitalen Signaturen
linktitle: Arbeiten mit digitalen Signaturen
description: "Digital signieren Sie Dokumente und erkennen, zählen, überprüfen und entfernen Sie bestehende digitale Signaturen mithilfe Java."
type: docs
weight: 30
url: /de/java/working-with-digital-signatures/
---

Eine digitale Signatur ist eine technologische Umsetzung elektronischer Signaturen, um Dokumente zu unterzeichnen und den Unterzeichner zu authentifizieren, um sicherzustellen, dass ein Dokument seit seiner Unterzeichnung nicht geändert wurde. Jede digitale Signatur ist für jeden Unterzeichner einzigartig, weil sie dem PKI-Protokoll folgen, um sowohl öffentliche als auch private Schlüssel zu erzeugen. Ein Dokument digital zu signieren bedeutet, eine Signatur mit dem privaten Schlüssel des Signers zu erstellen, wo ein mathematischer Algorithmus verwendet wird, um die generierte Hash zu verschlüsseln.

Aspose.Words ermöglicht es Ihnen, bestehende digitale Signaturen zu erkennen, zu zählen oder zu überprüfen, und auch eine neue Signatur zu Ihrem Dokument hinzufügen, um herauszufinden, welche Manipulation darin besteht. Sie können auch alle digitalen Signaturen aus einem Dokument entfernen. Verwenden Sie die [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) mit digitalen Signaturen zu arbeiten.

Dieser Artikel erklärt, wie Sie alle oben genannten Schritte unternehmen, um die Authentizität und Integrität eines digitalen Dokuments zu validieren.

{{% alert color="primary" %}}

Beachten Sie, dass Sie nur bei der Ausführung des Dokuments auf digitale Signaturen zugreifen können Java 6 Version und oben.

{{% /alert %}}

{{% alert color="primary" %}}

**Online testen**

Sie können diese Funktionalität mit unserer [Online Signatur](https://products.aspose.app/words/signature).

{{% /alert %}}

## Unterstützte Formate

Aspose.Words Sie können mit digitalen Signaturen auf DOC, OOXML und ODT-Dokumenten arbeiten und das generierte Dokument in PDF unterzeichnen oder XPS Format.

## Einschränkungen von digitalen Signaturen

Die folgende Tabelle beschreibt einige Einschränkungen, die Sie während der Arbeit mit digitalen Signaturen durch Aspose.Words, sowie einige alternative Optionen.

|  Begrenzung |  Alternative |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Verlust digitaler Signaturen auf einem Dokument nach dem Laden und Speichern. Daher kann die Verarbeitung eines Dokuments an einen Server den Verlust aller digitalen Signaturen ohne Ankündigung verursachen |  Überprüfen Sie, ob ein Dokument digitale Signaturen hat und nehmen Sie die entsprechende Aktion, wenn eine gefunden wird. Senden Sie zum Beispiel eine Warnung an die Kunden, die sie informieren, dass das Dokument, das sie hochladen, digitale Signaturen enthält, die verloren gehen, wenn es verarbeitet wird |
|  Aspose.Words unterstützt die Zusammenarbeit mit Makros in einem Dokument. Aber... Aspose.Words unterstützt noch keine digitalen Signaturen auf Makros |  Exportieren Sie das Dokument zurück in jedes Word-Format und verwenden Sie Microsoft Word eine digitale Signatur zu Makros hinzufügen |

## Digitale Signaturen erkennen, zählen und verifizieren

Aspose.Words ermöglicht es Ihnen, die digitale Signatur in einem Dokument mit dem [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) Verfahren und [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) Eigentum. Es ist erwähnenswert, dass eine solche Überprüfung nur die Tatsache der Unterschrift, aber nicht ihre Gültigkeit erkennen wird.

Ein Dokument kann mehr als einmal unterzeichnet werden, und dies kann von verschiedenen Benutzern geschehen. Um die Gültigkeit von digitalen Signaturen zu überprüfen, müssen Sie sie aus dem Dokument mit dem [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) Methode und Verwendung der [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) Eigentum. Auch Aspose.Words ermöglicht es Ihnen, einen Satz von allen digitalen Signaturen innerhalb eines Dokuments mit dem [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) Eigentum.

All dies bietet eine effiziente und sichere Möglichkeit, ein Dokument für Unterschriften vor der Verarbeitung zu überprüfen.

Das folgende Codebeispiel zeigt, wie man das Vorhandensein digitaler Signaturen erkennt und verifiziert:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Digitale Signatur erstellen {#create-a-digital-signature}

Um eine digitale Signatur zu erstellen, müssen Sie ein Signierzertifikat laden, das die Identität bestätigt. Wenn Sie ein digital signiertes Dokument senden, senden Sie auch Ihr Zertifikat und den öffentlichen Schlüssel.

Aspose.Words Sie können X.509-Zertifikat erstellen, ein digitales Zertifikat, das den international anerkannten X.509 PKI-Standard verwendet, um zu überprüfen, ob ein öffentlicher Schlüssel zum Signer gehört, der im Zertifikat enthalten ist. Um dies zu tun, verwenden Sie die [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) Verfahren innerhalb der [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) Klasse.

Die nächsten Abschnitte erklären, wie man eine digitale Signatur, Signaturzeile und wie man ein generiertes PDF-Dokument signiert.

### Dokument eintragen

Aspose.Words Sie können ein DOC, DOCX oder ODT-Dokument digital unterschreiben, indem Sie [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) Verfahren und [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) Eigenschaften.

Das folgende Codebeispiel zeigt, wie Dokumente mit einem Zertifikatsinhaber und Zeichenoptionen signiert werden können:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Eine Signature Line hinzufügen

Eine Signaturzeile ist eine visuelle Darstellung einer digitalen Signatur in einem Dokument. Aspose.Words Sie können eine Signaturzeile mit der [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) Methode. Sie können auch die Parameter für diese Darstellung mit der [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) Klasse.

Das folgende Bild zeigt beispielsweise, wie gültige und ungültige Signaturen angezeigt werden können.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Auch wenn ein Dokument eine Signaturzeile und keine digitale Signatur enthält, gibt es ein Feature, um den Benutzer zu bitten, eine Signatur hinzuzufügen.

Das folgende Codebeispiel zeigt, wie man ein Dokument mit einem persönlichen Zertifikat und einer bestimmten Signaturzeile unterschreibt:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Ein generiertes PDF-Dokument {#sign-a-generated-pdf-document}

Aspose.Words können Sie unterschreiben und alle Details eines PDF-Dokuments mit dem [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) Eigenschaften.

Das folgende Codebeispiel zeigt, wie man ein generiertes PDF signiert:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

Das folgende Bild zeigt, dass das generierte PDF-Dokument geöffnet wird Adobe Acrobat und die digitale Signatur wird als vorhanden und gültig überprüft.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Digitaler Signaturwert abrufen

Aspose.Words auch die Möglichkeit, den digitalen Signaturwert aus einem digital signierten Dokument als Byte-Array mit der [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) Eigentum.

Das folgende Codebeispiel zeigt, wie man den digitalen Signaturwert als Byte-Array aus einem Dokument erhält:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Digitale Signaturen entfernen

Aspose.Words Sie können alle digitalen Signaturen aus einem signierten Dokument mit dem [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) Methode.

Das folgende Codebeispiel zeigt, wie digitale Signaturen aus einem Dokument geladen und entfernt werden können:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Beachten Sie, dass Sie nicht nur eine digitale Signatur in Ihrem Dokument entfernen können.

{{% /alert %}}
