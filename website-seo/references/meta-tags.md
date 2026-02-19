# Meta Tags & Social Media Optimization

## Essential HTML Meta Tags

### Required Meta Tags

```html
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Page Title (50-60 characters) | Brand Name</title>
<meta name="description" content="Page description (150-160 characters)">
```

**Title Tag Best Practices:**
- Keep under 60 characters to avoid truncation in search results
- Place primary keyword near the beginning
- Include brand name at the end
- Make each page title unique
- Format: `Primary Keyword - Secondary Keyword | Brand Name`

**Meta Description Best Practices:**
- Keep between 150-160 characters
- Write compelling copy that encourages clicks
- Include primary keyword naturally
- End with a call-to-action when appropriate
- Make each page description unique
- Avoid duplicate meta descriptions across pages

### Additional Important Meta Tags

```html
<meta name="robots" content="index, follow">
<meta name="googlebot" content="index, follow">
<link rel="canonical" href="https://example.com/page">
<meta name="author" content="Author Name">
<meta name="keywords" content="keyword1, keyword2, keyword3">
```

**Robots Meta Tag Values:**
- `index, follow` - Allow indexing and following links (default)
- `noindex, follow` - Don't index but follow links
- `index, nofollow` - Index but don't follow links
- `noindex, nofollow` - Don't index or follow links
- `noarchive` - Don't show cached version
- `nosnippet` - Don't show snippet in search results

**Canonical Tag:**
- Always use absolute URLs
- Points to the preferred version of a page
- Essential for preventing duplicate content issues
- Use on all pages, including the canonical page itself

## Open Graph Protocol (Facebook, LinkedIn)

### Required Open Graph Tags

```html
<meta property="og:type" content="website">
<meta property="og:url" content="https://example.com/page">
<meta property="og:title" content="Page Title for Social Media (up to 60 characters)">
<meta property="og:description" content="Description for social media (up to 200 characters)">
<meta property="og:image" content="https://example.com/og-image.jpg">
```

### Recommended Additional OG Tags

```html
<meta property="og:site_name" content="Site Name">
<meta property="og:locale" content="en_US">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
<meta property="og:image:alt" content="Description of the image">
```

**Open Graph Image Best Practices:**
- Recommended size: **1200×630 pixels** (1.91:1 aspect ratio)
- Minimum size: 600×315 pixels
- Maximum file size: 8MB
- Format: JPG or PNG (JPG preferred for photos)
- Avoid text-heavy images (may be cropped on mobile)
- Include logo or brand elements
- Ensure important content is in the center (safe zone)

### OG Type Values

Common `og:type` values:
- `website` - General websites
- `article` - Blog posts, news articles
- `profile` - Personal or business profiles
- `video.movie` - Movie pages
- `music.song` - Music content
- `book` - Book pages

### Article-Specific OG Tags

```html
<meta property="og:type" content="article">
<meta property="article:published_time" content="2024-01-15T08:00:00+00:00">
<meta property="article:modified_time" content="2024-01-16T10:30:00+00:00">
<meta property="article:author" content="Author Name">
<meta property="article:section" content="Technology">
<meta property="article:tag" content="Web Development">
<meta property="article:tag" content="SEO">
```

## Twitter Cards

### Summary Card (Default)

```html
<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="@yourtwitterhandle">
<meta name="twitter:creator" content="@authorhandle">
<meta name="twitter:title" content="Page Title (up to 70 characters)">
<meta name="twitter:description" content="Description (up to 200 characters)">
<meta name="twitter:image" content="https://example.com/twitter-image.jpg">
<meta name="twitter:image:alt" content="Description of the image">
```

### Summary Card with Large Image

```html
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@yourtwitterhandle">
<meta name="twitter:creator" content="@authorhandle">
<meta name="twitter:title" content="Page Title">
<meta name="twitter:description" content="Description">
<meta name="twitter:image" content="https://example.com/twitter-large-image.jpg">
<meta name="twitter:image:alt" content="Description of the image">
```

**Twitter Card Image Requirements:**

**Summary Card:**
- Size: 120×120 pixels minimum
- Recommended: 144×144 pixels (square)
- Max file size: 5MB

