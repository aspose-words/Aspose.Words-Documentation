---
title: Características
second_title: Aspose.Words para Python via .NET
articleTitle: Recursos suportados
linktitle: Recursos suportados
description: "Aspose.Words for Python via .NET oferece aos usuários uma ampla gama de recursos, desde a simples conversão e modificação de documentos até a criação de documentos estruturados e visualmente atraentes ou a automação de relatórios."
type: docs
weight: 30
url: /pt/python-net/features/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words oferece aos usuários uma ampla gama de recursos. Os usuários podem realizar uma grande quantidade de tarefas relacionadas a documentos – desde a simples conversão de documentos de um formato compatível para outro e a modificação desses documentos durante o processo de conversão até tarefas de negócios, como a criação de documentos estruturados e visualmente atraentes ou a automatização de relatórios.

Os formatos e padrões de documentos modernos são complexos e, quando você precisa de conversão de documentos ou outros recursos de processamento de documentos em seu projeto, a única solução prática geralmente é contar com um componente de terceiros que implemente a funcionalidade desejada. Mas usar um componente de terceiros sempre traz algum risco. Um dos riscos únicos no processamento de documentos é a questão de quão completa e corretamente a biblioteca implementa um determinado formato ou padrão de documento.

A Aspose está comprometida em fornecer as implementações mais completas e precisas de formatos e padrões de documentos. A equipe Aspose.Words demonstra seu compromisso com a interoperabilidade fornecendo notas detalhadas de implementação para formatos de documentos suportados em múltiplas plataformas.

As tabelas abaixo resumem e comparam a disponibilidade de recursos Aspose.Words para Python via .NET e fornecem links para descrições detalhadas dos recursos.

## Plataformas suportadas

As plataformas Aspose.Words para Python via .NET podem ser usadas em Windows x64 ou x86, macOS x86_x64 ou arm64 e em ampla variedade de distribuições Linux com Python 3.5 ou posterior instalado. Existem requisitos adicionais para as plataformas Linux e macOS de destino:
- Bibliotecas de tempo de execução GCC-6 (ou posterior)
- Dependências do .NET Core Runtime. A instalação do próprio .NET Core Runtime é necessária para `NOT`
- Para Python 3.5-3.7: A compilação `pymalloc` do Python é necessária. A opção de compilação `--with-pymalloc` Python está habilitada por padrão. Normalmente, a compilação `pymalloc` do Python é marcada com o sufixo `m` no nome do arquivo.
- Biblioteca Python compartilhada `libpython`. A opção de construção `--enable-shared` Python está desabilitada por padrão, algumas distribuições Python não contêm a biblioteca compartilhada `libpython`. Para algumas plataformas Linux, a biblioteca compartilhada `libpython` pode ser instalada usando o gerenciador de pacotes, por exemplo: `sudo apt-get install libpython3.7`. O problema comum é que a biblioteca `libpython` é instalada em um local diferente do local padrão do sistema para bibliotecas compartilhadas. O problema pode ser corrigido usando as opções de construção do Python para definir caminhos de biblioteca alternativos ao compilar o Python, ou corrigido criando um link simbólico para o arquivo da biblioteca `libpython` no local padrão do sistema para bibliotecas compartilhadas. Normalmente, o nome do arquivo da biblioteca compartilhada `libpython` é `libpythonX.Ym.so.1.0` para Python 3.5-3.7 ou libpythonX.Y.so.1.0 para Python 3.8 ou posterior (por exemplo: `libpython3.7m.so.1.0`, `libpython3.9.so.1.0`).

Se precisar de suporte para mais plataformas, procure os produtos "irmãos gêmeos" Aspose.Words para .NET ou Aspose.Words para Java.

## Formatos de arquivo e conversões

Muitos clientes em todo o mundo confiam nos recursos completos de importação e exportação de documentos fornecidos pelo Aspose.Words.

