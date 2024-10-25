---
title: Como executar os exemplos
second_title: Aspose.Words Para C++
articleTitle: Como executar os exemplos
linktitle: Como executar os exemplos
description: "Baixar Aspose.Words para C++ exemplos do nosso repositório GitHub e aprenda como executá-los para se familiarizar mais com as possibilidades e recursos Aspose.Words."
type: docs
weight: 110
url: /pt/cpp/how-to-run-the-examples/
---

Para nos familiarizarmos mais com as possibilidades e recursos do Aspose.Words, fornecemos exemplos que podem ser baixados do nosso repositório GitHub, executados e aprendidos em detalhes.

Neste artigo, você pode encontrar os requisitos do sistema, bem como informações sobre como executar os exemplos.

## Windows com Nuget pacote

### Requisitos e pré-requisitos do Software

Certifique-se de que cumpre os seguintes requisitos antes de descarregar e executar os exemplos:

1. Visual Studio Código, Visual Studio 2022.
2. Gerenciador de pacotes NuGet instalado e a versão mais recente NuGet API para Visual Studio. (facultativo)
3. Opção **nuget.org** seleccionada na caixa de diálogo" Ferramentas Opções "em"NuGet Gestor de pacotes Fontes de pacotes".
4. Uma conexão ativa com a Internet para usar o recurso de restauração automática de pacotes `NuGet` no projeto exemplos. Se não tiver uma ligação activa à internet na máquina onde os exemplos devem ser executados, siga as instruções do pacote Windows com Cmake.

### Baixe e execute os exemplos

Todos Aspose.Words para C++ exemplos estão hospedados em [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Você pode clonar o repositório usando seu cliente GitHub favorito ou baixar [o ficheiro ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Depois de obter uma cópia do repositório, você pode descobrir que:

- Todos os exemplos estão localizados na pasta **Examples**.
- Existem Visual Studio Ficheiros de solução para C++ criados em Visual Studio 2022.

Para executar os exemplos, abra o arquivo de solução em Visual Studio e crie o projeto:

- Para **API Reference** exemplos, a estrutura é baseada em nomes de classes, para **Docs** Exemplos é baseada principalmente no [Desenvolvedor Guiled](/words/cpp/developer-guide/) secção de documentação.
- Na primeira execução, as dependências serão baixadas automaticamente via NuGet.
- A pasta **Data** na pasta raiz de **Examples** contém ficheiros de entrada que foram utilizados nos exemplos.
- Todos os exemplos podem ser executados como testes unitários.

## Windows com CMake pacote

### Requisitos e pré-requisitos do Software

Certifique-se de que cumpre os seguintes requisitos antes de descarregar e executar os exemplos:

1. Visual Studio Código, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Baixar o pacote lastest CMake de https://downloads.aspose.com/words/cpp

### Baixe e execute os exemplos

Todos Aspose.Words para C++ exemplos estão hospedados em [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Você pode clonar o repositório usando seu cliente GitHub favorito ou baixar [o ficheiro ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Coloque as pastas `Aspose.Words.Cpp` e `CodePorting.Native.Cs2Cpp_*` na raiz de uma cópia do repositório.

Todos os exemplos estão localizados na pasta **Examples**.

Para executar os exemplos, execute os seguintes comandos a partir da raiz de uma cópia do repositório:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

A solução para Visual Studio será gerada no `Examples\DocsExamples\build`

Para executar os exemplos, abra o arquivo de solução em Visual Studio e crie o projeto:

- Para **API Reference** exemplos, a estrutura é baseada em nomes de classes, para **Docs** Exemplos é baseada principalmente no [Desenvolvedor Guiled](/words/cpp/developer-guide/) secção de documentação.
- A pasta **Data** na pasta raiz de **Examples** contém ficheiros de entrada que foram utilizados nos exemplos.
- Todos os exemplos podem ser executados como testes unitários.

## Linux

### Requisitos e pré-requisitos do Software

Certifique-se de que cumpre os seguintes requisitos antes de descarregar e executar os exemplos:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Baixar o pacote lastest CMake de https://downloads.aspose.com/words/cpp

### Baixe e execute os exemplos

Todos Aspose.Words para C++ exemplos estão hospedados em [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Você pode clonar o repositório usando seu cliente GitHub favorito ou baixar [o ficheiro ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Coloque as pastas `Aspose.Words.Cpp` e `CodePorting.Native.Cs2Cpp_*` na raiz de uma cópia do repositório.

Todos os exemplos estão localizados na pasta **Examples**.

Para executar os exemplos, execute os seguintes comandos a partir da raiz de uma cópia do repositório:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- Para **API Reference** exemplos, a estrutura é baseada em nomes de classes, para **Docs** Exemplos é baseada principalmente no [Desenvolvedor Guiled](/words/cpp/developer-guide/) secção de documentação.
- A pasta **Data** na pasta raiz de **Examples** contém ficheiros de entrada que foram utilizados nos exemplos.
- Todos os exemplos podem ser executados como testes unitários.

{{% alert color="primary" %}}

Sinta-se à vontade para entrar em contato usando nosso [Aspose.Words Fórum Da Família De Produtos](https://forum.aspose.com/c/words/8) se você tiver algum problema ao configurar ou executar os exemplos.

{{% /alert %}}

## Contribuir para melhorar os exemplos

Se quiser acrescentar ou melhorar um exemplo, encorajamo-lo a contribuir para o projecto. Todos os exemplos e projetos de demonstração neste repositório são de código aberto e podem ser usados livremente em suas aplicações.

Você pode bifurcar o repositório, editar o código-fonte e criar uma pull request para contribuir. Vamos rever as alterações e incluí-las no repositório, se for considerado útil.

## Ver Também

- [Detalhes sobre como instalar o Gestor de Pacotes NuGet ](https://docs.microsoft.com/nuget/guides/install-nuget)
