# 开发者指南

感谢你对 `ruc-thesis-typst` 感兴趣！本文档旨在帮助开发者理解项目结构并参与贡献。

## 项目结构

```
ruc-thesis-typst/
├── typst.toml              # [核心] 包配置文件
├── lib.typ                 # [核心] 模板入口文件
├── docs/                   # [文档] 开发与使用文档
│   ├── requirements.md     # [参考] 排版要求文档
│   └── DEV.md              # 开发者指南
├── assets/                 # [资源] 存放模板必须的静态资源
│   └── ruc-logo-header.png # 页眉用的学校Logo
├── src/                    # [源码] 模板的具体实现逻辑
│   ├── fonts.typ           # 字体定义
│   ├── sizes.typ           # 字号常量
│   ├── cover.typ           # 封面
│   ├── abstract.typ        # 摘要
│   ├── declaration.typ     # 声明
│   ├── outline.typ         # 目录
│   └── utils.typ           # 辅助函数
└── template/               # [示例] 用户写作目录
    ├── main.typ            # 主入口
    ├── refs.bib            # 参考文献
    ├── assets/             # 用户图片
    └── chapters/           # 章节内容
```

## 开发流程

1.  **环境准备**：确保安装了最新版本的 Typst CLI。
2.  **修改源码**：主要逻辑位于 `src/` 目录下。
3.  **测试验证**：修改后，请编译 `template/main.typ` 查看效果。
    ```bash
    typst compile template/main.typ
    ```
4.  **提交代码**：请确保代码风格整洁，并提交 Pull Request。

## 贡献方向

- 修复排版 Bug
- 适配更多学院的特殊要求
- 改进文档