|  Recurso | Descrição | Python via .NET |
|  :-  |  :-  |  :-  |
| `Microsoft Word - DOC` | A implementação do formato DOC mais rápida e completa que você pode encontrar. | {{< emoticons/tick >}} |
| `WordprocessingML - DOCX and XML` | Aspose.Words oferece suporte exaustivo a OOXML, Flat OPC e também Word 2003 XML. | {{< emoticons/tick >}} |
| `Rich Text Format - RTF` | Suporte abrangente ao formato RTF para interagir com uma variedade de aplicativos. | {{< emoticons/tick >}} |
| `HTML, XHTML and MHTML` | Carregue e salve HTML/XHTML para uma interoperabilidade ainda maior. Salvar como MHTML também está disponível. | {{< emoticons/tick >}} |
| `OpenDocument - ODT` | Aspose.Words pode carregar e salvar documentos no formato `OpenDocument` Text (.odt). | {{< emoticons/tick >}} |
| `Adobe Portable Document Format - PDF` | Converta qualquer documento em PDF com alta fidelidade. PDF/A é suportado. | {{< emoticons/tick >}} |
| `XML Paper Specification - XPS` | Converta qualquer documento para XPS com alta fidelidade. | {{< emoticons/tick >}} |
| `Plain Text - TXT` | Extraia texto facilmente salvando-o em formato de texto simples. | {{< emoticons/tick >}} |
| `Digital Publishing EPUB` | EPUB é um formato popular para e-books. Você pode converter qualquer documento de Aspose.Words para o formato IDPF EPUB. | {{< emoticons/tick >}} |
| `Printer Command Language (PCL)` | Aspose.Words para .NET oferece suporte para salvar documentos no formato PCL. | {{< emoticons/tick >}} |

## Renderização e Impressão

Aspose.Words agora oferece renderização de alta fidelidade de páginas de documentos.

|  Recurso | Python via .NET |
|  :-  |  :-  |
| Layout do documento em páginas com alta fidelidade (exatamente como o Microsoft Word® faria) para todos os formatos abaixo. | {{< emoticons/tick >}} |
| Renderize páginas individuais ou documentos completos em PDF ou XPS. | {{< emoticons/tick >}} |
| Renderizar páginas de documentos em imagens BMP | {{< emoticons/tick >}} |
| Renderize páginas de documentos em imagens (PNG, EMF, JPEG, GIF). | {{< emoticons/tick >}} |
| Renderize formas individuais do documento em imagens raster ou vetoriais. | {{< emoticons/tick >}} |
| Especifique a resolução, qualidade, compactação da imagem e outras opções. | {{< emoticons/tick >}} |
| Renderize páginas ou formas em um objeto .NET Graphics com transformações, para um tamanho específico. | {{< emoticons/tick >}} |
| Imprima páginas de documentos usando a infraestrutura de impressão .NET. | {{< emoticons/cross >}} |
| Atualize `TOC`, números de página e outros campos antes de renderizar ou imprimir. | {{< emoticons/tick >}} |

## Recursos de conteúdo do documento

Aspose.Words fornece um modelo de objeto rico que consiste em mais de 100 classes públicas, que permitem gerar, combinar, modificar, analisar ou examinar programaticamente documentos carregados.

|  Recurso | Python via .NET |
|  :-  |  :-  |
| Acesse, crie e modifique parágrafos e texto. | {{< emoticons/tick >}} |
| Acesse, crie e modifique imagens, caixas de texto e formas. | {{< emoticons/tick >}} |
| Acesse, crie e modifique tabelas, linhas e células. | {{< emoticons/tick >}} |
| Acesse, crie e modifique campos, campos de formulário, hiperlinks e marcadores. | {{< emoticons/tick >}} |
| Acesse, crie e modifique seções, cabeçalhos e rodapés de documentos. | {{< emoticons/tick >}} |
| Acesse, crie e modifique notas de rodapé, notas finais e comentários. | {{< emoticons/tick >}} |
| Acesse, crie e modifique XML personalizado, SmartTags e tags de documentos estruturados (controles de conteúdo). | {{< emoticons/tick >}} |
| Acesse e modifique todos os elementos do documento usando classes e métodos semelhantes a **XmlDocument**. | {{< emoticons/tick >}} |
| Atualize os resultados dos campos `IF`, fórmula e outros tipos de campos populares. | {{< emoticons/tick >}} |
| Reconstrua e atualize os campos do Índice (TOC) exatamente como o Microsoft Word faz. | {{< emoticons/tick >}} |
| Copie e mova elementos de documentos entre documentos. | {{< emoticons/tick >}} |
| Junte e divida documentos. | {{< emoticons/tick >}} |
| Obtenha e defina propriedades de documentos integradas e personalizadas. | {{< emoticons/tick >}} |
| Especifique a proteção de documentos, abra documentos protegidos e criptografados. | {{< emoticons/tick >}} |
| Encontre e substitua texto, enumere o conteúdo do documento. | {{< emoticons/tick >}} |
| Aceite todas as revisões em um documento. | {{< emoticons/tick >}} |
| Preservar ou extrair objetos OLE e controles ActiveX do documento. | {{< emoticons/tick >}} |
| Preservar ou remover macros VBA do documento. Preservar a assinatura digital das macros VBA. | {{< emoticons/tick >}} |
| Detecte e verifique assinaturas digitais em documentos. | {{< emoticons/tick >}} |
| Insira texto HTML. | {{< emoticons/tick >}} |
| Extraia macros VBA de um documento do Word. | {{< emoticons/tick >}} |

