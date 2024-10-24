---
title: 파일 형식 감지 및 형식 호환성 확인
second_title: Aspose.Words 에 대한 C++
articleTitle: 파일 형식 감지 및 형식 호환성 확인
linktitle: 파일 형식 감지 및 형식 호환성 확인
description: "파일 형식 결정 C++ 당신은 파일의 실제 내용이 무엇인지 확실하지 않은 경우,또는 형식 호환성을 확인합니다."
type: docs
weight: 20
url: /ko/cpp/detect-file-format-and-check-format-compatibility/
---

파일 확장자가 파일의 내용이 적절하다는 것을 보장하지 않기 때문에 열기 전에 문서의 형식을 결정해야 하는 경우가 있습니다. 예를 들어,크리스탈 보고서는 종종 문서를 RTF 형식,하지만 그들에게 제공.문서 확장.

Aspose.Words 파일의 실제 내용이 무엇인지 확실하지 않은 경우 예외를 피하기 위해 파일 형식에 대한 정보를 얻을 수 있는 기능을 제공합니다.

## 예외 없이 파일 형식 검색

당신은 다양한 파일 형식으로 여러 문서를 처리 할 때,당신은에 의해 처리 될 수있는 파일을 분리해야 할 수도 있습니다 Aspose.Words 할 수 없는 자들로부터 또한 일부 문서를 처리 할 수없는 이유를 알고 싶을 수도 있습니다.

파일을 로드하려는 경우 [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 객체 및 Aspose.Words 파일 형식을 인식할 수 없거나 형식이 지원되지 않습니다, Aspose.Words 예외를 던질 것입니다. 당신은 그 예외를 잡아서 분석 할 수 있지만 Aspose.Words 또한 제공합니다 [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) 가능한 예외를 제외하고 문서를로드하지 않고 파일 형식을 신속하게 결정할 수있는 방법. 이 메서드는 [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/) 파일 형식에 대한 검색된 정보가 포함된 개체입니다.

{{% alert color="primary" %}}

DetectFileFormat 파일 형식만 검사하지만 파일 형식의 유효성은 검사하지 않습니다. 파일이 성공적으로 열릴 것이라는 보장은 없습니다. **DetectFileFormat** 지원되는 형식 중 하나라는 것을 반환합니다. 이 때문에 **DetectFileFormat** 메서드는 파일 형식을 검사하기에 충분하지만 완전한 유효성 검사에는 충분하지 않은 부분 파일 형식 데이터 만 읽습니다.

{{% /alert %}}

## 파일 형식 호환성 확인

선택한 폴더의 모든 파일의 형식 호환성을 확인하고 형식별로 해당 하위 폴더로 정렬 할 수 있습니다.

우리는 폴더의 내용을 다루고 있기 때문에,우리가해야 할 첫 번째 일은 사용하여이 폴더에있는 모든 파일의 컬렉션을 얻을 수있다 **GetFiles** 의 방법 `Directory` 클래스( `System.IO` 네임스페이스)

다음 코드 예제에서는 폴더에 있는 모든 파일의 목록을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

모든 파일이 수집되면 나머지 작업은 **DetectFileFormat** 파일 형식을 확인하는 방법.

다음 코드 예제에서는 수집된 파일 목록을 반복하고 각 파일의 형식을 확인하고 각 파일을 적절한 폴더로 이동하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

파일을 사용하여 적절한 하위 폴더로 이동합니다 `Move` 의 방법 `File` 같은 클래스 `System.IO` 네임스페이스

위의 예제에서는 다음 파일을 사용합니다. 파일 이름은 왼쪽에 있고 설명은 오른쪽에 있습니다:

| 파일 그룹 | 입력 문서 | 유형 |
| :- | :- | :- |
| 지원되는 파일 형식 | Test File (DOC).doc | Microsoft Word 95/6.0 또는 Microsoft Word 97-2003 문서. |
|  | Test File (DOT).dot | Microsoft Word 95/6.0 또는 Microsoft Word 97-2003 템플릿. |
|  | Test File (DOCX).docx | 사무실 오픈 XML 매크로가 없는 워드프로세싱 문서. |
|  | Test File (DOCM).docm | 사무실 오픈 XML 매크로가있는 워드 프로세싱 문서. |
|  | Test File (DOTX).dotx | 사무실 오픈 XML 워드 프로세싱 템플릿. |
|  | Test File (DOTM).dotm | 사무실 오픈 XML 매크로가있는 워드 프로세싱 템플릿. |
|  | Test File (XML).xml | 플라토프 OOXML 문서 |
|  | Test File (RTF).rtf | 서식 있는 텍스트 형식 문서입니다. |
|  | Test File (WordML).xml | Microsoft Word 2003 워드 프로세싱 미리리터 문서. |
|  | Test File (HTML).html | HTML 문서 |
|  | Test File (MHTML).mhtml | MHTML (웹 아카이브)문서. |
|  | Test File (ODT).odt | OpenDocument 텍스트(OpenOffice 작가) |
|  | Test File (OTT).ott | OpenDocument 문서 템플릿입니다. |
|  | 테스트 파일(DocPreWord60).박사 | Microsoft Word 2.0 문서 |
| 암호화된 문서 | Test File (Enc).doc | 암호화 Microsoft Word 95/6.0 또는 Microsoft Word 97-2003 문서. |
|  | Test File (Enc).docx | 암호화 된 사무실 열기 XML 워드프로세싱 문서 |
| 지원되지 않는 파일 형식 | Test File (JPG).jpg | JPEG 이미지 파일. |

