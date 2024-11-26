---
title: 파일 형식 감지
second_title: Aspose.WordsJava
articleTitle: 파일 형식 감지 및 형식 호환성 확인
linktitle: 파일 형식 감지 및 형식 호환성 확인
description: "파일의 실제 내용이Java을 사용하고 있는지 확실하지 않은 경우 예외를 피하기 위해 문서 형식을 열기 전에 문서 형식에 대한 정보를 얻습니다."
type: docs
weight: 20
url: /ko/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

파일 확장자가 파일의 내용이 적절하다는 것을 보장하지 않기 때문에 열기 전에 문서의 형식을 결정해야 하는 경우가 있습니다. 예를 들어,크리스탈 보고서는 종종RTF형식으로 문서를 출력하지만,그들에게.문서 확장.

Aspose.Words은 파일의 실제 내용이 무엇인지 확실하지 않은 경우 예외를 피하기 위해 파일 형식에 대한 정보를 얻을 수 있는 기능을 제공합니다.

## 예외 없이 파일 형식 검색

다양한 파일 형식의 여러 문서를 처리 할 때Aspose.Words에서 처리 할 수있는 파일과 처리 할 수없는 파일을 분리해야 할 수 있습니다. 또한 일부 문서를 처리 할 수없는 이유를 알고 싶을 수도 있습니다.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)개체에 파일을 로드하려고 하는데Aspose.Words이 파일 형식을 인식할 수 없거나 형식이 지원되지 않으면Aspose.Words이 예외를 발생시킵니다. 이러한 예외를 포착하고 분석 할 수 있지만Aspose.Words는 가능한 예외가있는 문서를로드하지 않고 파일 형식을 신속하게 결정할 수있는[DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String)방법을 제공합니다. 이 메서드는 파일 형식에 대한 검색된 정보를 포함하는[FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/)개체를 반환합니다.

{{% alert color="primary" %}}

DetectFileFormat파일 형식만 검사하지만 파일 형식의 유효성은 검사하지 않습니다. **DetectFileFormat**이 지원되는 형식 중 하나라는 것을 반환하더라도 파일이 성공적으로 열릴 것이라는 보장은 없습니다. 이는**DetectFileFormat**메서드가 파일 형식을 검사하기에 충분하지만 완전한 유효성 검사에는 충분하지 않은 부분 파일 형식 데이터 만 읽기 때문입니다.

{{% /alert %}}

## 파일 형식 호환성 확인

선택한 폴더의 모든 파일의 형식 호환성을 확인하고 형식별로 해당 하위 폴더로 정렬 할 수 있습니다.

폴더의 내용을 다루고 있기 때문에 가장 먼저해야 할 일은`Directory`클래스의**GetFiles**메소드(`System.IO`네임 스페이스에서)를 사용하여이 폴더에있는 모든 파일 모음을 얻는 것입니다.

다음 코드 예제에서는 폴더에 있는 모든 파일의 목록을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

모든 파일이 수집되면 나머지 작업은 파일 형식을 확인하는**DetectFileFormat**메서드에 의해 수행됩니다.

다음 코드 예제에서는 수집된 파일 목록을 반복하고 각 파일의 형식을 확인하고 각 파일을 적절한 폴더로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

파일은 동일한`System.IO`네임스페이스에서`File`클래스의`Move`메서드를 사용하여 적절한 하위 폴더로 이동합니다.

위의 예제에서는 다음 파일을 사용합니다. 파일 이름은 왼쪽에 있고 설명은 오른쪽에 있습니다:

| 파일 그룹 | 입력 문서 | 유형 |
| :- | :- | :- |
| 지원되는 파일 형식 | Test File (Doc).doc | Microsoft Word95/6.0또는Microsoft Word97–2003 문서. |
|  | Test File (Dot).dot | Microsoft Word95/6.0또는Microsoft Word97–2003 템플릿. |
|  | Test File (Docx).docx | 매크로없이 사무실 열기XMLWordprocessingML문서. |
|  | Test File (Docm).docm | 사무실 열기XMLWordprocessingML매크로와 문서. |
|  | Test File (Dotx).dotx | 사무실 열기XMLWordprocessingML템플릿. |
|  | Test File (Dotm).dotm | 매크로와 사무실 열기XMLWordprocessingML템플릿. |
|  | Test File (XML).xml | FlatOPCOOXML문서. |
|  | Test File (RTF).rtf | 서식 있는 텍스트 형식 문서입니다. |
|  | Test File (WordML).xml | Microsoft Word2003WordprocessingML문서. |
|  | Test File (HTML).html | HTML문서 |
|  | Test File (MHTML).mhtml | MHTML(웹 아카이브)문서. |
|  | Test File (Odt).odt | OpenDocument텍스트(OpenOffice작가). |
|  | Test File (Ott).ott | OpenDocument문서 템플릿. |
|  | Test File (DocPreWord60).doc | Microsoft Word2.0문서. |
| 암호화된 문서 | Test File (Enc).doc | 암호화된Microsoft Word95/6.0또는Microsoft Word97–2003 문서. |
|  | Test File (Enc).docx | 암호화 된 사무실 열기XMLWordprocessingML문서. |
| 지원되지 않는 파일 형식 | Test File (JPG).jpg | JPEG이미지 파일. |

