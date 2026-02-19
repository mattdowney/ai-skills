---
name: website-seo
description: Use when working on web projects (Next.js, React, HTML, Vue, etc.) to automatically optimize SEO. Covers technical SEO (meta tags, Open Graph, structured data, performance) and on-page SEO (URLs, images, internal linking). Proactively applies SEO best practices when creating or modifying web pages, components, or content.
---

# Website SEO Optimization

## Overview

This skill provides comprehensive SEO optimization for web projects. Apply these practices when creating new pages, modifying existing content, or conducting SEO audits. The skill covers technical SEO (meta tags, structured data, performance), on-page SEO (URLs, images, links), and ensures compliance with search engine best practices.

## When to Use This Skill

**Auto-trigger in these scenarios:**
- Creating new web pages or components
- Modifying page content or metadata
- Building landing pages or marketing pages
- Working on blog posts or articles
- Creating product pages
- Implementing image galleries or media content
- Refactoring site structure or URLs
- Conducting SEO audits or reviews

**Explicit usage:**
- User requests "optimize SEO"
- User asks about meta tags, structured data, or Open Graph
- User requests image optimization for web
- User asks for performance improvements

## Quick Start

When working on a web page, follow this workflow:

1. **Check existing SEO elements** - Review current implementation
2. **Identify gaps** - Compare against technical checklist
3. **Implement improvements** - Add missing elements or optimize existing ones
4. **Validate** - Test with appropriate tools
5. **Document changes** - Note what was optimized

## Core SEO Tasks

### 1. Meta Tags & Social Media

Generate or optimize HTML meta tags, Open Graph, and Twitter Cards.

**Reference:** Read `references/meta-tags.md` for:
- Complete meta tag specifications
- Open Graph best practices and image requirements
- Twitter Card implementation
- Framework-specific examples (Next.js, React, HTML)
- Testing tools and validation

**Essential elements to implement:**
- Title tag (50-60 characters, include primary keyword)
- Meta description (150-160 characters, compelling copy)
- Canonical URL (absolute URL)
- Open Graph tags (og:type, og:url, og:title, og:description, og:image)
- Twitter Card tags (twitter:card, twitter:title, twitter:description, twitter:image)
- Image specifications (1200×630px for og:image, 1200×628px for Twitter)

**Implementation approach:**
1. Read `references/meta-tags.md` for complete specifications
2. Identify the page type (website, article, product, etc.)
3. Select the appropriate meta tag template from the reference
4. Customize with page-specific content
5. Ensure all images use absolute URLs and meet size requirements
6. Validate with official testing tools (links in reference)

### 2. Structured Data (JSON-LD)

Implement schema.org structured data using JSON-LD format.

**Reference:** Read `references/json-ld-schemas.md` for:
- Complete schema templates for all common content types
- Organization, Article, Product, Person, Event schemas
- Breadcrumb, FAQ, HowTo, Video schemas
- Multiple schema implementation patterns
- Testing and validation guidance

**Common schema types:**
- **Organization** - Homepage, about page (company information)
- **WebSite** - Homepage (site-wide search box)
- **Article/BlogPosting** - Blog posts, news articles
- **Product** - Product pages (with pricing, reviews, availability)
- **Person** - Author pages, team member profiles
- **Breadcrumb** - All non-homepage pages (navigation hierarchy)
- **FAQ** - FAQ sections (questions and answers)
- **HowTo** - Tutorial content (step-by-step instructions)
- **VideoObject** - Video content

**Implementation approach:**
1. Read `references/json-ld-schemas.md` for template
2. Determine which schema type(s) apply to the page
3. Copy the appropriate template from the reference
4. Customize with accurate page data
5. Use ISO 8601 format for dates (YYYY-MM-DDTHH:MM:SS+00:00)
6. Ensure all URLs are absolute (not relative)
7. Include multiple schemas when appropriate (e.g., Organization + WebSite on homepage)
8. Validate with Google Rich Results Test

### 3. Image Optimization

Optimize images for SEO, performance, and accessibility.

**Reference:** Read `references/image-seo.md` for:
- Alt text writing guidelines with examples
- File naming best practices
- Image format selection (JPEG, PNG, WebP, SVG, AVIF)
- Compression recommendations
- Responsive images implementation (srcset, sizes, picture element)
- Lazy loading strategies
- Framework-specific implementations

