---
title: デジタル署名の操作
second_title: Python via .NET用Aspose.Words
articleTitle: デジタル署名の操作
linktitle: デジタル署名の操作
description: "Python を使用して、ドキュメントにデジタル署名し、既存のデジタル署名を検出、カウント、検証、削除します。"
type: docs
weight: 40
url: /ja/python-net/working-with-digital-signatures/
---

デジタル署名は、文書の送信者が本人であること、および文書の内容が改ざんされていないことを証明するために文書を認証するために使用されます。

Aspose.Words はデジタル署名付きのドキュメントをサポートし、デジタル署名へのアクセスを提供します。これにより、ドキュメント上のデジタル署名を検出して検証し、生成された PDF ドキュメントに提供された証明書を使用して署名できるようになります。現時点では、デジタル署名は DOC、OOXML、および ODT ドキュメントでサポートされています。生成されたドキュメントの署名は PDF 形式でサポートされています。

{{% alert color="primary" %}}

**オンラインで試す**

この機能は [無料のオンライン署名](https://products.aspose.app/words/signature) で試すことができます。

{{% /alert %}}

## デジタル署名は開いて保存するときに保持されません

注意すべき重要な点は、Aspose.Words を使用してドキュメントを読み込んで保存すると、ドキュメントに署名されたデジタル署名が失われるということです。これは設計によるもので、デジタル署名によってコンテンツが変更されていないことが保証され、さらに文書に署名した人の身元が認証されます。元の署名が結果の文書に引き継がれた場合、これらの原則は無効になります。

このため、サーバーにアップロードされたドキュメントを処理する場合、この方法でサーバーにアップロードされたドキュメントが知らないうちに破損する可能性があります。したがって、ドキュメント上のデジタル署名を確認し、見つかった場合は適切な措置を講じることが最善です。たとえば、クライアントに、渡されたドキュメントにデジタル署名が含まれている場合は失われることを通知するアラートをクライアントに送信できます。加工された。この例のテンプレート ファイルは [ここ](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx) からダウンロードできます。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

上記のコードは、[FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) メソッドを使用して、最初にドキュメントをロードせずに、ドキュメントにデジタル署名が含まれているかどうかを検出します。これにより、文書を処理する前に文書の署名をチェックする効率的かつ安全な方法が提供されます。メソッドが実行されると、プロパティ [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/) を提供する [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) オブジェクトが返されます。ドキュメントに 1 つ以上のデジタル署名が含まれている場合、このプロパティは true を返します。このメソッドは署名を検証するのではなく、署名が存在するかどうかを判断するだけであることに注意することが重要です。デジタル署名の検証については、次のセクションで説明します。

{{% alert color="primary" %}}

また、[Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) コレクションの `Count` プロパティをチェックすることで、ドキュメントの読み込み後にデジタル署名があるかどうかを確認することもできます。

{{% /alert %}}

## マクロのデジタル署名 (VBA プロジェクト)

マクロのデジタル署名にアクセスしたり、署名したりすることはできません。これは、Aspose.Words がドキュメント内のマクロを直接処理しないためです。ただし、マクロのデジタル署名は、ドキュメントを Word 形式にエクスポートして戻すときに保持されます。ドキュメント自体が変更されてもマクロのバイナリ コンテンツは変更されないため、これらの署名は VBA コード上に保持できます。

### デジタル署名にアクセスして検証する

ドキュメントには複数のデジタル署名を含めることができます。これらの署名はすべて、[Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) コレクションを通じてアクセスできます。返される各オブジェクトは、ドキュメントに属する単一のデジタル署名を表す [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) です。これにより、署名の有効性を確認できるメンバーが提供されます。

デジタル署名で確認する最も重要な特性は、ドキュメント内の各署名の有効性です。 [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) プロパティを呼び出すことで、ドキュメント内のすべての署名を一度に検証できます。ドキュメント内のすべての署名が有効である場合、またはドキュメントに署名がない場合は true が返され、少なくとも 1 つのデジタル署名が無効である場合は false が返されます。

各署名は、[DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/) を呼び出して個別に検証することもできます。署名は、署名後に文書が変更されているか、証明書の有効期限が切れているなど、さまざまな理由で無効になる可能性があります。さらに、署名の追加の詳細にもアクセスできます。以下のコード サンプルは、ドキュメント内の各署名を検証し、署名に関する基本情報を表示する方法を示しています。この例のテンプレート ファイルは [ここ](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx) からダウンロードできます。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Word 文書に署名する

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) クラスは、ドキュメントに署名するためのメソッドを提供します。 [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) メソッドは、デジタル署名付きの指定された [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) を使用してソース ドキュメントに署名し、署名されたドキュメントを宛先ストリームに書き込みます。

以下の例は、簡単な文書に署名する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

以下の例は、暗号化されたドキュメントに署名する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### 署名欄を使用して Word 文書に署名する

指定された [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) および [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) を使用してデジタル署名を使用してソース文書に署名し、署名された文書を宛先ファイルに書き込むことができます。 [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) クラスを使用すると、ドキュメント署名のオプションを指定できます。以下の例は、新しい署名欄を作成して文書に署名する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

以下の例は、既存の署名欄を変更して文書に署名する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### 署名プロバイダー識別子を使用した Word 文書への署名

以下の例は、署名プロバイダー識別子を使用して Word 文書に署名する方法を示しています。暗号化サービス プロバイダー (CSP) は、認証、エンコード、および暗号化のための暗号化アルゴリズムを実際に実行する独立したソフトウェア モジュールです。 MS Office は、デフォルトの署名プロバイダーとして値 {00000000-0000-0000-0000-000000000000} を予約しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### プロバイダー識別子を使用して Word 文書に署名する新しい署名欄を作成する

以下の例は、署名欄を作成し、署名プロバイダー識別子を使用して Word 文書に署名する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## デジタル署名値の取得

Aspose.Words は、[SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) プロパティを使用して、デジタル署名されたドキュメントからデジタル署名値をバイト配列として取得する機能も提供します。

次のコード例は、ドキュメントからデジタル署名値をバイト配列として取得する方法を示しています。

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}