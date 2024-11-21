---
title: 문서 암호화 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서 암호화
linktitle: 문서 암호화
description: "특정 문서 형식의 적절한 암호화 알고리즘을 사용하여 문서를 암호화 Java·"
type: docs
weight: 20
url: /ko/java/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

암호화는 바이트의 의미없는 시퀀스에 대한 읽기 쉬운 텍스트를 번역하는 과정이므로 암호 키 또는 비밀 코드를 가지고있는 사람에 의해서만 읽을 수 있습니다. 이 프로세스는 컨텐츠를 확보하는 중요한 역할을 합니다. 그것은 콘텐츠를 인코딩하는 데 도움이, 문서의 기원을 확인, 내용이 전송 된 후 수정되지 않았고, 문서의 데이터가 안전하다는 것을 확인.

이 문서는 어떻게 설명 Aspose.Words 문서를 암호화하고 문서가 암호화되어 있는지 확인하는 방법.

## 비밀번호

문서를 암호화하려면 **Password** 암호화 키로 기능하는 암호를 제공합니다. 이 문서의 내용을 수정하고 읽을 수 있습니다. 암호화된 문서는 이 암호를 열 수 있기 전에 입력해야 합니다.

{{% alert color="primary" %}}

적합한 것을 찾을 수 있습니다. **Password** 필요한 형식의 속성. 각 문서 저장 형식은이 형식의 저장 옵션을 포함하는 해당 클래스가 있습니다. 예를 들어, [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) 호텔 위치 [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) DOC 클래스, 또는 [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) 호텔 위치 [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) DOCX, DOCM 클래스, DOTx, DOTM, 그리고 FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

특정 문서 형식 지원 암호화 만주의하십시오. 예를 들어, RTF는 암호화를 지원하지 않습니다.

{{% /alert %}}

아래 표는 지원되는 형식과 암호화 알고리즘을 나열합니다. Aspose.Words::

| 지원하다 |  로딩중 |  저축하는 동안 지원된 암호화 |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  · DOT |  XOR 암호화40 비트 RC4 암호화API RC4 암호화 |  RC4 암호화 (40 비트) |
|  DOCX, DOTX, 돔, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 표준 암호화ECMA-376 Agile 암호화 |  ECMA-376 표준 암호화 (AES128 + SHA1) |
|  ODT의 OTT |  ODF 암호화 (Blowfish/AES) |  ODF 암호화 (AES256 + SHA256) |
|  PDF 파일 |  -                                                            |  RC4 암호화 (40/128 비트) |

다음 코드 예제는 암호로 문서를 암호화하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## 문서가 암호화된 경우 확인

어떤 경우, 당신은 읽을 수없는 문서가 있고 문서가 암호화되지 않았거나 압축되지 않도록해야합니다.

문서가 암호화되어 암호가 필요한 경우, 사용할 수 있는 경우 [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) 호텔 위치 [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) 수업. 이 속성은 문서를 로딩하기 전에 일부 작업을 수행 할 수 있습니다, 예를 들어, 암호를 제공하기 위해 사용자에게 알려줍니다.

다음 코드 예제는 문서 암호화를 감지하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## 비밀번호 없이 문서 열기

우리는 문서가 암호화되었는지 확인합니다. 우리는 암호없이이 문서를 열 수 있습니다. 예외로 이어야합니다.

다음 코드 예제는 암호없이 암호화 된 문서를 여는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

암호화 된 문서가 암호없이 열 수 없다는 것을 본 후, 우리는 암호를 입력하여 열 수 있습니다.

다음 코드 예제는 암호로 암호화 된 문서를 열어가는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