**Key optimization tasks:**
1. **Write descriptive alt text** (under 125 characters, specific, natural language)
2. **Use descriptive filenames** (hyphens, lowercase, keywords: `golden-retriever-playing-fetch.jpg`)
3. **Choose appropriate format** (WebP for modern browsers with JPEG fallback)
4. **Compress images** (80-85% JPEG quality, optimize PNGs)
5. **Serve properly sized images** (match display size, use srcset for responsive)
6. **Implement lazy loading** (for below-fold images only)
7. **Add width and height** (prevent Cumulative Layout Shift)
8. **Use modern formats with fallbacks** (WebP/AVIF with JPEG/PNG fallback)

**Implementation approach:**
1. Read `references/image-seo.md` for complete guidance
2. Audit all images on the page
3. Write meaningful alt text for each image (refer to examples in reference)
4. Ensure filenames are descriptive (rename if needed)
5. Implement responsive images with srcset/sizes or picture element
6. Add loading="lazy" to below-fold images
7. Specify width and height attributes to prevent CLS
8. Test with PageSpeed Insights for optimization suggestions

### 4. Technical SEO Audit

Conduct comprehensive technical SEO audit using the checklist.

**Reference:** Read `references/technical-checklist.md` for:
- Page-level SEO checklist (title, meta, headings, URLs, images)
- Site-wide SEO checklist (robots.txt, sitemap, HTTPS, redirects)
- Core Web Vitals requirements (LCP, FID/INP, CLS)
- Performance optimization checklist
- Testing tools and validation commands

**Audit process:**
1. Read `references/technical-checklist.md` for complete checklist
2. Review page-level elements (meta tags, headings, URLs, images)
3. Check site-wide configuration (robots.txt, sitemap, HTTPS)
4. Verify Core Web Vitals (LCP < 2.5s, INP < 200ms, CLS < 0.1)
5. Test with official tools (PageSpeed Insights, Rich Results Test)
6. Prioritize fixes (Critical → High → Medium → Low)
7. Document findings and recommendations

**Critical elements to verify:**
- [ ] Title and meta description on every page
- [ ] Canonical URL specified
- [ ] Open Graph and Twitter Card tags
- [ ] Structured data implemented and validated
- [ ] Images have alt text and proper dimensions
- [ ] Mobile-friendly and responsive
- [ ] HTTPS enforced
- [ ] Core Web Vitals passing
- [ ] No duplicate content
- [ ] XML sitemap exists and is current

## SEO Best Practices

### Content & URLs

**URL Structure:**
- Use descriptive, keyword-rich URLs
- Keep URLs short (under 75 characters)
- Use hyphens (not underscores) to separate words
- Use lowercase only
- Avoid unnecessary parameters
- Example: `example.com/blog/seo-optimization-guide` ✓
- Example: `example.com/page?id=123&cat=4` ✗

