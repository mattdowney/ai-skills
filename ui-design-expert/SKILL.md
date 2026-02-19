---
name: ui-design-expert
description: Provides expert UI/UX design guidance and implementation for Next.js projects using Tailwind CSS, Shadcn UI, and other component libraries. Covers accessibility, responsive design, state management, and complete component implementations. Use before building new UI, refining existing UI, or when user asks design questions.
---

# UI Design Expert

## Overview

This skill provides comprehensive UI/UX design guidance and implementation for Next.js projects using Tailwind CSS, Shadcn UI, and other component libraries. Works universally across projects but adapts to detected context (PRD, existing patterns, project structure).

**What it delivers:**
- Bold, distinctive visual design that avoids generic "AI slop"
- Design rationale and decisions
- Accessibility considerations (WCAG 2.1 AA)
- Responsive layouts (mobile-first)
- Component implementations (React/TypeScript)
- Complete state handling (loading, error, empty, success)
- Component library selection and customization

**Key behavior:** Hybrid interaction style - asks clarifying questions only when requirements are ambiguous, otherwise provides expert guidance immediately. For complex work, offers brainstorming skill first.

## Design Philosophy: Avoid AI Slop

Before any implementation, commit to a **BOLD aesthetic direction**. Generic AI-generated interfaces are forgettable. Distinctive design is memorable.

**NEVER default to:**
- Overused fonts (Inter, Roboto, Arial, system fonts)
- Clichéd color schemes (purple gradients on white)
- Predictable layouts and cookie-cutter patterns
- Safe, middle-of-the-road choices

**ALWAYS consider:**
- **Aesthetic tone**: Pick a direction and commit - brutally minimal, maximalist, retro-futuristic, organic/natural, luxury/refined, playful, editorial/magazine, brutalist/raw, art deco/geometric, soft/pastel, industrial/utilitarian
- **Typography**: Choose fonts that are beautiful and distinctive. Pair a characterful display font with a refined body font
- **Color commitment**: Dominant colors with sharp accents outperform timid, evenly-distributed palettes. Use CSS variables for consistency
- **Motion with purpose**: One well-orchestrated page load with staggered reveals creates more delight than scattered micro-interactions. Focus on high-impact moments
- **Spatial composition**: Asymmetry, overlap, diagonal flow, grid-breaking elements. Generous negative space OR controlled density - not tepid middle ground
- **Atmospheric details**: Gradient meshes, noise textures, geometric patterns, layered transparencies, dramatic shadows, decorative borders, grain overlays

**Match complexity to vision**: Maximalist designs need elaborate animations and effects. Minimalist designs need restraint, precision, and careful attention to spacing and subtle details. Elegance comes from executing the vision well, not hedging.

**The test**: What's the one thing someone will remember about this interface?

## When to Use This Skill

**Auto-trigger in these scenarios:**
- Before building new UI features
- When refining or redesigning existing UI
- When implementing component libraries
- When working on user flows or wizards
- When user explicitly asks UI/design questions

**Complexity triggers for brainstorming:**
- Multi-step flows (wizards, onboarding, checkout)
- Feature-level changes (new features even if single page)
- Novel patterns (not in codebase or standard component libraries)

## Workflow

Follow this systematic workflow for all UI tasks:

```
UI Design Expert Workflow:
- [ ] Phase 1: Context Analysis
- [ ] Phase 2: Complexity Check & Brainstorming Offer
- [ ] Phase 3: Design Planning
- [ ] Phase 4: State Coverage
- [ ] Phase 5: Implementation
- [ ] Phase 6: Verification Checklist (TodoWrite)
```

### Phase 1: Context Analysis

**Gather project context:**
- Check for PRD or requirements documents
- Review existing component patterns in `components/`
- Check `tailwind.config.ts` for custom theme
- Verify Shadcn UI setup and installed components
- Identify similar existing implementations

**Understand the requirement:**
- Parse user request to extract UI type (component/page/flow)
- Identify constraints (technical, design system, timeline)
- Note explicit requirements (accessibility, responsive, performance)

