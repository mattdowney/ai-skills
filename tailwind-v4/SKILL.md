---
name: tailwind-v4
description: Tailwind CSS v4 patterns - CSS-first configuration, @theme blocks, OKLCH colors, variable fonts, custom utilities. Use when styling components, setting up themes, or working with Tailwind v4 projects.
---

# Tailwind CSS v4

## Overview

Tailwind v4 uses CSS-first configuration instead of JavaScript config files. The `@theme` block in CSS replaces `tailwind.config.js` for most use cases.

**Key files:**
- `app/globals.css` - Theme definition, custom utilities, base styles
- `tailwind.config.ts` - Only needed for complex config (most projects don't need it)

**When to use this skill:**
- Setting up a new Tailwind v4 project
- Adding custom theme tokens (colors, spacing, typography)
- Creating custom utilities
- Working with variable fonts
- Implementing dark mode

---

## CSS-First Configuration

### The @theme Block

Define design tokens directly in CSS:

```css
@import "tailwindcss";

@theme {
  /* Spacing base unit */
  --spacing: 0.25rem;

  /* Container width */
  --container: 60rem;

  /* Colors become utilities: bg-brand, text-brand, etc. */
  --color-brand: oklch(0.6 0.2 250);

  /* Font sizes with paired line-heights */
  --text-sm: 0.875rem;
  --text-sm--line-height: 1.4;

  /* Font families */
  --font-sans: 'Inter', system-ui, sans-serif;
}
```

**Token naming conventions:**
- `--color-*` → color utilities (bg-*, text-*, border-*)
- `--text-*` → font-size utilities with optional `--line-height` pairing
- `--font-*` → font-family utilities
- `--spacing` → base spacing multiplier
- `--radius-*` → border-radius utilities
- `--container` → max-width for container

### What Goes Where

| Configuration | Location |
|--------------|----------|
| Design tokens | `@theme` block in CSS |
| Custom utilities | `@utility` in CSS |
| Base styles | `@layer base` in CSS |
| Component classes | `@layer components` in CSS |
| Plugins | `@plugin` directive in CSS |
| Content paths | Usually auto-detected |

---

## Color System

### OKLCH Colors

OKLCH provides perceptually uniform colors - better for dark mode and color variations.

```css
:root {
  /* OKLCH: lightness (0-1), chroma (0-0.4), hue (0-360) */
  --background: oklch(0.15 0.005 240);      /* Dark blue-gray */
  --foreground: oklch(0.89 0.01 66);        /* Warm off-white */
  --accent: oklch(0.52 0.27 264);           /* Vibrant blue */
  --destructive: oklch(0.64 0.24 27);       /* Red */
  --success: oklch(0.76 0.23 146);          /* Green */
  --warning: oklch(0.88 0.18 92);           /* Yellow */
}

@theme {
  --color-background: var(--background);
  --color-foreground: var(--foreground);
  --color-accent: var(--accent);
}
```

**Why OKLCH over HSL?**
- Perceptually uniform: same lightness looks equally bright across hues
- Better for generating color scales programmatically
- Wider gamut support for modern displays

### Alpha Variants

Use OKLCH with alpha for transparency:

```css
--muted: oklch(0.89 0.01 66 / 10%);           /* 10% opacity */
--muted-foreground: oklch(0.89 0.01 66 / 65%); /* 65% opacity */
```

### Dark Mode

Use class-based dark mode with CSS variables:

```css
:root {
  --background: oklch(0.98 0.005 240);  /* Light */
  --foreground: oklch(0.15 0.01 240);   /* Dark text */
}

.dark {
  --background: oklch(0.15 0.005 240);  /* Dark */
  --foreground: oklch(0.89 0.01 66);    /* Light text */
}
```

With next-themes:
```tsx
<ThemeProvider attribute="class" defaultTheme="dark">
```

---

## Typography System

### Font Size Scale with Line Heights

Pair font sizes with line heights in the theme:

```css
@theme {
  /* Define line-height values as variables */
  --leading-tight: 1.22;
  --leading-excerpt: 1.45;
  --leading-content: 1.66;
  --leading-reading: 2.0;

  /* Font sizes with paired line-heights */
  --text-xs: 0.8125rem;     /* 13px */
  --text-xs--line-height: var(--leading-tight);

  --text-sm: 0.875rem;      /* 14px */
  --text-sm--line-height: var(--leading-tight);

  --text-base: 1rem;        /* 16px */
  --text-base--line-height: var(--leading-reading);

  --text-lg: 1.125rem;      /* 18px */
  --text-lg--line-height: var(--leading-content);

  --text-xl: 1.25rem;       /* 20px */
  --text-xl--line-height: var(--leading-excerpt);

  --text-2xl: 1.75rem;      /* 28px */
  --text-2xl--line-height: var(--leading-tight);
}
```

### Custom Line Height Utilities

Create semantic line-height utilities:

```css
@utility leading-tight {
  line-height: var(--leading-tight);
}

@utility leading-excerpt {
  line-height: var(--leading-excerpt);
}

@utility leading-content {
  line-height: var(--leading-content);
}

@utility leading-reading {
  line-height: var(--leading-reading);
}
```

Usage: `<p class="text-base leading-reading">Long-form content</p>`

### Letter Spacing

```css
@theme {
  --tracking-standard: 0.01em;
  --tracking-wide: 0.08em;
}

@utility tracking-standard {
  letter-spacing: var(--tracking-standard);
}

@utility tracking-wide {
  letter-spacing: var(--tracking-wide);
}
```

---

## Variable Fonts

### Custom Font Axes

Variable fonts can have custom axes beyond weight/width. Define utilities to control them:

```css
@font-face {
  font-family: 'SeasonVF';
  src: url('/fonts/Seasons-Mix-VF.woff2') format('woff2');
  font-weight: 300 900;
  font-stretch: 75% 125%;
  font-style: normal;
  font-display: swap;
}

@theme {
  --font-sans: 'SeasonVF', system-ui, sans-serif;
  --font-serif: 'SeasonVF', Georgia, serif;
  --font-mix: 'SeasonVF', system-ui, sans-serif;
}

/* Utilities that set both family AND axis values */
@utility font-sans {
  font-family: var(--font-sans);
  font-variation-settings: "SERF" 0;      /* Full sans-serif */
}

@utility font-serif {
  font-family: var(--font-serif);
  font-variation-settings: "SERF" 100;    /* Full serif */
}

@utility font-mix {
  font-family: var(--font-mix);
  font-variation-settings: "SERF" 50;     /* Hybrid */
}
```

**Common custom axes:**
- `SERF` - Serif degree (sans ↔ serif blend)
- `wght` - Weight (standard)
- `wdth` - Width (standard)
- `slnt` - Slant
- `CASL` - Casual
- `MONO` - Monospace degree

---

## Custom Utilities

### @utility Syntax

Create custom utilities that work with Tailwind's variant system:

```css
@utility container-standard {
  max-width: var(--container);
  margin-inline: auto;
  padding-inline: 1rem;
}

/* With media queries */
@utility container-standard {
  max-width: var(--container);
  margin-inline: auto;
  padding-inline: 1rem;

  @media (min-width: 768px) {
    padding-inline: 0;
  }
}
```

### Composite Utilities

Combine multiple properties:

```css
@utility small {
  font-size: var(--text-xs);
  font-weight: 500;
  line-height: var(--leading-content);
  letter-spacing: var(--tracking-wide);
}
```

---

## Base Styles

### Typography Defaults

Set sensible defaults in `@layer base`:

```css
@layer base {
  body {
    background-color: var(--background);
    color: var(--foreground);
    font-family: var(--font-sans);
    font-size: var(--text-base);
    line-height: var(--leading-reading);
    letter-spacing: var(--tracking-standard);
  }

  h1 {
    font-family: var(--font-mix);
    font-size: var(--text-2xl);
    font-weight: 500;
    line-height: var(--leading-tight);
    font-variation-settings: "SERF" 50;
  }

  h2 {
    font-size: var(--text-xl);
    font-weight: 500;
    line-height: var(--leading-excerpt);
  }

  p {
    color: var(--muted-foreground);
    line-height: var(--leading-content);
  }

  button {
    font-size: var(--text-xs);
    font-weight: 800;
    letter-spacing: var(--tracking-wide);
    text-transform: uppercase;
    cursor: pointer;
  }
}
```

---

## Component Layer

### Reusable Component Classes

For styles used across multiple components:

```css
@layer components {
  .button {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    height: 2.125rem;
    padding-inline: 1rem;
    border-radius: var(--radius-lg);
    background-color: var(--foreground);
    color: var(--background);
    font-size: var(--text-xs);
    font-weight: 800;
    text-transform: uppercase;
    letter-spacing: var(--tracking-wide);
    transition: opacity 150ms, transform 150ms;
  }

  .button:hover {
    opacity: 0.8;
  }

  .button:active {
    scale: 0.98;
  }
}
```

**Prefer Tailwind utilities** for one-off styles. Use `@layer components` for:
- Styles applied to multiple elements
- Complex hover/focus states
- Keyframe animations with multiple properties

---

## Animations

### Keyframes in CSS

Define keyframes alongside your theme:

```css
@keyframes fade-in {
  from { opacity: 0; }
  to { opacity: 1; }
}

@keyframes slide-up {
  from {
    opacity: 0;
    transform: translateY(8px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

@keyframes pulse {
  0%, 100% {
    transform: scale(1);
    opacity: 1;
  }
  50% {
    transform: scale(1.05);
    opacity: 0.85;
  }
}
```

Use with Tailwind's arbitrary values:
```html
<div class="animate-[fade-in_200ms_ease-out]">
```

Or define as theme tokens:
```css
@theme {
  --animate-fade-in: fade-in 200ms ease-out;
  --animate-slide-up: slide-up 300ms ease-out;
}
```

### Animation Package for shadcn/ui

Use `tw-animate-css` (NOT `tailwindcss-animate` which is deprecated for v4):

```bash
pnpm add -D tw-animate-css
```

```css
@import "tailwindcss";
@import "tw-animate-css";
```

---

## Plugins

### @plugin Directive

Tailwind v4 uses the `@plugin` CSS directive instead of config files:

```css
@import "tailwindcss";
@plugin "@tailwindcss/typography";
@plugin "@tailwindcss/forms";
```

### Typography Plugin

For styling Markdown/CMS content:

```bash
pnpm add -D @tailwindcss/typography
```

```css
@plugin "@tailwindcss/typography";
```

```html
<article class="prose lg:prose-xl dark:prose-invert">
  {{ markdown_content }}
</article>
```

### Forms Plugin

For consistent cross-browser form styling:

```bash
pnpm add -D @tailwindcss/forms
```

```css
@plugin "@tailwindcss/forms";
```

### Built-in Features (No Plugin Needed)

**Container queries** are built into Tailwind v4 core:

```tsx
<div className="@container">
  <div className="@md:text-lg">
    Responds to container width, not viewport
  </div>
</div>
```

### Common Plugin Errors

```css
/* WRONG - v3 config file syntax */
module.exports = {
  plugins: [require('@tailwindcss/typography')]
}

/* WRONG - @import instead of @plugin */
@import "@tailwindcss/typography";

/* CORRECT - v4 @plugin directive */
@plugin "@tailwindcss/typography";
```

---

## Integration with shadcn/ui

### Import Order

```css
@import "tailwindcss";
@import "tw-animate-css";      /* Animation utilities (NOT tailwindcss-animate) */

@theme {
  /* Your custom tokens */
}
```

### Extending shadcn Colors

shadcn uses CSS variables. Map them to Tailwind:

```css
@theme {
  --color-background: var(--background);
  --color-foreground: var(--foreground);
  --color-primary: var(--primary);
  --color-primary-foreground: var(--primary-foreground);
  --color-muted: var(--muted);
  --color-muted-foreground: var(--muted-foreground);
  --color-accent: var(--accent);
  --color-destructive: var(--destructive);
}
```

### shadcn Configuration

For `components.json`, set empty config for v4:

```json
{
  "tailwind": {
    "config": "",
    "css": "src/globals.css",
    "cssVariables": true
  }
}
```

---

## Common Patterns

### Responsive Container

```css
@utility container-standard {
  max-width: var(--container);
  margin-inline: auto;
  padding-inline: 1rem;
}

@media (min-width: 768px) {
  .container-standard {
    padding-inline: 0;
  }
}
```

### Semantic Color Usage

```html
<!-- Backgrounds -->
<div class="bg-background">       <!-- Main background -->
<div class="bg-card">             <!-- Elevated surface -->
<div class="bg-muted">            <!-- Subtle background -->

<!-- Text -->
<p class="text-foreground">       <!-- Primary text -->
<p class="text-muted-foreground"> <!-- Secondary text -->
<p class="text-accent">           <!-- Emphasis -->

<!-- Borders -->
<div class="border-border">       <!-- Standard border -->
<div class="border-input">        <!-- Form input border -->
```

### Button Variants Pattern

```tsx
// Using CVA (class-variance-authority)
const buttonVariants = cva(
  "inline-flex items-center justify-center text-xs font-extrabold uppercase tracking-wide transition-all",
  {
    variants: {
      variant: {
        default: "bg-foreground text-background hover:opacity-80",
        outline: "border border-foreground bg-transparent hover:bg-foreground/10",
        ghost: "hover:bg-foreground/10",
        destructive: "bg-destructive text-destructive-foreground hover:bg-destructive/90",
      },
      size: {
        default: "h-9 px-4",
        sm: "h-8 px-3",
        lg: "h-10 px-6",
        icon: "h-9 w-9",
      },
    },
    defaultVariants: {
      variant: "default",
      size: "default",
    },
  }
);
```

---

## Critical Rules

### Never Do

1. **Put `:root` or `.dark` inside `@layer base`**
   ```css
   /* WRONG */
   @layer base {
     :root { --background: oklch(...); }
   }
   ```

2. **Double-wrap colors**
   ```css
   /* WRONG */
   body {
     background-color: hsl(var(--background));
   }

   /* CORRECT */
   body {
     background-color: var(--background);
   }
   ```

3. **Use `@apply` directive** (deprecated in v4)

4. **Use `tailwind.config.ts` for theme colors** (use `@theme` block instead)

5. **Use `dark:` variants for semantic colors**
   ```tsx
   /* WRONG - unnecessary with CSS variables */
   <div className="bg-primary dark:bg-primary-dark" />

   /* CORRECT - theme switches automatically */
   <div className="bg-primary" />
   ```

6. **Use deprecated animation package**
   ```bash
   # WRONG
   npm install tailwindcss-animate

   # CORRECT
   npm install tw-animate-css
   ```

---

## Debugging

### Common Issues & Fixes

| Symptom | Cause | Fix |
|---------|-------|-----|
| `bg-primary` doesn't work | Missing `@theme` mapping | Add `--color-primary: var(--primary)` to `@theme` |
| Colors all black/white | Double-wrapping colors | Use `var(--color)` not `hsl(var(--color))` |
| Dark mode not switching | Missing ThemeProvider | Wrap app in `<ThemeProvider>` |
| Utility not working | Wrong token naming | Check `@theme` naming conventions |
| Animation errors | Wrong package | Use `tw-animate-css` not `tailwindcss-animate` |
| Plugin not loading | Wrong syntax | Use `@plugin` not `@import` for plugins |

### Inspect Compiled CSS

Tailwind v4 compiles to standard CSS. Check the output:

```bash
# In browser DevTools, inspect element
# CSS variables resolve to their values
# Custom utilities appear as regular classes
```

### Font Issues

**Font not loading:**
- Verify `@font-face` path
- Check `font-display: swap` for FOUT handling
- Ensure variable font range covers needed weights

---

## Setup Checklist

- [ ] CSS file has `@import "tailwindcss"` at top
- [ ] `:root` and `.dark` defined at root level (NOT inside `@layer base`)
- [ ] `@theme` block maps CSS variables to Tailwind utilities
- [ ] `@layer base` uses unwrapped variables: `var(--color)` not `hsl(var(--color))`
- [ ] Using `tw-animate-css` (NOT `tailwindcss-animate`)
- [ ] Plugins use `@plugin` directive (NOT config file)
- [ ] `components.json` has `"config": ""` for shadcn/ui
- [ ] ThemeProvider wrapping app for dark mode