**Summary Large Image Card:**
- Minimum: 300×157 pixels
- Recommended: **1200×628 pixels** (1.91:1 aspect ratio)
- Max file size: 5MB
- Format: JPG, PNG, WEBP, or GIF

### Card Type Selection

- `summary` - Square image, good for logos/icons
- `summary_large_image` - Large rectangular image (most common)
- `app` - Mobile app download cards
- `player` - Video/audio player cards

## Framework-Specific Implementation

### Next.js Metadata API

```typescript
import type { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Page Title | Brand Name',
  description: 'Page description for SEO',
  openGraph: {
    type: 'website',
    url: 'https://example.com/page',
    title: 'OG Title',
    description: 'OG Description',
    siteName: 'Site Name',
    images: [
      {
        url: 'https://example.com/og-image.jpg',
        width: 1200,
        height: 630,
        alt: 'Image description',
      },
    ],
    locale: 'en_US',
  },
  twitter: {
    card: 'summary_large_image',
    site: '@yourtwitterhandle',
    creator: '@authorhandle',
    title: 'Twitter Title',
    description: 'Twitter Description',
    images: ['https://example.com/twitter-image.jpg'],
  },
  robots: {
    index: true,
    follow: true,
    googleBot: {
      index: true,
      follow: true,
    },
  },
  alternates: {
    canonical: 'https://example.com/page',
  },
}
```

### React Helmet

```jsx
import { Helmet } from 'react-helmet'

<Helmet>
  <title>Page Title | Brand Name</title>
  <meta name="description" content="Page description" />

  <meta property="og:type" content="website" />
  <meta property="og:url" content="https://example.com/page" />
  <meta property="og:title" content="OG Title" />
  <meta property="og:description" content="OG Description" />
  <meta property="og:image" content="https://example.com/og-image.jpg" />

  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:site" content="@yourtwitterhandle" />
  <meta name="twitter:title" content="Twitter Title" />
  <meta name="twitter:description" content="Twitter Description" />
  <meta name="twitter:image" content="https://example.com/twitter-image.jpg" />

  <link rel="canonical" href="https://example.com/page" />
</Helmet>
```

### HTML Static Site

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Primary Meta Tags -->
  <title>Page Title | Brand Name</title>
  <meta name="title" content="Page Title | Brand Name">
  <meta name="description" content="Page description">
  <link rel="canonical" href="https://example.com/page">

  <!-- Open Graph / Facebook -->
  <meta property="og:type" content="website">
  <meta property="og:url" content="https://example.com/page">
  <meta property="og:title" content="OG Title">
  <meta property="og:description" content="OG Description">
  <meta property="og:image" content="https://example.com/og-image.jpg">

  <!-- Twitter -->
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:url" content="https://example.com/page">
  <meta name="twitter:title" content="Twitter Title">
  <meta name="twitter:description" content="Twitter Description">
  <meta name="twitter:image" content="https://example.com/twitter-image.jpg">
</head>
<body>
  <!-- Content -->
</body>
</html>
```

## Testing & Validation

**Open Graph Testing:**
- Facebook Sharing Debugger: https://developers.facebook.com/tools/debug/
- LinkedIn Post Inspector: https://www.linkedin.com/post-inspector/

**Twitter Card Testing:**
- Twitter Card Validator: https://cards-dev.twitter.com/validator

**General Meta Tag Testing:**
- Google Rich Results Test: https://search.google.com/test/rich-results
- Screaming Frog SEO Spider (desktop tool)
- Meta Tags Preview Tools

## Common Mistakes to Avoid

1. **Missing or duplicate meta descriptions** - Every page should have a unique description
2. **Generic titles** - Avoid "Home" or "Page 1" as titles
3. **Wrong image dimensions** - Use 1200×630 for optimal display
4. **Relative URLs in OG tags** - Always use absolute URLs
5. **Missing og:image** - Social shares will look poor without images
6. **Not testing** - Always validate with official testing tools
7. **Hardcoded URLs** - Use dynamic URLs based on current page
8. **Missing canonical tags** - Can cause duplicate content issues
9. **Too long descriptions** - Will be truncated in search results
10. **Forgetting image alt text** - Important for accessibility and OG images
