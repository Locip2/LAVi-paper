# CVPR 2027 LaTeX 项目

已于 2026-11-12 迁移到 CVPR 2027 官方 v1 LaTeX 模板，默认采用匿名 review 模式。

- 官方说明：https://cvpr.thecvf.com/Conferences/2027/AuthorGuidelines
- 官方下载：https://media.eventhosts.cc/Conferences/CVPR2027/author-kit-CVPR2027-v1-latex.zip
- 来源、SHA-256 和项目适配记录见 `TEMPLATE_SOURCE.json`。
- 2026 模板备份：`draft_history/before_cvpr2027_template_2026-11-12/`。

## 文件

`main.tex` 是当前论文入口，研究正文位于 `sec/abstract.tex`、`sec/introduction_draft.tex`、`sec/related_work.tex`、`sec/method.tex`、`sec/experiments.tex`、`sec/conclusion.tex`，参考文献为 `main.bib`。这些正文和文献在模板迁移中未改动。

`cvpr.sty`、`ieeenat_fullname.bst`、`preamble.tex`、`rebuttal.tex` 和编号的官方示例章节来自 2027 官方包。原始示例入口与文献位于 `template_examples/`。2027 模板不再显示 Paper ID，无需填写旧的 paperID 宏。

`sec/llm_usage.tex` 是 2027 要求的 LLM Usage Statement，置于正文之后、参考文献之前。当前文字披露了本项目中 Codex 对 Introduction、Method、参考文献及 LaTeX 的辅助；如另有生成式 AI 使用，请在投稿前据实补充。

## 编译

```sh
bash scripts/latexmk.sh
bash scripts/latexmk.sh rebuttal.tex
```

输出分别为 `build/main.pdf` 和 `build/rebuttal.pdf`。保留现有 `.latexmkrc`、VS Code 自动编译和 SyncTeX 配置。

上传 Overleaf 时使用 `cvpr2027_overleaf_2026-11-12.zip`，主文档为 `main.tex`，编译器为 pdfLaTeX。旧的 `overleaf_upload_2026-10-22.zip` 是历史 2026 版本。

## 投稿前

正文限八页；引用和 LLM Usage Statement 不计入正文页数。当前仍含工作标题、作者占位及未完成章节；模板迁移和编译通过不代表论文已具备投稿条件。最终稿模式切换为 `\usepackage{cvpr}`，并按当届要求核对作者信息及声明。