**Output:** Context summary
```
Context Summary:
- Project: [name] - [detected stack]
- Existing patterns: [list relevant patterns found]
- UI type: [component/page/flow]
- Requirements: [bulleted list]
- Constraints: [bulleted list]
```

### Phase 2: Complexity Check & Brainstorming Offer

**Assess complexity:**
```
Complex IF:
- Multi-step flow (3+ steps, wizard pattern, onboarding)
- Feature-level change (meetings, campaigns, dashboard sections)
- Novel pattern (not in codebase, not standard in Shadcn/Radix/etc.)

Simple IF:
- Single component modification
- Styling adjustments
- Standard patterns (forms, cards, lists)
```

**If complex:**
Ask user: "This looks like a complex [flow/feature]. Would you like to use the brainstorming skill to refine the design first?"

- If yes: Invoke `superpowers:brainstorming`, wait for completion, resume at Phase 3
- If no: Continue with expert guidance

**If simple:** Continue to Phase 3

### Phase 3: Design Planning

Generate comprehensive design plan covering:

**Component/Library Selection:**
1. Check if Shadcn UI has suitable component
2. If yes: Note which Shadcn component(s) to use
3. If no: Suggest alternatives (Radix UI, HeadlessUI, custom)
4. Document reasoning for selections

**Layout Strategy:**
- Grid vs Flexbox decision and reasoning
- Responsive breakpoints (mobile, tablet, desktop)
- Spacing scale (Tailwind spacing tokens)
- Container max-widths and padding

**State Management:**
- Local state (useState) vs Context vs TanStack Query
- Form state (React Hook Form + Zod validation)
- Loading/error state approach

**Accessibility Requirements:**
- Required ARIA attributes
- Keyboard navigation pattern
- Focus management strategy
- Screen reader announcements

**Output:** Design rationale (2-4 paragraphs)
```
Design Rationale:

[Component Selection]
Using Shadcn's Dialog component for the modal with custom
Card components for content. This provides accessible modal
behavior out of the box (focus trap, ESC to close, ARIA).

[Layout Approach]
Flexbox for the form layout with responsive stacking at
mobile breakpoints. Using Tailwind's space-y utilities for
consistent vertical rhythm.

[State & Validation]
React Hook Form with Zod schema for type-safe validation.
TanStack Query for async submission with optimistic updates.

[Accessibility]
Form labels associated with inputs, error messages announced
via aria-describedby, submit button disabled during loading
with visual feedback.
```

### Phase 4: State Coverage

For each relevant state, design and note implementation:

**Loading State:**
- Component: Skeleton or Spinner
- Trigger: Data fetching, form submission
- UX: Progressive disclosure, maintain layout stability
- Tailwind: `animate-pulse`, `animate-spin`

**Error State:**
- Component: Alert or inline error message
- Trigger: API failures, validation errors
- UX: Clear error message, actionable recovery (retry button)
- Tailwind: `text-destructive`, `border-destructive`

**Empty State:**
- Component: Empty state illustration or message
- Trigger: Zero data, no results, first-time use
- UX: Explain why empty, suggest action
- Tailwind: `text-muted-foreground`, centered layout

**Success State:**
- Component: Toast notification or inline confirmation
- Trigger: Successful submission, action completion
- UX: Brief confirmation, auto-dismiss or manual close
- Tailwind: `bg-green-50`, `text-green-900`

**Output:** State coverage plan
```
State Coverage:
✓ Loading: Skeleton cards during fetch
✓ Error: Alert component with retry button
✓ Empty: "No meetings yet" with "Create Meeting" CTA
✓ Success: Toast notification "Meeting created"
```

### Phase 5: Implementation

Generate and write implementation files:

**1. Generate component code:**
- React functional component with TypeScript
- Props interface with clear types
- Shadcn/library component integration
- Tailwind utility classes (responsive, accessible)
- All state handlers implemented

**2. File organization:**
```
components/
  ui/              # Shadcn components (auto-generated)
  shared/          # Shared components across features
  [feature]/       # Feature-specific components
    ComponentName.tsx
    ComponentName.test.tsx (if TDD)
```