## Recursos de formatação de documentos

Aspose.Words fornece acesso programático detalhado às propriedades de formatação de todos os elementos do documento.

|  Recurso | Python via .NET |
|  :-  |  :-  |
| Acesse e modifique toda a formatação de caracteres, incluindo fontes, cores, efeitos, bordas e sombreamento. | {{< emoticons/tick >}} |
| Acesse e modifique toda a formatação de parágrafo, incluindo recuos, espaçamento, bordas e sombreamento, paradas de tabulação. | {{< emoticons/tick >}} |
| Acesse e modifique toda a formatação de listas com marcadores e numeradas, incluindo numeração e níveis. | {{< emoticons/tick >}} |
| Acesse e modifique a formatação da tabela, incluindo alinhamento, orientação, bordas e sombreamento. | {{< emoticons/tick >}} |
| Acesse e modifique todas as propriedades da seção, incluindo tamanho do papel, margens e orientação. | {{< emoticons/tick >}} |
| Acesse, crie e modifique estilos de documentos. | {{< emoticons/tick >}} |
| Acesse e modifique objetos de desenho, incluindo posição, tamanho, propriedades de linha e preenchimento, bytes de imagem. | {{< emoticons/tick >}} |

## Recursos Mail Merge

Você pode usar o Aspose.Words como uma solução de relatórios por conta própria. Crie seus relatórios em Microsoft Word e faça com que o Aspose.Words preencha os documentos com dados de várias fontes de dados.

|  Recurso | Python via .NET |
|  :-  |  :-  |
| Use todos os campos Microsoft Word Mail Merge padrão em seus relatórios, incluindo `MERGEFIELD`, `NEXT`, `NEXTIF`, `ADDRESSBLOCK`, GREETINGLINE. | {{< emoticons/tick >}} |
| Execute Mail Merge para documentos que contenham até mesmo os campos e fórmulas `IF` mais complexos e aninhados. | {{< emoticons/tick >}} |
| Preencha e aumente dinamicamente tabelas ou fragmentos no documento a partir de sua fonte de dados usando regiões mail merge. | {{< emoticons/cross >}} |
| Gere facilmente relatórios que contenham dados mestre-detalhados (pai-filho), como Order/OrderDetails. | {{< emoticons/cross >}} |
| Preencha documentos com dados de qualquer fonte de dados .NET, como DataSet, DataTable, DataView, DataReader ou ADO Recordset. | {{< emoticons/cross >}} |
| Preencha documentos de qualquer fonte de dados, como consulta LINQ, arquivo XML ou objetos de negócios, implementando a interface [IMailMergeDataSource](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/imailmergedatasource/). | {{< emoticons/cross >}} |
| Assuma o controle preciso, como a formatação de números, sobre como seus dados são mesclados usando eventos. | {{< emoticons/cross >}} |
| Insira imagens durante mail merge. | {{< emoticons/tick >}} |
| Crie ou modifique programaticamente uma fonte de dados Microsoft Word Mail Merge para um documento. Preservar configurações Mail Merge e fontes de dados. | {{< emoticons/tick >}} |
| Recuperar nomes de campos mail merge. | {{< emoticons/tick >}} |

## Recursos de relatórios

LINQ Reporting Engine é uma ferramenta avançada de relatórios que permite gerar documentos com base em documentos de modelo e dados obtidos de várias fontes, incluindo bancos de dados, XML, JSON, OData, objetos de tipos CLR personalizados, documentos externos e muito mais prontos para uso.

| Características principais | Python via .NET |
|  :-  |  :-  |
| Suporte à sintaxe C# e métodos de extensão LINQ diretamente em modelos (mesmo para fontes de dados `ADO.NET`) | {{< emoticons/tick >}} |
| Suporte de blocos de documentos repetíveis e condicionais (loops e condições) para tabelas, listas e conteúdo comum | {{< emoticons/tick >}} |
| Suporte de gráficos e imagens gerados dinamicamente | {{< emoticons/tick >}} |
| Suporte para inserção de documentos externos e blocos HTML em um documento | {{< emoticons/tick >}} |
| Suporte de múltiplas fontes de dados (inclusive de diferentes tipos) para geração de um único documento | {{< emoticons/tick >}} |
| Suporte integrado de relações de dados (mestre-detalhe) | {{< emoticons/tick >}} |
| Suporte abrangente de diversas manipulações de dados, como agrupamento, classificação, filtragem e outros diretamente em modelos | {{< emoticons/tick >}} |
| WYSIWYG: Um documento gerado retém a mesma formatação de seus elementos que um modelo correspondente possui | {{< emoticons/tick >}} |
