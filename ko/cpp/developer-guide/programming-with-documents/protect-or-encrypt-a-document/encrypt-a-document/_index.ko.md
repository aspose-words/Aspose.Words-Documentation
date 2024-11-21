---
title: 문서 암호화 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서 암호화
linktitle: 문서 암호화
description: "특정 문서 형식에 적합한 암호화 알고리즘을 사용하여 문서를 암호화합니다."
type: docs
weight: 20
url: /ko/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

암호화는 읽을 수 있는 텍스트를 의미 없는 바이트 순서로 변환하여 암호 해독 키나 비밀 코드를 가진 사람만 읽을 수 있도록 하는 과정입니다. 이 프로세스는 콘텐츠 보안에 중요한 역할을 합니다. 콘텐츠를 인코딩하고,문서의 출처를 확인하고,콘텐츠가 전송된 후 수정되지 않았음을 증명하고,문서의 데이터가 안전한지 확인하는 데 도움이 됩니다.

이 문서에서는 방법을 설명합니다 Aspose.Words 문서를 암호화하고 문서에 암호화가 있는지 여부를 확인하는 방법을 사용할 수 있습니다.

## 암호로 암호화

문서를 암호화하려면 다음을 사용합니다 **Password** 암호화 키로 작동하는 암호를 제공하는 속성입니다. 이렇게 하면 문서의 내용이 수정되어 읽을 수 없게 됩니다. 암호화된 문서를 열기 전에 이 암호를 입력해야 합니다.

{{% alert color="primary" %}}

당신은 적절한 찾을 수 있습니다 **Password** 필요한 형식에 대한 속성입니다. 각 문서의 형식을 저장 [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) 이 형식에 대한 저장 옵션이 포함 된 해당 클래스가 있습니다. 예를 들어, [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) 부동산 [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) 에 대한 클래스 DOC,또는 [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) 부동산 [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) 에 대한 클래스 DOCX, DOCM, DOTX, DOTM,그리고 FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

특정 문서 형식만 암호화를 지원합니다. 예를 들어, RTF 암호화를 지원하지 않습니다.

{{% /alert %}}

아래 표에는 지원되는 형식 및 암호화 알고리즘이 나열되어 있습니다 Aspose.Words:

| 형식 | 로드하는 동안 지원되는 암호화 | 저장하는 동안 지원되는 암호화 |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR 암호화 40 비트 RC4 EncryptionCryptoAPI RC4 암호화 | RC4 암호화(40 비트) |
| DOCX, DOTX, DOCM, DOTM,플라토프, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 표준 암호화ECMA-376 애자일 암호화 | ECMA-376 표준 암호화(AES128 + SHA1) |
| ODT, OTT | ODF 암호화(블로프피쉬)/AES) | ODF 암호화(AES256 + SHA256) |
| PDF | RC4 암호화(40/128 비트) |

다음 코드 예제에서는 암호로 문서를 암호화하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## 문서가 암호화되어 있는지 확인

어떤 경우에는 읽을 수 없는 문서가 있고 문서가 암호화되어 있고 손상되거나 압축되지 않았는지 확인해야 할 수도 있습니다.

문서가 암호화되어 있는지 그리고 암호가 필요한 경우 다음을 사용하여 검색할 수 있습니다 [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) 의 재산 [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo) 수업 이 속성을 사용하면 문서를로드하기 전에 일부 작업을 수행 할 수도 있습니다(예:사용자에게 암호 제공).

다음 코드 예제에서는 문서 암호화를 검색하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## 암호 유무에 관계없이 문서 열기

우리는 문서가 암호화되어 있는지 확인 한 경우,우리는 예외로 이어질 것입니다 암호없이이 문서를 열려고 할 수 있습니다.

다음 코드 예제에서는 암호 없이 암호화된 문서를 여는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

암호 없이 암호화된 문서를 열 수 없다는 것을 알게 된 후 암호를 입력하여 열 수 있습니다.

다음 코드 예제에서는 암호로 암호화된 문서를 여는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
