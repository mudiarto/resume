# CLAUDE.md — AI Agent Instructions for This Resume Repository

This file gives AI agents (Claude Code, Cursor, Copilot, etc.) the context they need to work
correctly with this repository. Read this before making any changes.

---

## What This Repository Is

A version-controlled resume built with [RenderCV](https://github.com/rendercv/rendercv).

- **Single source of truth:** `Leonardo_da_Vinci_CV.yaml` — all resume content AND design config live here
- **Generated output:** `rendercv_output/` — never edit files here directly; they are always overwritten by `rendercv render`
- **Rendering engine:** Typst (bundled inside the `rendercv` Python package — no separate install needed)

The owner's name in the YAML is a template placeholder. When customizing for the actual user, replace "Leonardo da Vinci" and all content throughout the YAML with the user's real information.

---

## RenderCV AI Skill

**Install the RenderCV skill before working on this repo.** The skill gives you full knowledge of
the YAML schema, all 6 themes, CLI commands, and Pydantic field types.

```bash
# For Claude Code
npx skills add rendercv/rendercv-skill -a claude-code

# Manual fallback
git clone https://github.com/rendercv/rendercv-skill.git
cp -r rendercv-skill/skills/rendercv ~/.claude/skills/
```

The skill is auto-generated from RenderCV's source code and validated against its Pydantic pipeline,
so it is always accurate for the installed version.

---

## Key Files

| File | Purpose | Edit? |
|------|---------|-------|
| `Leonardo_da_Vinci_CV.yaml` | All resume content and design | ✅ Yes — primary file |
| `rendercv_output/` | Generated PDF, HTML, MD, PNG | ❌ No — auto-generated |
| `.github/workflows/render.yml` | GitHub Actions auto-render | Only if workflow changes needed |
| `README.md` | Human-facing setup docs | If adding features |
| `CLAUDE.md` | This file — agent instructions | If instructions need updating |

---

## YAML File Structure

The YAML has four top-level keys. Always validate structure before rendering.

```yaml
cv:          # All content (name, contact, sections)
design:      # Visual config (theme, font, colors, margins)
locale:      # Date/language formatting
settings:    # Output paths and render options
```

### Content (`cv`) — Key Fields

```yaml
cv:
  name: Full Name
  location: City, State/Country
  email: email@example.com
  phone: "+1-555-000-0000"
  website: https://example.com
  social_networks:
    - network: GitHub       # GitHub, LinkedIn, Twitter, Google Scholar, etc.
      username: handle

  summary: >
    Multi-line summary text here.

  sections:
    experience:             # List of experience entries
      - company: Company Name
        position: Job Title
        location: City, State
        start_date: 2020-01  # YYYY-MM or YYYY
        end_date: present    # or YYYY-MM
        highlights:
          - Bullet point one
          - Bullet point two

    education:              # List of education entries
      - institution: University Name
        area: Field of Study
        degree: BS / MS / PhD / etc.
        location: City, State
        start_date: 2016
        end_date: 2020
        highlights:
          - Optional highlight

    skills:                 # One-line skill entries
      - label: Category
        details: Skill 1, Skill 2, Skill 3

    publications:           # Academic publications
      - title: Paper Title
        authors:
          - First Last
        date: 2023
        journal: Journal Name
        doi: 10.xxxx/xxxxx

    projects:               # Project entries
      - name: Project Name
        date: "2023"        # or start_date/end_date
        highlights:
          - Description

    awards:                 # Short one-line entries
      - label: Award Name
        details: Awarding body, year
```

### Design (`design`) — Available Themes

Built-in themes (set `design.theme` to one of):

- `classic` — clean, traditional, good for most industries
- `engineeringresumes` — modern, ATS-optimized for engineers
- `moderncv` — inspired by the LaTeX moderncv package
- `sb2nov` — single-column, compact
- `toasterthesis` — academic, thesis-style
- `plain` — minimal, no decorations

```yaml
design:
  theme: classic           # Change this to switch themes
  font_family: Source Serif 4
  font_size: 10pt          # 9pt, 10pt, 11pt, 12pt
  page_size: us-letter     # or a4
  color: "#4a6fa5"         # Hex color for accent elements
```

---

## Common Agent Tasks

### Render the resume

```bash
rendercv render Leonardo_da_Vinci_CV.yaml
```

Always render after making changes to verify the YAML is valid. RenderCV will report
exact field and line errors if the YAML fails Pydantic validation.

### Watch mode (continuous re-render on save)

```bash
rendercv render --watch Leonardo_da_Vinci_CV.yaml
```

### Create a fresh template (for reference only)

```bash
rendercv new "Full Name"
# Creates Full_Name_CV.yaml with all fields documented
```

### Override design without editing YAML (for quick comparisons)

```bash
rendercv render Leonardo_da_Vinci_CV.yaml --design.theme engineeringresumes
rendercv render Leonardo_da_Vinci_CV.yaml --design.color "#c0392b"
rendercv render Leonardo_da_Vinci_CV.yaml --design.font_size 11pt
```

---

## Constraints and Rules

**Do not:**
- Edit files in `rendercv_output/` — they are overwritten on every render
- Add non-standard top-level YAML keys (Pydantic will reject them)
- Use unsupported date formats — use `YYYY-MM`, `YYYY`, or `present`
- Break the `$schema` reference at the top of the YAML (it enables IDE validation)

**Do:**
- Always render after edits to confirm validity before committing
- Keep bullet points in `highlights` concise — 1–2 lines each
- Use Markdown in highlight text for *italics*, **bold**, and [links](https://example.com)
- Commit `rendercv_output/` files so the PDF is accessible directly from GitHub

**When in doubt about schema:** Check the `$schema` URL at the top of the YAML file, or consult
the [YAML Input Structure docs](https://docs.rendercv.com/user_guide/yaml_input_structure/).

---

## Workflow for Updating Resume Content

1. Open `Leonardo_da_Vinci_CV.yaml`
2. Make content edits in the `cv.sections` block
3. Run `rendercv render Leonardo_da_Vinci_CV.yaml`
4. Check the PDF in `rendercv_output/`
5. If validation errors occur, fix the YAML and re-render
6. Commit both the YAML and `rendercv_output/` together

---

## Workflow for Changing Design

1. Try theme overrides from the CLI first (non-destructive):
   ```bash
   rendercv render Leonardo_da_Vinci_CV.yaml --design.theme engineeringresumes
   ```
2. Once satisfied, update `design.theme` in the YAML permanently
3. Adjust `design.color`, `design.font_family`, `design.margins` as needed
4. Render and commit

---

## GitHub Actions

The workflow at `.github/workflows/render.yml` runs `rendercv render` on every push to `main`
that touches the YAML file. It commits rendered output back to the repo automatically.

Required repo setting: **Settings → Actions → General → Workflow permissions → Read and write permissions**

---

## References

- [RenderCV Docs](https://docs.rendercv.com)
- [YAML Input Structure](https://docs.rendercv.com/user_guide/yaml_input_structure/)
- [CLI Reference](https://docs.rendercv.com/user_guide/cli_reference/)
- [AI Skill Docs](https://docs.rendercv.com/user_guide/how_to/use_the_ai_agent_skill/)
- [RenderCV GitHub](https://github.com/rendercv/rendercv)
