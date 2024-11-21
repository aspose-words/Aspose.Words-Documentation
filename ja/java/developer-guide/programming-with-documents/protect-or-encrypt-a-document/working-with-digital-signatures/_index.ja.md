---
title: デジタル署名と連携 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: デジタル署名と連携
linktitle: デジタル署名と連携
description: "デジタル署名文書に署名し、既存のデジタル署名を検知、カウント、検証、削除します。 Javaお問い合わせ"
type: docs
weight: 30
url: /ja/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

デジタル署名は、文書に署名し、署名されたので文書が変更されていないことを保証するために署名者を認証する電子署名の技術実装です。 各デジタル署名は、PKIプロトコルに従って公開鍵と秘密鍵の両方を生成するため、各署名者にとってユニークです。 文書をデジタルで署名すると、生成されたハッシュを暗号化するために数学アルゴリズムが使用される、署名者のプライベートキーを使用して署名を作成することを意味します。

Aspose.Words 既存のデジタル署名を検知、カウント、または検証し、ドキュメントに新しい署名を追加して、改ざんを調べることができます。 ドキュメントからすべてのデジタル署名を削除することもできます。 利用する [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) デジタル署名を扱うクラス。

この記事では、上記のすべてをデジタル文書の信頼性と完全性を検証する方法について説明します。

{{% alert color="primary" %}}

実行時にのみ、ドキュメントのデジタル署名にアクセスできることに注意してください。 Java 6バージョン以上

{{% /alert %}}

{{% alert color="primary" %}}

**オンラインで試す**

この機能を試してみる [無料のオンライン署名](https://products.aspose.app/words/signature)お問い合わせ

{{% /alert %}}

## サポートされている形式

Aspose.Words DOC、OOXML、およびODT文書でデジタル署名を操作し、PDFで生成された文書に署名したり、 XPS フォーマット。

## デジタル署名の制限

以下の表は、デジタル署名を操作しながら直面する可能性のあるいくつかの制限について説明します Aspose.Words, 代替オプションとして。

|  制限事項 |  代替オプション |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  ローディングおよび保存の後で文書のデジタル署名の損失。 そのため、ドキュメントをサーバーに処理すると、通知なしですべてのデジタル署名の損失を引き起こす可能性があります。 |  文書がデジタル署名を持っているかどうかを確認し、見つけられたら適切な行動を取る。 たとえば、クライアントにアラートを送信して、アップロードするドキュメントには、処理されると失われたデジタル署名が含まれています。 |
|  Aspose.Words ドキュメント内でマクロを扱うサポート しかし、 Aspose.Words マクロではデジタル署名をサポートしていません。 |  文書を任意のWord形式にエクスポートし、使用 Microsoft Word マクロにデジタル署名を追加する。 |

## デジタル署名の検出、カウント、検証

Aspose.Words デジタル署名をドキュメントで検出できる [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) メソッドとメソッド [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) 宿泊施設 このようなチェックが署名の事実を検知するだけでなく、その妥当性を検知する価値があります。

ドキュメントは複数回署名できます。これは異なるユーザーによって行うことができます。 デジタル署名の有効性を確認するには、ドキュメントからドキュメントを読み込む必要があります。 [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) 方法および使用 [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) プロパティ. その他 Aspose.Words ドキュメント内のすべてのデジタル署名のセットをドキュメント内でカウントできます。 [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) プロパティ.

これにより、処理する前に署名の文書を効率的かつ安全な方法で確認することができます。

次のコードの例では、デジタル署名の存在を検知し、それらを検証する方法を示します。

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## デジタル署名を作成する {#create-a-digital-signature}

デジタル署名を作成するには、本人確認の署名証明書をロードする必要があります。 デジタル署名の文書を送付する場合、証明書と公開鍵をお送りします。

Aspose.Words 国際的に受け入れられているX.509 PKI規格を使用するデジタル証明書であるX.509証明書を作成して、公開鍵が証明書に含まれる署名者に所属していることを確認することができます。 これを行うには、 [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) 内のメソッド [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) クラス。

次のセクションでは、生成されたPDF文書に署名、署名線、署名線を追加する方法について説明します。

### ドキュメントの署名

Aspose.Words DOC、DOCX、またはODT文書をデジタルで署名することができます [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) メソッドとメソッド [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) プロパティ。

以下のコードの例では、証明書保持者を使用して文書に署名し、オプションを署名する方法を示します。

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### シグネチャーラインを追加

署名線は、ドキュメント内のデジタル署名の視覚的表現です。 Aspose.Words 署名線を入力できる [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) メソッド。 また、この表現のパラメータをこの表現で設定することもできます。 [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) クラス。

たとえば、以下の画像は有効で無効なシグネチャの表示方法を示します。

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

また、ドキュメントに署名された行とデジタル署名がない場合、署名を追加する機能があります。

以下のコードの例では、個人証明書と特定の署名線で文書に署名する方法を示します。

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### 生成されたPDF文書の署名 {#sign-a-generated-pdf-document}

Aspose.Words PDF文書のすべての詳細を署名し、取得することができます [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) プロパティ。

次のコードの例では、生成されたPDFに署名する方法を示します。

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

下の写真は、生成されたPDF文書がで開くことを示しています Adobe Acrobat デジタル署名は、現在および有効と検証されています。

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## デジタル署名価値の取得

Aspose.Words また、デジタル署名されたドキュメントからデジタル署名されたドキュメントをバイト配列として取得する機能を提供します。 [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) プロパティ.

次のコードの例では、ドキュメントからバイト配列としてデジタル署名値を取得する方法を示します。

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## デジタル署名を削除

Aspose.Words 署名された文書からすべてのデジタル署名を削除することができます [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) メソッド。

次のコードの例では、ドキュメントからデジタル署名を読み、削除する方法を示します。

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

ドキュメント内の1つのデジタル署名のみを削除することはできません。

{{% /alert %}}
