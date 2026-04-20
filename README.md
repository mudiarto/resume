# resume

My resume, written as YAML and rendered to PDF, HTML, and Markdown using [RenderCV](https://github.com/rendercv/rendercv) — a Typst-based resume builder for engineers and academics.

**Why this approach:**
- Resume content lives in a single YAML file — version-controlled, diffable, no binary blobs
- Typst engine produces LaTeX-quality PDFs that are ATS-safe (real selectable text)
- Changing the visual design is a one-line theme swap, not a reformatting session
- GitHub Actions auto-renders on every push — the PDF in this repo is always current

---

## Repository Structure

```
.
├── Leonardo_da_Vinci_CV.yaml   # ← The resume: all content + design config
├── rendercv_output/            # ← Generated files (committed for convenience)
│   ├── Leonardo_da_Vinci_CV.pdf
│   ├── Leonardo_da_Vinci_CV.html
│   ├── Leonardo_da_Vinci_CV.md
│   └── Leonardo_da_Vinci_CV_1.png
├── .github/
│   └── workflows/
│       └── render.yml          # ← Auto-renders on push to main
├── CLAUDE.md                   # ← Instructions for AI agents (Claude Code, etc.)
└── README.md
```

---

## Prerequisites

- Python 3.12 or newer
- `uv` (recommended) or `pip`

---

## Installation

### Recommended: using `uv`

```bash
# Install uv if you don't have it
curl -LsSf https://astral.sh/uv/install.sh | sh

# Install RenderCV
uv tool install "rendercv[full]"
```

### Alternative: using `pip`

```bash
pip install "rendercv[full]"
```

### Alternative: using `pipx`

```bash
pipx install "rendercv[full]"
```

Verify the installation:

```bash
rendercv --version
```

---

## Generating the Resume

Render to all output formats (PDF, HTML, Markdown, PNG previews):

```bash
rendercv render Leonardo_da_Vinci_CV.yaml
```

Output files are written to `rendercv_output/`.

### Watch mode (auto-render on save)

Useful while editing — re-renders automatically whenever the YAML file is saved:

```bash
rendercv render --watch Leonardo_da_Vinci_CV.yaml
```

### Render with a different theme

RenderCV ships with 6 built-in themes. To preview a different one without editing the YAML:

```bash
rendercv render Leonardo_da_Vinci_CV.yaml --design.theme engineeringresumes
rendercv render Leonardo_da_Vinci_CV.yaml --design.theme moderncv
rendercv render Leonardo_da_Vinci_CV.yaml --design.theme sb2nov
rendercv render Leonardo_da_Vinci_CV.yaml --design.theme toasterthesis
rendercv render Leonardo_da_Vinci_CV.yaml --design.theme plain
```

---

## Customizing the Resume

Open `Leonardo_da_Vinci_CV.yaml` in your editor. The file has three main sections:

| Section    | Purpose                                                  |
|------------|----------------------------------------------------------|
| `cv`       | All content: name, contact info, experience, education, skills, etc. |
| `design`   | Visual settings: theme, font, colors, margins, page size |
| `locale`   | Language/date formatting (20 built-in languages)         |
| `settings` | Output file paths and render options                     |

### VS Code Integration (recommended)

The YAML file includes a `$schema` reference at the top that enables autocompletion and inline validation in VS Code. Install the [YAML extension](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) and open the file — you'll get field suggestions and error highlighting as you type.

See [RenderCV's VS Code guide](https://docs.rendercv.com/user_guide/how_to/set_up_vs_code_for_rendercv/) for the full setup.

---

## AI Agent Skill (Claude Code, Cursor, Copilot, etc.)

RenderCV provides a skill that teaches AI coding agents the full RenderCV schema, CLI, and design options. This lets agents create, edit, and render your CV correctly without guessing at field names.

### Install for Claude Code

```bash
# Option 1: Using the skills CLI (recommended)
npx skills add rendercv/rendercv-skill -a claude-code

# Option 2: Manual install
git clone https://github.com/rendercv/rendercv-skill.git
cp -r rendercv-skill/skills/rendercv ~/.claude/skills/
```

### Install for Cursor

```bash
npx skills add rendercv/rendercv-skill -a cursor
```

### Install for other agents

```bash
# Install for any skills-standard compatible agent
npx skills add rendercv/rendercv-skill
```

See [RenderCV's AI skill docs](https://docs.rendercv.com/user_guide/how_to/use_the_ai_agent_skill/) for full details.

After installing, you can prompt your agent:

- "Add a new job entry at Acme Corp as Staff Engineer from 2022 to present"
- "Switch the theme to engineeringresumes and change the color to dark blue"
- "Translate my CV to Italian"
- "Render the CV and show me the output"

---

## GitHub Actions (Auto-Render on Push)

The workflow at `.github/workflows/render.yml` automatically renders the resume whenever the YAML file changes on the `main` branch. The generated PDF and other output files are committed back to the repository.

**To enable this in your fork:**
1. Go to **Settings → Actions → General** in your GitHub repo
2. Under "Workflow permissions", select **"Read and write permissions"**
3. Save — the workflow will now be able to commit rendered output back to the repo

---

## References

- [RenderCV GitHub](https://github.com/rendercv/rendercv)
- [RenderCV Documentation](https://docs.rendercv.com)
- [RenderCV YAML Schema Reference](https://docs.rendercv.com/user_guide/yaml_input_structure/)
- [RenderCV Themes Gallery](https://docs.rendercv.com/user_guide/yaml_input_structure/design/)
- [RenderCV AI Skill](https://docs.rendercv.com/user_guide/how_to/use_the_ai_agent_skill/)
- [ATS Compatibility Report](https://docs.rendercv.com/ats_compatibility/)
