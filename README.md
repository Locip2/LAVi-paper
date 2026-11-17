# LAVi 论文协作仓库

**LAVi: Low-Altitude Visual World Modeling with Geometric Supervision**

本仓库以作者于 2026-11-17 提供的 `UranFly (1).zip` 为初始版本，保存论文正文、参考文献和全部插图。第一条提交完整保留压缩包中的 25 个文件；原始文件校验信息见 `SOURCE_ARCHIVE.json`。

## 公开仓库

仓库地址：[https://github.com/Locip2/LAVi-paper](https://github.com/Locip2/LAVi-paper)

任何人都可以浏览和下载。获取工程：

```sh
git clone https://github.com/Locip2/LAVi-paper.git
cd LAVi-paper
```

直接推送修改需要仓库写入权限；其他读者可以通过 Fork 和 Pull Request 提交建议。

## 文件位置

| 内容 | 文件 |
| --- | --- |
| 论文入口 | `main.tex` |
| 补充材料入口 | `supplementary.tex` |
| 补充材料正文 | `sec/8_supplementary.tex` |
| 摘要 | `sec/0_abstract.tex` |
| 引言 | `sec/1_introduction.tex` |
| 相关工作 | `sec/2_related_work.tex` |
| 数据 | `sec/3_data.tex` |
| 方法 | `sec/4_method.tex` |
| 实验 | `sec/5_experiments.tex` |
| 结论 | `sec/6_conclusion.tex` |
| LLM 使用声明 | `sec/7_llm_usage.tex` |
| 参考文献 | `main.bib` |
| 插图 | `figures/` |

## 编译

安装包含 pdfLaTeX、BibTeX 和 latexmk 的 TeX 发行版，在仓库根目录运行：

```sh
latexmk main.tex
latexmk supplementary.tex
```

正文与补充材料分别保存在 `build/main.pdf` 和 `build/supplementary.pdf`。也可以运行 `bash scripts/latexmk.sh`。编译产物不会进入 Git，`figures/` 中的论文插图会保留。

## 协作

从远程仓库页面复制克隆地址。第一次在自己电脑上提交前，设置自己的 Git 姓名和邮箱。

开始修改前先同步：

```sh
git pull --rebase
```

修改后检查差异，只提交本次更改的文件：

```sh
git diff
git add sec/5_experiments.tex
git commit -m "Update experimental setup"
git push
```

建议每人一次集中修改一个章节，尽量避免同时改动同一个段落。原始模板说明保存在 `template_examples/README.author-kit.md`。

## 与 Overleaf 的关系

本仓库不会自动同步到 Overleaf。在 Overleaf 中继续修改后，应先下载最新版并合并差异，再继续 Git 协作。向 Overleaf 更新时可上传相应的 `.tex`、`.bib` 和图片文件。

本仓库按作者要求公开。Overleaf 与本仓库之间仍需手动合并更新。
