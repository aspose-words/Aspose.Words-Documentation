---
title: Java에서 문서 암호화
second_title: Aspose.WordsJava
articleTitle: 문서 암호화
linktitle: 문서 암호화
description: "Java의 특정 문서 형식에 적합한 암호화 알고리즘을 사용하여 문서를 암호화합니다."
type: docs
weight: 20
url: /ko/java/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

암호화는 읽을 수 있는 텍스트를 의미 없는 바이트 순서로 변환하여 암호 해독 키나 비밀 코드를 가진 사람만 읽을 수 있도록 하는 과정입니다. 이 프로세스는 콘텐츠 보안에 중요한 역할을 합니다. 콘텐츠를 인코딩하고,문서의 출처를 확인하고,콘텐츠가 전송된 후 수정되지 않았음을 증명하고,문서의 데이터가 안전한지 확인하는 데 도움이 됩니다.

이 문서에서는Aspose.Words에서 문서를 암호화하는 방법과 문서에 암호화가 있는지 여부를 확인하는 방법을 설명합니다.

## 암호로 암호화

문서를 암호화하려면**Password**속성을 사용하여 암호화 키로 작동하는 암호를 제공합니다. 이렇게 하면 문서의 내용이 수정되어 읽을 수 없게 됩니다. 암호화된 문서를 열기 전에 이 암호를 입력해야 합니다.

{{% alert color="primary" %}}

필요한 형식에 적합한**Password**속성을 찾을 수 있습니다. 각 문서 저장 형식에는 이 형식에 대한 저장 옵션이 포함된 해당 클래스가 있습니다. 예를 들어,DOC에 대한[DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/)클래스의[Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword)속성이나[OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/)클래스의[Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword)속성입니다.DOCX, DOCM, DOTX, DOTM, 그리고FlatOpc

{{% /alert %}}

{{% alert color="primary" %}}

특정 문서 형식만 암호화를 지원합니다. 예를 들어RTF은 암호화를 지원하지 않습니다.

{{% /alert %}}

아래 표는Aspose.Words에서 지원하는 형식 및 암호화 알고리즘을 나열합니다:

| 형식 | 로드하는 동안 지원되는 암호화 | 저장하는 동안 지원되는 암호화 |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR암호화 40 비트RC4EncryptionCryptoAPIRC4암호화 | RC4암호화(40 비트) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 표준EncryptionECMA-376 애자일 암호화 | ECMA-376 표준 암호화(AES128+SHA1) |
| ODT, OTT | ODF암호화(복어/AES) | ODF암호화(AES256+SHA256) |
| PDF |  | RC4암호화(40/128 비트) |

다음 코드 예제에서는 암호로 문서를 암호화하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## 문서가 암호화되어 있는지 확인

어떤 경우에는 읽을 수 없는 문서가 있고 문서가 암호화되어 있고 손상되거나 압축되지 않았는지 확인해야 할 수도 있습니다.

문서가 암호화되어 있고 암호가 필요한 경우[FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/)클래스의[IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted)속성을 사용하여 검색할 수 있습니다. 이 속성을 사용하면 문서를로드하기 전에 일부 작업을 수행 할 수도 있습니다(예:사용자에게 암호 제공).

다음 코드 예제에서는 문서 암호화를 검색하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## 암호 유무에 관계없이 문서 열기

우리는 문서가 암호화되어 있는지 확인 한 경우,우리는 예외로 이어질 것입니다 암호없이이 문서를 열려고 할 수 있습니다.

다음 코드 예제에서는 암호 없이 암호화된 문서를 여는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

암호 없이 암호화된 문서를 열 수 없다는 것을 알게 된 후 암호를 입력하여 열 수 있습니다.

다음 코드 예제에서는 암호로 암호화된 문서를 여는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
