---
title: 설치
second_title: Python via .NET용 Aspose.Words
articleTitle: 설치
linktitle: 설치
description: "Manage NuGet Packages 또는 Package Manager Console과 같은 Visual Studio 도구와 MSI 설치 프로그램을 사용하여 Python용 Aspose.Words를 설치합니다. Full Trust 권한 집합을 사용합니다."
type: docs
weight: 10
url: /ko/python-net/installation/
timestamp: 2024-01-27-14-07-04
---

시작하기 전에 귀하의 기계가 [시스템 요구 사항](/words/ko/python-net/system-requirements/)를 충족하는지 확인하십시오.

이 문서에서는 컴퓨터에 Aspose.Words for Python via .NET를 설치하는 방법을 설명합니다.

`pip`는 [Python via .NET용 Aspose.Words](https://pypi.org/project/aspose-words/) API을 다운로드하고 설치하는 가장 쉬운 방법입니다. 이렇게 하려면 다음 명령을 실행하십시오

`pip install aspose-words`

모듈이 설치되면 Python 코드에서 사용할 수 있습니다

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
