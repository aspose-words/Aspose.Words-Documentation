---
title: C# でのデジタル署名の操作
second_title: .NET用Aspose.Words
articleTitle: デジタル署名の使用
linktitle: デジタル署名の使用
description: "C# を使用して、ドキュメントにデジタル署名し、既存のデジタル署名を検出、カウント、検証、削除します。"
type: docs
weight: 40
url: /ja/net/working-with-digital-signatures/
---

デジタル署名は、文書に署名し、署名者を認証して、文書が署名されてから変更されていないことを保証するための電子署名の技術的実装です。 PKI プロトコルに従って公開鍵と秘密鍵の両方を生成するため、各デジタル署名は署名者ごとに一意になります。ドキュメントにデジタル署名するということは、生成されたハッシュを暗号化するために数学的アルゴリズムが使用される、署名者の秘密キーを使用して署名を作成することを意味します。

Aspose.Words を使用すると、既存のデジタル署名を検出、カウント、検証したり、文書に新しい署名を追加して文書内の改ざんを検出したりできます。ドキュメントからすべてのデジタル署名を削除することもできます。デジタル署名を操作するには、[DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) クラスを使用します。

この記事では、デジタル ドキュメントの信頼性と完全性を検証するために上記のすべてを行う方法について説明します。

{{% alert color="primary" %}}

ドキュメントのデジタル署名にアクセスできるのは、.NET Framework 2.0 以降のバージョンを実行している場合のみであることに注意してください。

{{% /alert %}}

{{% alert color="primary" %}}

**オンラインで試す**

この機能は [無料のオンライン署名](https://products.aspose.app/words/signature) で試すことができます。

{{% /alert %}}

## サポートされている形式

Aspose.Words を使用すると、DOC、OOXML、および ODT ドキュメントのデジタル署名を操作し、生成されたドキュメントに PDF または XPS 形式で署名できます。

## デジタル署名の制限

以下の表では、Aspose.Words を介してデジタル署名を使用するときに直面する可能性のあるいくつかの制限と、いくつかの代替オプションについて説明します。

|  制限 |  代替オプション |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  ドキュメントをロードして保存した後に、ドキュメント上のデジタル署名が失われる。したがって、ドキュメントをサーバーに送信すると、予告なしにすべてのデジタル署名が失われる可能性があります。 |  ドキュメントにデジタル署名があるかどうかを確認し、見つかった場合は適切なアクションを実行します。たとえば、アップロードしているドキュメントには、処理すると失われるデジタル署名が含まれていることをクライアントに通知するアラートを送信します。 |
|  Aspose.Words は、ドキュメント内のマクロの操作をサポートします。ただし、Aspose.Words はマクロのデジタル署名をまだサポートしていません。 |  ドキュメントを任意の Word 形式にエクスポートし、Microsoft Word を使用してマクロにデジタル署名を追加します。 |

## デジタル署名の検出、カウント、検証

Aspose.Words では、[DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) メソッドと [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) プロパティを使用してドキュメント内のデジタル署名を検出できます。このようなチェックでは署名の事実のみが検出され、その有効性は検出されないことに注意してください。

ドキュメントには複数回署名することができ、異なるユーザーが署名を行うことができます。デジタル署名の有効性を確認するには、[LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) メソッドを使用してドキュメントからデジタル署名を読み込み、[IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) プロパティを使用する必要があります。また、Aspose.Words では、[Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/) プロパティを使用して、ドキュメント内のすべてのデジタル署名のセットをカウントできます。

これらすべてにより、文書を処理する前に文書の署名をチェックする効率的かつ安全な方法が提供されます。

次のコード例は、デジタル署名の存在を検出して検証する方法を示しています。

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## デジタル署名の作成 {#create-a-digital-signature}

デジタル署名を作成するには、身元を確認する署名証明書をロードする必要があります。デジタル署名された文書を送信するときは、証明書と公開キーも送信します。

Aspose.Words を使用すると、X.509 証明書を作成できます。X.509 証明書は、国際的に受け入れられている X.509 PKI 標準を使用して、公開キーが証明書内に含まれる署名者のものであることを検証するデジタル証明書です。これを行うには、[CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/) クラス内で [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) メソッドを使用します。

次のセクションでは、デジタル署名、署名行を追加する方法、生成された PDF ドキュメントに署名する方法について説明します。

### 文書に署名する

Aspose.Words を使用すると、[Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) メソッドと [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/) プロパティを使用して、DOC、DOCX、XPS、または ODT ドキュメントにデジタル署名できます。

次のコード例は、証明書所有者と署名オプションを使用してドキュメントに署名する方法を示しています。

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### 署名欄を追加する

署名欄は、文書内のデジタル署名を視覚的に表現したものです。 Aspose.Words では、[DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) メソッドを使用して署名行を挿入できます。 [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/) クラスを使用して、この表現のパラメータを設定することもできます。

たとえば、以下の図は、有効な署名と無効な署名がどのように表示されるかを示しています。

<img src="/words/net/working-with-digital-signatures/valid.png" alt="描画" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="描画" style="width:300px"/>

また、文書に署名欄がありデジタル署名がない場合、ユーザーに署名の追加を求める機能もあります。

次のコード例は、個人証明書と特定の署名行を使用してドキュメントに署名する方法を示しています。

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### 生成された PDF ドキュメントに署名する {#sign-a-generated-pdf-document}

Aspose.Words を使用すると、[PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/) プロパティを使用して PDF ドキュメントに署名し、その詳細をすべて取得できます。

次のコード例は、生成された PDF に署名する方法を示しています。

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## デジタル署名値の取得

Aspose.Words は、[SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) プロパティを使用して、デジタル署名されたドキュメントからデジタル署名値をバイト配列として取得する機能も提供します。

次のコード例は、ドキュメントからデジタル署名値をバイト配列として取得する方法を示しています。

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## デジタル署名を削除する

Aspose.Words を使用すると、[RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/) メソッドを使用して署名済みドキュメントからすべてのデジタル署名を削除できます。

次のコード例は、ドキュメントからデジタル署名をロードおよび削除する方法を示しています。

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

文書内のデジタル署名を 1 つだけ削除することはできないことに注意してください。

{{% /alert %}}