**3. Implementation checklist:**
- [ ] Component file created in correct location
- [ ] TypeScript types defined
- [ ] Shadcn components integrated
- [ ] Tailwind responsive classes applied
- [ ] All states implemented (loading, error, empty, success)
- [ ] Accessibility attributes added (ARIA, keyboard nav)
- [ ] Props documented with JSDoc if public API

**4. Write files directly:**
Use Write tool to create component files. No need for approval - write immediately after design phase completes.

### Phase 6: Verification Checklist

Create TodoWrite checklist for manual verification:

```typescript
TodoWrite:
[
  "Test keyboard navigation (Tab, Enter, Escape)",
  "Verify screen reader announces correctly",
  "Test all breakpoints (mobile, tablet, desktop)",
  "Verify all states render (loading, error, empty, success)",
  "Check color contrast ratios (4.5:1 minimum)",
  "Test with actual data and edge cases",
  "Verify focus indicators visible",
  "Test touch targets on mobile (44x44px)"
]
```

## Core Principles

### Accessibility (WCAG 2.1 AA)

**Semantic HTML:**
- Use correct elements: `<button>`, `<nav>`, `<main>`, `<article>`
- Avoid `<div>` for interactive elements

**ARIA Attributes:**
- `aria-label` for icon-only buttons
- `aria-describedby` for error messages
- `aria-live` for dynamic content announcements
- `role` attributes when semantic HTML insufficient

**Keyboard Navigation:**
- All interactive elements reachable via Tab
- Enter/Space activate buttons
- Escape closes modals/dropdowns
- Arrow keys for lists/menus

**Focus Management:**
- Visible focus indicators (ring-2, ring-offset-2)
- Focus trapped in modals
- Focus restored after modal close
- Skip-to-content links

**Color Contrast:**
- Text: 4.5:1 minimum (WCAG AA)
- Large text (18pt+): 3:1 minimum
- Interactive elements: 3:1 minimum
- Use Tailwind colors that meet ratios

### Responsive Design (Mobile-First)

**Breakpoints (Tailwind):**
```
sm:  640px  (tablet)
md:  768px  (small laptop)
lg:  1024px (laptop)
xl:  1280px (desktop)
2xl: 1536px (large desktop)
```

**Approach:**
1. Design for mobile first (320px baseline)
2. Add `sm:` variants for tablet adjustments
3. Add `md:` and up for desktop enhancements

**Layout Patterns:**
- Stack vertically on mobile: `flex flex-col`
- Side-by-side on desktop: `md:flex-row`
- Grid columns: `grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3`

**Touch Targets:**
- Minimum 44x44px on mobile
- Use `p-3` or `p-4` for touch-friendly buttons
- Adequate spacing between interactive elements

**Typography:**
- Base: `text-base` (16px)
- Scale up on desktop: `md:text-lg`
- Line height: `leading-relaxed` for readability

### Performance

**Code Splitting:**
- Use dynamic imports for large components
- Lazy load routes and modals
- Bundle by feature, not by type

**Image Optimization:**
- Use Next.js `<Image>` component
- Specify width and height
- Lazy load below-fold images
- WebP with fallback

**Component Optimization:**
- Memoize expensive computations (useMemo)
- Memoize callbacks (useCallback)
- Avoid inline object/array creation in JSX
- Use React.memo for pure components

**Bundle Size:**
- Tree-shake unused Shadcn components
- Import only what's needed from libraries
- Check bundle with `npm run build`

### Design System Consistency

**Shadcn Variants:**
- Button: `default`, `destructive`, `outline`, `secondary`, `ghost`, `link`
- Use variants for semantic meaning
- Don't create custom variants without reason

**Spacing Scale (Tailwind):**
- Use spacing tokens: `space-y-4`, `gap-6`, `p-8`
- Consistent rhythm: 4, 6, 8, 12, 16, 24
- Avoid arbitrary values: `p-[13px]` ❌

**Size Utility (Tailwind 3.4+):**
- Use `size-*` for equal height and width dimensions
- Cleaner than redundant `h-* w-*`

