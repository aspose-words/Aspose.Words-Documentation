---
title: 글꼴이 대체 된 것을 인식하는 방법 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 글꼴이 대체 된 것을 인식하는 방법
linktitle: 글꼴이 대체 된 것을 인식하는 방법
description: "문서의 레이아웃이 변경된 이유 또는 특정 글꼴이 예상대로 보이지 않는 이유를 잘 모르는 경우 글꼴 대체 경고 메시지가 도움이 될 수 있습니다."
type: docs
weight: 13
url: /ko/cpp/how-to-recognize-that-the-font-was-replaced/
---

때로는 문서 레이아웃이 변경된 이유 또는 일부 글꼴이 예상대로 보이지 않는 이유가 불분명 할 수 있습니다. 이러한 경우,글꼴 대체 경고 메시지에 의해 구현 IWarningCallback 인터페이스는 구조에 온다. 그들은 [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) 경고 유형 및 표준 설명 텍스트 형식,"글꼴'<OriginalFont>'는 발견되지 않았습니다. 사용'<SubstitutionFont>'대신 글꼴. 이유: <Reason>"라고 적혀있죠.:

- "문서의 대체 이름–-에 의해 대체 [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "글꼴 구성 대체"-글꼴 구성 규칙에 의한 대체
- "테이블 대체"-테이블 규칙에 의한 대체
- "글꼴 정보 대체"–글꼴 정보 규칙에 의한 대체
- "기본 글꼴 대체–-기본 글꼴 규칙에 의한 대체
- "사용 가능한 첫 번째 글꼴"–사용 가능한 첫 번째 글꼴로 대체
