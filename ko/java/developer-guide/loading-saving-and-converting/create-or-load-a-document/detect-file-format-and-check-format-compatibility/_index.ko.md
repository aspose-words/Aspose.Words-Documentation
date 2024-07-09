---
title: 파일 형식을 감지
second_title: Aspose.Words 제품정보 Java
articleTitle: 파일 형식을 감지하고 형식의 호환성을 확인
linktitle: 파일 형식을 감지하고 형식의 호환성을 확인
description: "문서 형식에 대한 정보를 얻기 전에 파일을 실제 콘텐츠가 사용하는지 여부를 제외하고 예외를 방지하기 위해 Java·"
type: docs
weight: 20
url: /ko/java/detect-file-format-and-check-format-compatibility/
---

파일 확장자가 적절하다는 것을 보장하지 않기 때문에 파일을 열 전에 문서의 형식을 결정하는 데 필요한 것입니다. 예를 들어 Crystal Reports는 종종 RTF 형식의 문서를 출력하지만 .doc 확장을 제공합니다.

Aspose.Words 파일의 실제 내용이 무엇인지 확실하지 않다면 예외를 피하기 위해 파일 유형에 대한 정보를 얻을 수있는 기능을 제공합니다.

## 예외없이 파일 형식을 감지

다양한 파일 형식의 여러 문서를 처리 할 때, 당신은 처리 할 수있는 그 파일을 분리해야합니다 Aspose.Words 할 수 없는 자 어떤 서류가 처리될 수 있는지 알고 싶을 수도 있습니다.

파일을 로드하려고 하는 경우 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 객체 및 Aspose.Words 파일 형식이나 형식을 인식할 수 없습니다. Aspose.Words 예외를 던질 것입니다. 당신은 그 예외를 붙잡고 분석 할 수 있지만, Aspose.Words 또한 제공 [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) 가능한 예외로 문서를 로딩하지 않고 신속하게 파일 형식을 결정할 수 있는 방법. 이 방법 반환 [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) 파일 유형에 대한 감지 된 정보를 포함하는 객체.

{{% alert color="primary" %}}

파일 형식 형식 만 파일 형식을 검사하지만 파일 형식을 유효하지 않습니다. 파일이 성공적으로 열 수 없다는 보증이 없습니다. **DetectFileFormat** 지원되는 형식 중 하나입니다. 이 때문에 **DetectFileFormat** 메소드는 부분 파일 형식 데이터 만 읽습니다. 파일 형식을 검사하는 데 충분하지만, 완전한 유효성을 위해 충분하지 않습니다.

{{% /alert %}}

## 파일 형식의 호환성

우리는 선택한 폴더에 모든 파일의 형식 호환성을 확인하고 해당 폴더에 포맷으로 정렬 할 수 있습니다.

우리는 폴더에 내용을 처리하고 있기 때문에, 우리가해야 할 첫 번째 것은이 폴더에서 모든 파일의 컬렉션을 얻을 필요가 **GetFiles** 방법의 `Directory` 수업 (에서) `System.IO` 네임스페이스

다음 코드 예제는 폴더의 모든 파일 목록을 얻는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

모든 파일이 수집되면 작업의 나머지는 수행됩니다. **DetectFileFormat** 파일 형식을 확인하는 방법.

다음 코드 예제는 파일의 수집 된 목록에서 저장하는 방법을 보여줍니다, 각 파일의 형식을 확인하고 적절한 폴더에 각 파일을 이동합니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

이 파일은 적절한 하위 폴더로 이동 `Move` 방법의 `File` 같은 클래스 `System.IO` 네임스페이스

다음 파일은 위의 예에서 사용됩니다. 파일 이름은 왼쪽에 있으며 그 설명은 오른쪽에 있습니다

| Group 의 파일 | 입력 문서 | 제품정보 |
|  :-  |  :-  |  :-  |
| 지원된 파일 형식 | 테스트 파일 (Doc).doc | Microsoft Word 95/6.0 또는 Microsoft Word 97 - 2003 문서. |
| | 테스트 파일 (Dot).dot | Microsoft Word 95/6.0 또는 Microsoft Word 97 - 2003 템플릿. |
| | 테스트 파일 (Docx).docx | 오피스 오픈 XML Wordprocessing 매크로없이 ML 문서. |
| | 테스트 파일 (Docm).docm | 오피스 오픈 XML Wordprocessing 매크로가있는 ML 문서. |
| | 테스트 파일 (Dotx).dotx | 오피스 오픈 XML Wordprocessing ML 템플릿. |
| | 테스트 파일 (Dotm).dotm | 오피스 오픈 XML Wordprocessing 매크로가있는 ML 템플릿. |
| | 테스트 파일 (XML).xml | FlatOPC OOXML 문서. |
| | 테스트 파일 (RTF).rtf | 풍부한 텍스트 형식 문서. |
| | 테스트 파일 (WordML).xml | Microsoft Word 2003 단어 처리 ML 문서. |
| | 테스트 파일 (HTML).html | HTML 문서. |
| | 테스트 파일 (MHTML).mhtml | MHTML (웹 아카이브) 문서. |
| | 테스트 파일 (Odt).odt | OpenDocument 텍스트 (OpenOffice Writer). |
| | 테스트 파일 (Ott).ott | OpenDocument 문서 템플릿. |
| | 테스트 파일 (DocPreWord60).doc | Microsoft Word 2.0 문서. |
| 암호화된 문서 | 테스트 파일 (Enc).doc | 암호화 된 Microsoft Word 95/6.0 또는 Microsoft Word 97 - 2003 문서. |
| | 테스트 파일 (Enc).docx | 암호화된 오피스 오픈 XML Wordprocessing ML 문서. |
| 지원된 파일 형식 | 테스트 파일 (JPG). 사이트맵 | JPEG 이미지 파일. |

