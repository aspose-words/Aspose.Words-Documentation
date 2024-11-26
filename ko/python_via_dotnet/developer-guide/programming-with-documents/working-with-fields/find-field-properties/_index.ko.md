---
title: Python에서 필드 속성 찾기
second_title: Python via .NET용 Aspose.Words
articleTitle: 필드 속성 찾기
linktitle: 필드 속성 찾기
description: "Python에서 필드 코드 및 필드 결과와 같은 일부 필드 속성을 찾는 방법."
type: docs
weight: 25
url: /ko/python-net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/)를 사용하여 삽입된 필드는 [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) 객체를 반환합니다. 이는 필드의 일부 속성을 빠르게 찾는 데 유용한 메서드를 제공하는 faсade 클래스입니다.

다음 코드 예제에서는 필드 코드와 필드 결과를 찾는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

문서에서 병합 필드의 이름만 찾는 경우 내장된 [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) 방법을 대신 사용할 수 있습니다.

다음 코드 예제에서는 문서의 모든 병합 필드 이름을 가져오는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}