```tsx
// ✅ Good - Use size-* for equal dimensions
<Button size="icon" className="size-10">
  <Icon className="size-4" />
</Button>

// ❌ Avoid - Redundant h-* and w-*
<Button size="icon" className="h-10 w-10">
  <Icon className="h-4 w-4" />
</Button>
```

**Color Palette:**
- Use Shadcn color tokens: `background`, `foreground`, `primary`, `secondary`, `muted`, `accent`, `destructive`
- Semantic naming: `text-destructive` not `text-red-500`
- Support dark mode via CSS variables

**Typography:**
- Headings: `text-3xl font-bold`, `text-2xl font-semibold`
- Body: `text-base`, `text-sm`, `text-xs`
- Muted text: `text-muted-foreground`
- Line height: `leading-tight` (headings), `leading-relaxed` (body)

## Component Library Selection

### Decision Tree

**Question 1: Does Shadcn UI have this component?**
- Check: https://ui.shadcn.com/docs/components
- If yes → Use Shadcn component
- If no → Question 2

**Question 2: Does Radix UI Primitives have this?**
- Check: https://www.radix-ui.com/primitives/docs/overview/introduction
- If yes → Use Radix primitive directly
- If no → Question 3

**Question 3: Is this a common pattern?**
- Check: HeadlessUI, Ariakit, React Aria
- If yes → Use appropriate library
- If no → Build custom component

### Component Discovery (MCP Tools)

If shadcn MCP server is available, use these tools to discover components:

**Search for components:**
```typescript
mcp__shadcn__search_items_in_registries({
  registries: ["@shadcn"],
  query: "dropdown menu"
})
```

**View component details:**
```typescript
mcp__shadcn__view_items_in_registries({
  items: ["@shadcn/button", "@shadcn/card"]
})
```

**Get installation command:**
```typescript
mcp__shadcn__get_add_command_for_items({
  items: ["@shadcn/dropdown-menu"]
})
// Returns: npx shadcn@latest add dropdown-menu
```

### When to Use Each

**Shadcn UI (first choice):**
- Pre-styled, accessible components
- Fully customizable with Tailwind
- Owned code (copied into project)
- Use for: Button, Card, Dialog, Form, Input, Select, etc.

**Radix UI (when Shadcn insufficient):**
- Unstyled primitives
- Complex interactions (Dropdown, Popover, Tabs)
- Lower-level control needed
- Use for: Custom variants of Shadcn components

**HeadlessUI (Tailwind ecosystem):**
- Unstyled, accessible components
- Good TypeScript support
- Works well with Tailwind
- Use for: Transition, Disclosure, Menu

**Custom Components (last resort):**
- Unique business logic
- Novel interaction patterns
- No library equivalent
- Document accessibility implementation

### Installation Commands

**Add Shadcn component:**
```bash
npx shadcn@latest add [component-name]
```

**Common components:**
- `button`, `card`, `form`, `input`, `label`
- `dialog`, `dropdown-menu`, `select`
- `table`, `tabs`, `toast`
- `skeleton`, `alert`

## Common Patterns

### Forms

**Tech stack:**
- React Hook Form (state management)
- Zod (validation schema)
- Shadcn Form components (UI)

**Pattern:**
```typescript
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import * as z from "zod";

const schema = z.object({
  email: z.string().email(),
  password: z.string().min(8),
});

type FormValues = z.infer<typeof schema>;

export function LoginForm() {
  const form = useForm<FormValues>({
    resolver: zodResolver(schema),
  });

  const onSubmit = (data: FormValues) => {
    // Handle submission
  };

  return (
    <Form {...form}>
      <form onSubmit={form.handleSubmit(onSubmit)}>
        <FormField
          control={form.control}
          name="email"
          render={({ field }) => (
            <FormItem>
              <FormLabel>Email</FormLabel>
              <FormControl>
                <Input {...field} />
              </FormControl>
              <FormMessage />
            </FormItem>
          )}
        />
        {/* More fields */}
      </form>
    </Form>
  );
}
```

### Modals/Dialogs

**Use Shadcn Dialog:**
- Accessible by default (focus trap, ESC to close)
- Overlay and content separation
- Responsive sizing

