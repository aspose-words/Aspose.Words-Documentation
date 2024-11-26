---
title: Java의Linux에TrueType글꼴 설치
second_title: Aspose.WordsJava
articleTitle: Linux에TrueType글꼴 설치
linktitle: Linux에TrueType글꼴 설치
description: "Aspose.WordsJava의 경우Linux컴퓨터에서Microsoft Word을 사용하여 만든 문서를 가장 정확하게 렌더링할 수 있습니다."
type: docs
weight: 20
url: /ko/java/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

대부분의 경우Aspose.Words을 사용하여DOC또는DOCX문서를PDF형식으로 변환합니다. Linux컴퓨터에서 이 작업을 수행해야 하는 경우 이 항목에서는Aspose.Words이 문서를 가장 정확하게 렌더링하는지 확인하는 방법을 배우는 데 도움이 됩니다.

가장 자주,변환해야 하는DOC및DOCX문서는Windows또는Mac OS 운영 체제에서Microsoft Word을 사용하여 만들어졌습니다. 따라서DOC및DOCX문서에 사용되는 대부분의 글꼴은Microsoft Windows또는Microsoft오피스와 함께 설치된 글꼴인"Windows글꼴"또는"사무실 글꼴"입니다. 이 글꼴에는 아리알,칼리브리,캄브리아,센추리 고딕,쿠리어 뉴,가라몬드,타호마,베르다나,윙딩스 등이 포함됩니다.

문제는 위에 나열된`TrueType`글꼴이Linux배포판에 기본적으로 설치되지 않는다는 것입니다. 캄브리아 글꼴로 서식이 지정된 일반적인DOCX문서를Linux에서PDF형식으로 변환하려고 하면Aspose.Words은 캄브리아를 사용할 수 없기 때문에 다른 글꼴을 사용합니다. 따라서PDF문서는 원래DOCX문서와 비교하여 다르게 보일 것입니다. Aspose.Words으로 변환된 문서가 원본에 최대한 가깝게 표시되도록 하려면Linux시스템에"Windows글꼴"을 설치해야 합니다.

Linux시스템에서TrueType글꼴을 얻는 두 가지 주요 방법이 있습니다:

- 알았어요TTF그리고.TTCWindows컴퓨터에서Linux컴퓨터로 파일
- `TrueType`글꼴 패키지(예:*msttcorefonts*)설치

## Windows컴퓨터에서 글꼴 복사

Linux시스템에서TrueType글꼴을 얻는 쉽고 빠른 방법은 복사하는 것입니다.TTF그리고.TTCWindows컴퓨터의`C:\Windows\Fonts`디렉터리에서Linux컴퓨터의 일부 디렉터리로 파일. 당신은 설치하거나 어떤 식 으로든Linux에 이러한 글꼴을 등록 할 필요가 없습니다;당신은 단지Aspose.Words에서[FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)클래스를 사용하여 글꼴의 위치를 지정해야합니다.

{{% alert color="primary" %}}

글꼴 라이선스가 필요한지 확인하고Linux운영 체제에MS글꼴을 설치하기 전에EULA을 주의 깊게 읽으십시오.

{{% /alert %}}

## `TrueType`글꼴 패키지 설치

Linux패키지에는MicrosoftTrueType글꼴이 포함되어 있으며Linux컴퓨터에 다운로드하여 설치할 수 있습니다. 정확한 단계는 다양한Linux분포에서 다를 수 있습니다.

- Ubuntu에서 시냅틱 패키지 관리자를 사용하여*ttf-mscorefonts-installer*패키지를 찾아 설치합니다.
- OpenSUSE에서*fetchmsttfonts*패키지를 찾아 설치합니다.
- 굴림,타임즈 새로운 로마,택배 새로운:표준Windows글꼴에 대한 대안으로,OFL에서 라이센스 해방 글꼴을 사용합니다.
- 다른Linux배포판에 적합한 글꼴 패키지의 경우 인터넷에서 사용 가능한 문서를 검색하십시오.

패키지를 설치한 후Aspose.Words은 시스템의 폴더에서 이러한 글꼴을 찾아 문서 작업을 할 때 사용합니다.

## 또한 참조

- [해방 글꼴](https://github.com/liberationfonts) 표준Windows글꼴의 대안으로
