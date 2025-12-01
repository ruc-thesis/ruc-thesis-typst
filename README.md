# 中国人民大学本科生毕业论文 Typst 模板

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Typst](https://img.shields.io/badge/built%20with-Typst-239dad.svg)

这是一个非官方的中国人民大学（RUC）本科生毕业论文 Typst 模板。旨在帮助同学们用现代化的工具，高效、优雅地完成论文排版。

## ✨ 特性

- **开箱即用**：预置了符合学校要求的页边距、字体、行距等格式。
- **自动化**：自动生成目录、图表索引，自动处理参考文献引用。
- **模块化**：章节分离，结构清晰，易于维护。

## 📦 安装与使用

### 方式一：使用官方包（开发中 🚧）

目前本模板尚未发布到 Typst 官方仓库（Universe）。待发布后，你将可以直接通过以下命令初始化项目：

```bash
typst init @preview/ruc-thesis-typst:0.1.0
```

### 方式二：安装为本地包（推荐）

如果你希望在不同的项目中复用此模板，或者离线使用，可以将本仓库安装为 **本地包**。

#### 1. 下载并放置到指定目录

你需要将本仓库克隆到 Typst 的本地包目录中。目录路径如下：

- **Windows**: `%APPDATA%\typst\packages\local\ruc-thesis-typst\0.1.0`
- **macOS**: `~/Library/Application Support/typst/packages/local/ruc-thesis-typst/0.1.0`
- **Linux**: `~/.local/share/typst/packages/local/ruc-thesis-typst/0.1.0`

以 Windows 为例，在 PowerShell 中执行：

```powershell
# 创建目录
mkdir "$env:APPDATA\typst\packages\local\ruc-thesis-typst\0.1.0"

# 克隆仓库到该目录
git clone https://github.com/ruc-thesis/ruc-thesis-typst.git "$env:APPDATA\typst\packages\local\ruc-thesis-typst\0.1.0"
```

#### 2. 初始化项目

安装完成后，你就可以在任何地方使用 `typst init` 命令来创建基于本模板的新项目了：

```bash
typst init @local/ruc-thesis-typst:0.1.0 my-thesis
```

### 方式三：直接克隆（最简单）

如果你不想折腾环境变量，也可以直接克隆本仓库，然后在 `template` 目录中开始写作。

1.  克隆仓库：
    ```bash
    git clone https://github.com/ruc-thesis/ruc-thesis-typst.git
    ```
2.  进入 `template` 目录，修改 `main.typ` 开始写作。
3.  编译：
    ```bash
    typst compile main.typ
    ```

## 📝 字体要求

- **宋体** (SimSun)
- **黑体** (SimHei)
- **楷体** (KaiTi)
- **Times New Roman**

## 🛠️ 开发者

如果你是开发者，或者想为本项目贡献代码，请阅读 [开发者指南](docs/DEV.md)。

## 📄 许可证

本项目基于 [MIT 许可证](LICENSE) 开源。
