---
title: C++でのデジタル署名の操作
second_title: C++の場合Aspose.Words
articleTitle: デジタル署名の操作
linktitle: デジタル署名の操作
description: "文書にデジタル署名し、既存のデジタル署名を検出、カウント、検証、および削除します。"
type: docs
weight: 160
url: /ja/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

デジタル署名は、文書に署名し、署名者を認証して、文書が署名されてから変更されていないことを保証するための電子署名の技術的実装です。 各デジタル署名は、pkiプロトコルに従って公開鍵と秘密鍵の両方を生成するため、署名者ごとに一意です。 文書にデジタル署名するとは、生成されたハッシュを暗号化するために数学的アルゴリズムが使用される署名者の秘密鍵を使用して署名を作成す

Aspose.Wordsは、既存のデジタル署名を検出、カウント、または検証し、文書に新しい署名を追加して、文書の改ざんを見つけることができます。 文書からすべてのデジタル署名を削除することもできます。 デジタル署名を操作するには、[DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/)クラスを使用します。

この記事では、デジタル文書の信頼性と整合性を検証するために上記のすべてを行う方法について説明します。

{{% alert color="primary" %}}

**オンラインで試す**

あなたは私たちのこの機能を試すことができます [無料のオンライン署名](https://products.aspose.app/words/signature).

{{% /alert %}}

## サポートされている形式

Aspose.Wordsを使用すると、DOC、OXML、およびODT文書のデジタル署名を操作し、生成された文書にPDFまたはXPS形式で署名することができます。

## デジタル署名の制限

次の表は、Aspose.Wordsを使用してデジタル署名を操作する際に直面する可能性のあるいくつかの制限と、いくつかの代替オプションについて説明しています。

| 制限 | 代替オプション |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| それをロードして保存した後、文書上のデジタル署名の損失。 したがって、文書をサーバーに処理すると、予告なしにすべてのデジタル署名が失われる可能性があります。 | 文書にデジタル署名があるかどうかを確認し、見つかった場合は適切なアクションを実行します。 例えば、クライアントに、アップロードしているドキュメントに処理されると失われるデジタル署名が含まれていることを知らせるアラートを送信します。 |
| Aspose.Wordsドキュメント内のマクロの操作をサポートします。 ただし、Aspose.Wordsはマクロのデジタル署名をまだサポートしていません。 | ドキュメントを任意のWord形式にエクスポートし、Microsoft Wordを使用してマクロにデジタル署名を追加します。 |

## デジタル署名の検出、カウント、および検証

Aspose.Wordsは、[DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/)メソッドと[HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/)プロパティを使用して、文書内のデジタル署名を検出できます。 そのようなチェックは署名の事実のみを検出し、その有効性は検出しないことに注意する価値があります。

文書は複数回署名することができ、これはさまざまなユーザーが行うことができます。 電子署名の有効性を確認するには、[LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/)メソッドを使用して文書から電子署名をロードし、[IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/)プロパティを使用する必要があります。 またAspose.Wordsでは、[Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/)プロパティを使用して、文書内のすべてのデジタル署名のセットを数えることができます。

これらすべてが、文書を処理する前に文書の署名をチェックする効率的で安全な方法を提供します。

次のコード例は、デジタル署名の存在を検出して検証する方法を示しています:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## デジタル署名{#create-a-digital-signature}を作成する

デジタル署名を作成するには、idを確認する署名証明書をロードする必要があります。 デジタル署名された文書を送信すると、証明書と公開鍵も送信されます。

Aspose.Wordsは、国際的に認められているX.509PKI標準を使用して、公開鍵が証明書内に含まれている署名者に属していることを確認するデジタル証明書であるX.509証明書を作成することができます。 これを行うには、[CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder)クラス内で[Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/)メソッドを使用します。

次のセクションでは、デジタル署名、署名行を追加する方法、および生成されたPDF文書に署名する方法について説明します。

### 文書に署名する

Aspose.Wordsを使用すると、[Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/)メソッドと[SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/)プロパティを使用して、DOC、DOCX、またはODT文書にデジタル署名できます。

証明書所有者と署名オプションを使用して文書に署名する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### 署名行を追加する

署名行は、文書内のデジタル署名を視覚的に表現したものです。 Aspose.Words[DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/)メソッドを使用して署名行を挿入できます。 [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/)クラスを使用して、この表現のパラメータを設定することもできます。

たとえば、次の図は、有効な署名と無効な署名を表示する方法を示しています。

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

また、文書に署名行が含まれていてデジタル署名がない場合は、ユーザーに署名を追加するように依頼する機能があります。

次のコード例は、個人証明書と特定の署名行を使用してドキュメントに署名する方法を示しています:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### 生成されたPDF文書{#sign-a-generated-pdf-document}に署名する

Aspose.Wordsでは、[PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/)プロパティを使用して、PDF文書のすべての詳細に署名して取得できます。

次のコード例は、生成されたPDFに署名する方法を示しています:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## デジタル署名値の取得

Aspose.Wordsは、[SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/)プロパティを使用して、デジタル署名されたドキュメントからデジタル署名値をバイト配列として取得する機能も提供します。

次のコード例は、ドキュメントからデジタル署名値をバイト配列として取得する方法を示しています:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## デジタル署名の削除

Aspose.Wordsは、[RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/)メソッドを使用して、署名された文書からすべてのデジタル署名を削除できます。

次のコード例は、ドキュメントからデジタル署名を読み込んで削除する方法を示しています:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

ドキュメント内のデジタル署名は1つだけ削除できないことに注意してください。

{{% /alert %}}