**Pattern:**
```typescript
import { Dialog, DialogContent, DialogHeader, DialogTitle } from "@/components/ui/dialog";

<Dialog open={open} onOpenChange={setOpen}>
  <DialogContent className="sm:max-w-md">
    <DialogHeader>
      <DialogTitle>Modal Title</DialogTitle>
    </DialogHeader>
    {/* Content */}
  </DialogContent>
</Dialog>
```

### Data Tables

**Use Shadcn Table + TanStack Table:**
- Sorting, filtering, pagination
- Type-safe column definitions
- Responsive (horizontal scroll on mobile)

### Loading States

**Skeleton Pattern:**
```typescript
import { Skeleton } from "@/components/ui/skeleton";

{isLoading ? (
  <div className="space-y-4">
    <Skeleton className="h-12 w-full" />
    <Skeleton className="h-12 w-full" />
  </div>
) : (
  <ActualContent data={data} />
)}
```

**Spinner Pattern:**
```typescript
import { Loader2 } from "lucide-react";

<Button disabled={isLoading}>
  {isLoading && <Loader2 className="mr-2 size-4 animate-spin" />}
  Submit
</Button>
```

### Error Handling

**Use Alert component:**
```typescript
import { Alert, AlertDescription } from "@/components/ui/alert";
import { AlertCircle } from "lucide-react";

{error && (
  <Alert variant="destructive">
    <AlertCircle className="size-4" />
    <AlertDescription>
      {error.message}
    </AlertDescription>
  </Alert>
)}
```

### Empty States

**Pattern:**
```typescript
{data.length === 0 ? (
  <div className="flex flex-col items-center justify-center py-12 text-center">
    <div className="text-muted-foreground mb-4">
      <Calendar className="size-12 mx-auto mb-2" />
      <p className="text-lg font-medium">No meetings yet</p>
      <p className="text-sm">Get started by creating your first meeting</p>
    </div>
    <Button onClick={handleCreate}>Create Meeting</Button>
  </div>
) : (
  <MeetingList data={data} />
)}
```

### Compound Components

Build reusable compound components by composing Shadcn primitives:

```typescript
import { Card, CardHeader, CardTitle, CardContent } from "@/components/ui/card";
import { cn } from "@/lib/utils";

interface StatCardProps {
  title: string;
  value: string | number;
  description?: string;
  trend?: "up" | "down";
  className?: string;
}

export function StatCard({
  title,
  value,
  description,
  trend,
  className,
}: StatCardProps) {
  return (
    <Card className={cn("", className)}>
      <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
        <CardTitle className="text-sm font-medium">{title}</CardTitle>
        {trend && (
          <span
            className={cn(
              "text-xs",
              trend === "up" ? "text-green-500" : "text-red-500"
            )}
          >
            {trend === "up" ? "↑" : "↓"}
          </span>
        )}
      </CardHeader>
      <CardContent>
        <div className="text-2xl font-bold">{value}</div>
        {description && (
          <p className="text-xs text-muted-foreground">{description}</p>
        )}
      </CardContent>
    </Card>
  );
}
```

### Customizing Component Variants

Extend Shadcn components with CVA (class-variance-authority):

```typescript
// components/ui/button.tsx
const buttonVariants = cva(
  "inline-flex items-center justify-center rounded-md text-sm font-medium",
  {
    variants: {
      variant: {
        default: "bg-primary text-primary-foreground hover:bg-primary/90",
        destructive: "bg-destructive text-destructive-foreground hover:bg-destructive/90",
        outline: "border border-input bg-background hover:bg-accent",
        secondary: "bg-secondary text-secondary-foreground hover:bg-secondary/80",
        ghost: "hover:bg-accent hover:text-accent-foreground",
        link: "text-primary underline-offset-4 hover:underline",
        // Add custom variant
        success: "bg-green-500 text-white hover:bg-green-600",
      },
      size: {
        default: "h-10 px-4 py-2",
        sm: "h-9 rounded-md px-3",
        lg: "h-11 rounded-md px-8",
        icon: "size-10",
        // Add custom size
        xl: "h-14 rounded-md px-10 text-lg",
      },
    },
    defaultVariants: {
      variant: "default",
      size: "default",
    },
  }
);
```

