---
title: 로드 시 파일 형식 감지
second_title: .NET용 Aspose.Words
articleTitle: 파일 형식 감지 및 형식 호환성 확인
linktitle: 파일 형식 감지 및 형식 호환성 확인
description: "파일의 실제 내용이 무엇인지 확실하지 않거나 형식 호환성을 확인하려면 C#에서 파일 형식을 결정하십시오."
type: docs
weight: 20
url: /ko/net/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

파일 확장자가 파일 내용의 적합성을 보장하지 않기 때문에 문서를 열기 전에 문서의 형식을 결정해야 하는 경우가 있습니다. 예를 들어 Crystal Reports는 종종 RTF 형식으로 문서를 출력하지만 .doc 확장자를 제공하는 것으로 알려져 있습니다.

Aspose.Words는 파일의 실제 내용이 무엇인지 확실하지 않은 경우 예외를 피하기 위해 파일 형식에 대한 정보를 얻을 수 있는 기능을 제공합니다.

## 예외 없이 파일 형식 감지

다양한 파일 형식의 여러 문서를 처리할 때 Aspose.Words로 처리할 수 있는 파일과 처리할 수 없는 파일을 분리해야 할 수도 있습니다. 일부 문서를 처리할 수 없는 이유를 알고 싶을 수도 있습니다.

[Document](https://reference.aspose.com/words/net/aspose.words/document/) 객체에 파일을 로드하려고 하는데 Aspose.Words가 파일 형식을 인식할 수 없거나 형식이 지원되지 않으면 Aspose.Words에서 예외가 발생합니다. 이러한 예외를 포착하고 분석할 수 있지만 Aspose.Words는 가능한 예외가 있는 문서를 로드하지 않고도 파일 형식을 빠르게 결정할 수 있는 [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/) 방법도 제공합니다. 이 메서드는 파일 형식에 대해 감지된 정보가 포함된 [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) 개체를 반환합니다.

{{% alert color="primary" %}}

DetectFileFormat은 파일 형식만 확인하고 파일 형식의 유효성은 검사하지 않습니다. **DetectFileFormat**가 지원되는 형식 중 하나라고 반환하더라도 파일이 성공적으로 열릴 것이라는 보장은 없습니다. 이는 **DetectFileFormat** 방법이 부분적인 파일 형식 데이터만 읽기 때문에 파일 형식을 확인하는 데는 충분하지만 완전한 유효성 검사에는 충분하지 않습니다.

{{% /alert %}}

## 파일 형식 호환성 확인

선택한 폴더에 있는 모든 파일의 형식 호환성을 확인하고 형식별로 해당 하위 폴더로 정렬할 수 있습니다.

폴더의 내용을 다루기 때문에 가장 먼저 해야 할 일은 `Directory` 클래스의 **GetFiles** 메서드(`System.IO` 네임스페이스에서)를 사용하여 이 폴더에 있는 모든 파일의 컬렉션을 가져오는 것입니다.

다음 코드 예제에서는 폴더에 있는 모든 파일의 목록을 가져오는 방법을 보여줍니다

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "get-files-in-folder.cs" >}}

모든 파일이 수집되면 나머지 작업은 파일 형식을 확인하는 **DetectFileFormat** 방식으로 수행됩니다.

다음 코드 예제에서는 수집된 파일 목록을 반복하고, 각 파일의 형식을 확인하고, 각 파일을 적절한 폴더로 이동하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "check-format-compatibility.cs" >}}

파일은 동일한 `System.IO` 네임스페이스에서 `File` 클래스의 `Move` 메서드를 사용하여 적절한 하위 폴더로 이동됩니다.

위의 예에서는 다음 파일이 사용되었습니다. 파일 이름은 왼쪽에 있고 설명은 오른쪽에 있습니다

| 파일의 Group | 입력 문서 | 유형 |
|  :-  |  :-  |  :-  |
| 지원되는 파일 형식 | 테스트 파일(문서).doc | Microsoft Word 95/6.0 또는 Microsoft Word 97 – 2003 문서. |
|  | 테스트 파일(`Dot`).dot | Microsoft Word 95/6.0 또는 Microsoft Word 97 – 2003 템플릿. |
|  | 테스트 파일(Docx).docx | 매크로가 없는 Office Open XML WordprocessingML 문서입니다. |
|  | 테스트 파일(Docm).docm | 매크로가 포함된 Office Open XML WordprocessingML 문서입니다. |
|  | 테스트 파일(Dotx).dotx | Office Open XML WordprocessingML 템플릿입니다. |
|  | 테스트 파일(Dotm).dotm | 매크로가 포함된 Office Open XML WordprocessingML 템플릿입니다. |
|  | 테스트 파일(XML).xml | FlatOPC OOXML 문서. |
|  | 테스트 파일(RTF).rtf | 리치 텍스트 형식 문서. |
|  | 테스트 파일(WordML).xml | Microsoft Word 2003 WordprocessingML 문서. |
|  | 테스트 파일(HTML).html | HTML 문서. |
|  | 테스트 파일(MHTML).mhtml | MHTML(웹 아카이브) 문서. |
|  | 테스트 파일(Odt).odt | OpenDocument 텍스트(OpenOffice Writer). |
|  | 테스트 파일(Ott).ott | OpenDocument 문서 템플릿. |
|  | 테스트 파일(DocPreWord60).doc | Microsoft Word 2.0 문서. |
| 암호화된 문서 | 테스트 파일(Enc).doc | 암호화된 Microsoft Word 95/6.0 또는 Microsoft Word 97 – 2003 문서. |
|  | 테스트 파일(Enc).docx | 암호화된 Office Open XML WordprocessingML 문서. |
| 지원되지 않는 파일 형식 | 테스트 파일(JPG).jpg | JPEG 이미지 파일. |

