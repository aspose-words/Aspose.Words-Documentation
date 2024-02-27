---
title: C#에서 문서 암호화
second_title: .NET용 Aspose.Words
articleTitle: 문서 암호화
linktitle: 문서 암호화
description: "C#의 특정 문서 형식에 적합한 암호화 알고리즘을 사용하여 문서를 암호화하세요."
type: docs
weight: 20
url: /ko/net/encrypt-a-document/
---

암호화는 읽을 수 있는 텍스트를 의미 없는 바이트 시퀀스로 변환하여 암호 해독 키나 비밀 코드를 가진 사람만 읽을 수 있도록 하는 프로세스입니다. 이 프로세스는 콘텐츠 보안에 중요한 역할을 합니다. 콘텐츠를 인코딩하고, 문서의 원본을 확인하고, 콘텐츠가 전송된 후 수정되지 않았음을 증명하고, 문서의 데이터가 안전한지 확인하는 데 도움이 됩니다.

이 문서에서는 Aspose.Words를 사용하여 문서를 암호화하는 방법과 문서에 암호화가 있는지 확인하는 방법에 대해 설명합니다.

## 비밀번호로 암호화

문서를 암호화하려면 **Password** 속성을 사용하여 암호화 키 역할을 하는 비밀번호를 제공하세요. 이렇게 하면 문서의 내용이 수정되어 읽을 수 없게 됩니다. 암호화된 문서를 열려면 이 비밀번호를 입력해야 합니다.

{{% alert color="primary" %}}

필요한 형식에 적합한 **Password** 속성을 찾을 수 있습니다. [네임스페이스 저장](https://reference.aspose.com/words/net/aspose.words.saving/)의 각 문서 저장 형식에는 이 형식에 대한 저장 옵션이 포함된 해당 클래스가 있습니다. 예를 들어 DOC용 [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) 클래스의 [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) 속성 또는 DOCX, DOCM, DOTX, DOTM 및 FlatOpc용 [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) 클래스의 [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) 속성입니다.

{{% /alert %}}

{{% alert color="primary" %}}

특정 문서 형식만 암호화를 지원합니다. 예를 들어 RTF는 암호화를 지원하지 않습니다.

{{% /alert %}}

아래 표에는 Aspose.Words에서 지원하는 형식과 암호화 알고리즘이 나열되어 있습니다

| 체재 |  로드하는 동안 지원되는 암호화 |  저장하는 동안 지원되는 암호화 |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR 암호화40비트 RC4 암호화CryptoAPI RC4 암호화 |  RC4 암호화(40비트) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 표준 암호화ECMA-376 민첩한 암호화 |  ECMA-376 표준 암호화(AES128 + SHA1) |
|  ODT, OTT |  ODF 암호화(복어/AES) |  ODF 암호화(AES256 + SHA256) |
|  PDF |  -                                                            |  RC4 암호화(40/128비트) |

다음 코드 예제에서는 비밀번호로 문서를 암호화하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## 문서가 암호화되었는지 확인

어떤 경우에는 읽을 수 없는 문서가 있을 수 있으며 문서가 암호화되어 있고 손상되거나 압축되지 않았는지 확인하고 싶을 수 있습니다.

문서가 암호화되었는지 여부와 비밀번호가 필요한지 여부를 감지하려면 [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) 클래스의 [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) 속성을 사용할 수 있습니다. 또한 이 속성을 사용하면 문서를 로드하기 전에 사용자에게 비밀번호를 제공하도록 알리는 등 일부 작업을 수행할 수 있습니다.

다음 코드 예제에서는 문서 암호화를 감지하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## 비밀번호를 사용하거나 사용하지 않고 문서 열기

문서가 암호화되어 있음을 확인하면 암호 없이 이 문서를 열려고 시도할 수 있으며 이로 인해 예외가 발생합니다.

다음 코드 예제에서는 암호 없이 암호화된 문서를 여는 방법을 보여줍니다

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

암호화된 문서는 비밀번호 없이는 열 수 없다는 것을 확인한 후 비밀번호를 입력하여 열어볼 수 있습니다.

다음 코드 예제에서는 비밀번호로 암호화된 문서를 여는 방법을 보여줍니다

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
