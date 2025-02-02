---
title: 안녕하세요, 월드!
second_title: Python via .NET에 Aspose.Words를 사용하는 방법의 간단한 예
articleTitle: 안녕하세요, 월드!
linktitle: 안녕하세요 세계
description: "Python via .NET용 Aspose.Words를 사용하여 지원되는 형식으로 첫 번째 문서를 생성, 편집 및 저장하여 Python의 단순성과 강력함을 경험해 보세요."
type: docs
weight: 20
url: /ko/python-net/hello-world/
timestamp: 2024-01-27-14-07-04
---

"안녕하세요, 세계!" 코드는 "Aspose.Words for Python via .NET"를 작성하는 첫 번째 간단한 예인 경우가 많으며, 소스 코드를 컴파일하거나 실행하려는 소프트웨어가 올바르게 설치되었는지 확인하기 위한 온전성 테스트로도 사용할 수 있습니다.

"Aspose.Words for Python via .NET" 라이브러리는 개발자에게 Word 및 웹 문서를 생성, 수정, 병합, 변환, 비교할 수 있는 직접적인 액세스를 제공합니다. PDF, DOCX, DOC, RTF, ODT, EPUB, HTML 및 기타 여러 파일 형식은 [지원되는 문서 형식](/words/ko/python-net/supported-document-formats/)입니다.

Below code 스니펫은 다음 단계를 따릅니다

1. 빈 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)를 새로 생성합니다
1. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 클래스 초기화
1. 간단한 [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) 방법을 사용하여 문서 시작 부분에 텍스트를 삽입합니다
1. 파일에서 기존 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)를 엽니다. 파일 형식을 자동으로 감지합니다
1. [Append](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) 문서 "A"에서 문서 "B"까지
1. 출력물을 PDF로 [Save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)

다음 코드 조각은 "Hello, World!"입니다. "Aspose.Words for Python via .NET" API 작업을 보여주는 예:

{{< gist "aspose-words-gists" "ff869587c650d2a27785d5cd598ae0b4" "hello-world.py" >}}