**Heading Hierarchy:**
- Use only one H1 per page (page title with primary keyword)
- Follow logical hierarchy (H1 → H2 → H3, don't skip levels)
- Include keywords naturally in headings
- Make headings descriptive and scannable

**Internal Linking:**
- Link to related content using descriptive anchor text
- Avoid generic anchor text ("click here", "read more")
- Ensure important pages are linked from multiple locations
- Implement breadcrumbs with schema markup

### Performance Optimization

**Critical Performance Metrics:**
- **LCP (Largest Contentful Paint):** < 2.5s
  - Optimize hero images
  - Preload critical resources
  - Minimize server response time

- **FID/INP (First Input Delay / Interaction to Next Paint):** < 100ms / < 200ms
  - Defer non-critical JavaScript
  - Minimize third-party scripts
  - Optimize event handlers

- **CLS (Cumulative Layout Shift):** < 0.1
  - Always specify image dimensions
  - Reserve space for ads and embeds
  - Avoid inserting content above existing content

**Optimization techniques:**
- Compress and optimize images
- Use modern image formats (WebP, AVIF)
- Minify CSS and JavaScript
- Enable browser caching
- Use a CDN for static assets
- Implement lazy loading for below-fold content
- Preload critical fonts and resources

### Mobile Optimization

- Use responsive design (single URL for all devices)
- Ensure viewport meta tag is configured
- Test on multiple devices and screen sizes
- Use adequate touch target sizes (48×48px minimum)
- Ensure readable font sizes (16px minimum)
- Avoid intrusive interstitials (pop-ups covering content)

## Framework-Specific Guidance

### Next.js

**Metadata API (App Router):**
```typescript
import type { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Page Title | Brand',
  description: 'Page description',
  openGraph: { /* ... */ },
  twitter: { /* ... */ },
}
```

**Image Component:**
```jsx
import Image from 'next/image'

<Image
  src="/image.jpg"
  alt="Descriptive alt text"
  width={800}
  height={600}
  quality={85}
  loading="lazy"
/>
```

**Refer to `references/meta-tags.md` for complete Next.js examples.**

### React

Use React Helmet or similar library for meta tags. Refer to `references/meta-tags.md` for React-specific implementations.

### HTML Static Sites

Implement meta tags directly in `<head>`. Refer to `references/meta-tags.md` for complete HTML template.

## Testing & Validation

**Required testing for all implementations:**

1. **Google Search Console** - Verify ownership, submit sitemap
2. **PageSpeed Insights** - Test performance and Core Web Vitals
3. **Rich Results Test** - Validate structured data
4. **Mobile-Friendly Test** - Verify mobile optimization
5. **Facebook Sharing Debugger** - Test Open Graph tags
6. **Twitter Card Validator** - Test Twitter Card tags

**Testing URLs (from references/meta-tags.md and references/technical-checklist.md):**
- https://search.google.com/test/rich-results
- https://pagespeed.web.dev/
- https://developers.facebook.com/tools/debug/
- https://cards-dev.twitter.com/validator
- https://validator.schema.org/

## Common Mistakes to Avoid

1. **Missing or duplicate meta descriptions** - Every page needs unique description
2. **Generic page titles** - Avoid "Home" or "Page 1"
3. **Poor image optimization** - Missing alt text, oversized files, wrong formats
4. **No structured data** - Missing out on rich results
5. **Broken canonical tags** - Using relative URLs or pointing to wrong pages
6. **Ignoring mobile** - Not testing on mobile devices
7. **Slow page speed** - Unoptimized images and resources
8. **No HTTPS** - Security and ranking factor
9. **Missing Core Web Vitals optimization** - Causes poor user experience
10. **Not testing** - Always validate with official tools

## Workflow Integration

**When creating a new page:**
1. Implement meta tags and Open Graph from the start
2. Add appropriate structured data schema
3. Optimize all images (alt text, filenames, compression)
4. Ensure URL is SEO-friendly
5. Validate with testing tools before deploying

**When modifying existing pages:**
1. Audit current SEO implementation
2. Identify gaps using `references/technical-checklist.md`
3. Prioritize critical issues first
4. Implement improvements incrementally
5. Re-test and validate changes

**When conducting SEO audits:**
1. Use `references/technical-checklist.md` as guide
2. Document all findings with priority levels
3. Generate actionable recommendations
4. Provide implementation guidance
5. Set up monitoring for ongoing optimization

## Resources

### Reference Files

This skill includes comprehensive reference documentation:

**references/meta-tags.md**
- Complete meta tag specifications and best practices
- Open Graph and Twitter Card implementation
- Framework-specific examples (Next.js, React, HTML)
- Image requirements and testing tools

**references/json-ld-schemas.md**
- Schema.org templates for all common content types
- Organization, Article, Product, Person, Event, FAQ, HowTo schemas
- Multiple schema implementation patterns
- Validation guidance and testing tools

**references/image-seo.md**
- Alt text writing guidelines with examples by content type
- File naming best practices
- Image format selection and optimization
- Responsive images and lazy loading implementation
- Framework-specific image optimization

**references/technical-checklist.md**
- Complete page-level and site-wide SEO checklist
- Core Web Vitals requirements and optimization
- Testing tools and validation commands
- Priority levels for fixes

### When to Read References

**Always read the relevant reference file when:**
- Implementing a specific SEO element for the first time
- User requests details about a particular SEO aspect
- Conducting comprehensive audits
- Troubleshooting SEO issues
- Need framework-specific implementation examples

**Quick reference (don't need to read):**
- Making minor updates to existing SEO elements
- Following established patterns already in the codebase
- Performing routine optimizations

## Success Criteria

An SEO-optimized page should have:

- ✅ Unique, optimized title and meta description
- ✅ Complete Open Graph and Twitter Card tags
- ✅ Appropriate JSON-LD structured data
- ✅ All images with descriptive alt text and proper dimensions
- ✅ SEO-friendly URL structure
- ✅ Proper heading hierarchy (single H1, logical H2-H6)
- ✅ Mobile-friendly and responsive design
- ✅ Core Web Vitals passing (LCP < 2.5s, INP < 200ms, CLS < 0.1)
- ✅ HTTPS enforced
- ✅ Validated with official testing tools (no errors)