## Testing Components

### Unit Testing Pattern

```typescript
// components/__tests__/button.test.tsx
import { render, screen } from "@testing-library/react";
import userEvent from "@testing-library/user-event";
import { Button } from "../ui/button";

describe("Button", () => {
  it("renders correctly", () => {
    render(<Button>Click me</Button>);
    expect(screen.getByText("Click me")).toBeInTheDocument();
  });

  it("applies variant styles", () => {
    render(<Button variant="destructive">Delete</Button>);
    const button = screen.getByText("Delete");
    expect(button).toHaveClass("bg-destructive");
  });

  it("handles click events", async () => {
    const handleClick = vi.fn();
    render(<Button onClick={handleClick}>Click me</Button>);

    await userEvent.click(screen.getByText("Click me"));
    expect(handleClick).toHaveBeenCalledOnce();
  });

  it("is disabled when loading", () => {
    render(<Button disabled>Loading...</Button>);
    expect(screen.getByText("Loading...")).toBeDisabled();
  });
});
```

### Accessibility Testing

```typescript
import { axe, toHaveNoViolations } from "jest-axe";

expect.extend(toHaveNoViolations);

it("has no accessibility violations", async () => {
  const { container } = render(
    <Button aria-label="Submit form">Submit</Button>
  );
  const results = await axe(container);
  expect(results).toHaveNoViolations();
});
```

## Troubleshooting

### Common Issues & Fixes

| Symptom | Cause | Fix |
|---------|-------|-----|
| Component not found | Not exported from index | Add export to `components/ui/index.ts` |
| Tailwind classes not applying | Wrong content paths | Check `tailwind.config.ts` content array |
| CSS variables not working | Missing globals import | Import `globals.css` in layout |
| TypeScript errors | Stale types | Run `pnpm build` and restart TS server |
| Styles conflict | Specificity issues | Use `cn()` utility to merge classes |
| Dark mode not working | Missing class on html | Ensure `<html class="dark">` or provider |

### Component Not Rendering

**Checklist:**
1. Component exported from `components/ui/index.ts`?
2. Import path correct?
3. Required props provided?
4. Parent has correct layout (flex, grid)?

### Styling Issues

**Checklist:**
1. `tailwind.config.ts` includes correct content paths?
2. CSS variables defined in `globals.css`?
3. Using `cn()` for conditional classes?
4. No conflicting styles from parent?

## Key Reminders

1. **Always check existing project patterns first** - Don't introduce new patterns if existing ones work
2. **Mobile-first responsive design** - Start with mobile, enhance for desktop
3. **All states must be handled** - Loading, error, empty, success
4. **Accessibility is non-negotiable** - Keyboard nav, ARIA, contrast ratios
5. **Use Shadcn first** - It's pre-configured and styled for the project
6. **Document reasoning** - Explain design decisions in comments or rationale
7. **Create verification TodoWrite** - Manual testing checklist after implementation
8. **Offer brainstorming for complex work** - Multi-step flows, features, novel patterns
9. **Use `size-*` utility** - For equal dimensions instead of `h-* w-*`
10. **Test components** - Unit tests for custom variants and interactions

## Quick Reference

**Starting a UI task:**
1. Check for brainstorming need → offer if complex
2. Analyze project context
3. Plan design (components, layout, accessibility)
4. Cover all states (loading, error, empty, success)
5. Implement and write files
6. Create TodoWrite verification checklist

**Component selection priority:**
1. Shadcn UI (if available)
2. Radix UI Primitives (if Shadcn insufficient)
3. HeadlessUI / React Aria (if needed)
4. Custom (last resort, document accessibility)

**Accessibility essentials:**
- Semantic HTML elements
- ARIA where needed
- Keyboard navigation
- Focus management
- Color contrast 4.5:1+
- Touch targets 44x44px+

**Responsive breakpoints:**
- Mobile: default (320px+)
- Tablet: sm: (640px+)
- Desktop: md: (768px+), lg: (1024px+)
