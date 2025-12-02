#import "../lib.typ": project

#show: project.with(
  title: "中国人民大学本科毕业论文示例",
  authors: ("张三",),
  abstract: [
    这是中文摘要。本文旨在测试Typst模板的各种样式和功能。

    摘要通常包含研究背景、目的、方法、结果和结论。
  ],
  keywords: ("关键词1", "关键词2", "Typst", "模板"),
)

#include "chapters/chapter1.typ"
#include "chapters/chapter2.typ"
