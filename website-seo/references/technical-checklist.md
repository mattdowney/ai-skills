# Technical SEO Checklist

## Page-Level Technical SEO

### Required Elements

- [ ] **Title tag** present and optimized (50-60 characters)
- [ ] **Meta description** present and compelling (150-160 characters)
- [ ] **H1 heading** exists and contains primary keyword
- [ ] **Canonical URL** specified (absolute URL)
- [ ] **Language** declared (`<html lang="en">`)
- [ ] **Charset** declared (`<meta charset="UTF-8">`)
- [ ] **Viewport** meta tag present for mobile
- [ ] **Favicon** implemented (multiple sizes)

### Open Graph & Social

- [ ] **og:type** specified
- [ ] **og:url** specified (absolute URL)
- [ ] **og:title** present (different from title tag if beneficial)
- [ ] **og:description** present
- [ ] **og:image** present (1200×630px recommended)
- [ ] **og:image** alt text specified
- [ ] **og:site_name** specified
- [ ] **Twitter card type** specified (`summary_large_image` recommended)
- [ ] **Twitter image** optimized (1200×628px recommended)

### Structured Data

- [ ] **JSON-LD schema** implemented for page type
- [ ] **Organization schema** on homepage
- [ ] **Breadcrumb schema** on all non-homepage pages
- [ ] **Article/BlogPosting schema** on blog posts
- [ ] **Product schema** on product pages (if applicable)
- [ ] **Schema validated** with Google Rich Results Test
- [ ] **Multiple schemas** combined when appropriate

### Content & URLs

- [ ] **URL is SEO-friendly** (descriptive, lowercase, hyphens)
- [ ] **URL is short** (under 75 characters when possible)
- [ ] **Heading hierarchy** is logical (H1 → H2 → H3)
- [ ] **Only one H1** per page
- [ ] **Content is unique** (no duplicate content)
- [ ] **Keyword placement** is natural and strategic
- [ ] **Internal links** present to related content
- [ ] **External links** open in new tab when appropriate
- [ ] **Anchor text** is descriptive (not "click here")

### Images

- [ ] **All images have alt text** (descriptive, under 125 characters)
- [ ] **Filenames are descriptive** (hyphens, lowercase, keywords)
- [ ] **Images are compressed** (under 100KB for most images)
- [ ] **Modern formats** used (WebP/AVIF with fallbacks)
- [ ] **Responsive images** implemented (srcset/sizes)
- [ ] **Lazy loading** on below-fold images
- [ ] **Width and height** attributes specified
- [ ] **No CLS** (Cumulative Layout Shift) from images

### Performance

- [ ] **Page loads in under 3 seconds** (desktop)
- [ ] **Page loads in under 5 seconds** (mobile)
- [ ] **First Contentful Paint** under 1.8s
- [ ] **Largest Contentful Paint** under 2.5s
- [ ] **Cumulative Layout Shift** under 0.1
- [ ] **Total Blocking Time** under 200ms
- [ ] **CSS is minified** and optimized
- [ ] **JavaScript is minified** and deferred
- [ ] **Critical CSS** inlined or prioritized
- [ ] **Fonts are optimized** (preload, font-display: swap)

### Mobile Optimization

- [ ] **Mobile-friendly** design (responsive)
- [ ] **Viewport meta tag** configured
- [ ] **Touch targets** are adequate (48×48px minimum)
- [ ] **Font sizes** are readable (16px minimum)
- [ ] **No horizontal scrolling** required
- [ ] **Pop-ups don't cover content** on mobile
- [ ] **Tested on multiple devices** and screen sizes

## Site-Wide Technical SEO

### Indexing & Crawling

- [ ] **Robots.txt** exists and is properly configured
- [ ] **XML sitemap** exists and is submitted to search engines
- [ ] **Sitemap is listed** in robots.txt
- [ ] **No important pages blocked** in robots.txt
- [ ] **Sitemap updated** when content changes
- [ ] **All pages are indexable** (no noindex on important pages)
- [ ] **Crawl budget optimized** (no infinite scrolls, unnecessary parameters)

### Site Architecture

- [ ] **URL structure is logical** and hierarchical
- [ ] **Site is maximum 3 clicks** from homepage
- [ ] **Internal linking strategy** in place
- [ ] **Breadcrumbs** implemented and marked up
- [ ] **Navigation is crawlable** (not JavaScript-dependent)
- [ ] **404 pages are custom** and helpful
- [ ] **301 redirects** for moved/deleted pages
- [ ] **No redirect chains** (A → B → C)
- [ ] **HTTPS enforced** (301 redirect from HTTP)

### Technical Infrastructure

- [ ] **HTTPS/SSL certificate** installed and valid
- [ ] **WWW or non-WWW** canonicalization enforced
- [ ] **Site loads on both www and non-www** with proper redirects
- [ ] **No mixed content** warnings (HTTP resources on HTTPS pages)
- [ ] **Server response time** under 200ms
- [ ] **CDN implemented** for static assets
- [ ] **Compression enabled** (Gzip or Brotli)
- [ ] **Browser caching** configured

### Duplicate Content

- [ ] **Canonical tags** on all pages
- [ ] **No duplicate content** across site
- [ ] **Parameters handled** properly (canonical or robots.txt)
- [ ] **Pagination** handled with rel="next"/rel="prev" or canonical
- [ ] **Print versions** have noindex or canonical
- [ ] **Mobile versions** use responsive design (not separate URLs)

### International & Multi-Language

- [ ] **Hreflang tags** implemented (if multi-language)
- [ ] **Language targeting** set in Google Search Console
- [ ] **Content is properly translated** (not machine-translated)
- [ ] **URLs localized** appropriately

## Security & Accessibility

### Security

- [ ] **HTTPS enforced** site-wide
- [ ] **SSL certificate valid** and not expiring soon
- [ ] **No security warnings** in browser
- [ ] **Content Security Policy** configured
- [ ] **No malware or suspicious code**

### Accessibility (WCAG)

- [ ] **Alt text** on all images
- [ ] **Proper heading hierarchy** (H1-H6)
- [ ] **Color contrast** meets WCAG standards (4.5:1 minimum)
- [ ] **Form labels** properly associated
- [ ] **Keyboard navigation** works throughout site
- [ ] **Skip links** for main content
- [ ] **ARIA labels** where appropriate
- [ ] **Focus indicators** visible
- [ ] **No flashing content** (seizure risk)

## Core Web Vitals

### LCP (Largest Contentful Paint)

- [ ] **LCP under 2.5 seconds** on 75th percentile
- [ ] **Hero images optimized** and properly sized
- [ ] **Font loading optimized** (preload, font-display)
- [ ] **Server response time** under 200ms
- [ ] **CSS blocking minimized**

### FID/INP (First Input Delay / Interaction to Next Paint)

- [ ] **FID under 100ms** on 75th percentile
- [ ] **INP under 200ms** on 75th percentile
- [ ] **JavaScript execution time** minimized
- [ ] **Third-party scripts** defer-loaded
- [ ] **Event handlers** optimized

### CLS (Cumulative Layout Shift)

- [ ] **CLS under 0.1** on 75th percentile
- [ ] **Width and height** on all images
- [ ] **Font loading** doesn't cause layout shift
- [ ] **No content injected** above existing content
- [ ] **Ads and embeds** have reserved space

## Advanced SEO

### Rich Results Eligibility

- [ ] **FAQ schema** for FAQ sections
- [ ] **How-To schema** for tutorials
- [ ] **Review schema** for product/service reviews
- [ ] **Event schema** for events
- [ ] **Recipe schema** for recipes (if applicable)
- [ ] **Video schema** for video content
- [ ] **Tested** with Google Rich Results Test

### Page Experience Signals

- [ ] **No intrusive interstitials** (especially mobile)
- [ ] **Safe browsing** (no malware/phishing)
- [ ] **Mobile-friendly** (responsive design)
- [ ] **Core Web Vitals** passing
- [ ] **HTTPS** secure connection

### Content Quality Signals

- [ ] **Content is original** and valuable
- [ ] **E-E-A-T** demonstrated (Experience, Expertise, Authoritativeness, Trust)
- [ ] **Author information** provided
- [ ] **Last updated dates** displayed
- [ ] **Sources cited** where appropriate
- [ ] **Content length** appropriate for topic (usually 1000+ words)
- [ ] **Content regularly updated**

## Monitoring & Maintenance

### Tools Setup

- [ ] **Google Search Console** verified
- [ ] **Google Analytics** or alternative installed
- [ ] **Bing Webmaster Tools** verified
- [ ] **XML sitemap submitted** to search engines
- [ ] **Error monitoring** set up (404s, 500s)

### Regular Checks

- [ ] **Monitor Core Web Vitals** monthly
- [ ] **Check Search Console** for errors weekly
- [ ] **Review organic traffic** monthly
- [ ] **Check broken links** quarterly
- [ ] **Update content** quarterly
- [ ] **Review backlinks** quarterly
- [ ] **Check competitor rankings** monthly
- [ ] **Test page speed** monthly

## Quick Validation Commands

```bash
# Check robots.txt
curl https://example.com/robots.txt

# Check sitemap
curl https://example.com/sitemap.xml

# Check HTTP to HTTPS redirect
curl -I http://example.com

# Check response headers
curl -I https://example.com

# Check page load time
curl -w "@curl-format.txt" -o /dev/null -s https://example.com
```

## Testing Tools

**Official Google Tools:**
- Google Search Console: https://search.google.com/search-console
- PageSpeed Insights: https://pagespeed.web.dev/
- Rich Results Test: https://search.google.com/test/rich-results
- Mobile-Friendly Test: https://search.google.com/test/mobile-friendly

**Third-Party Tools:**
- GTmetrix: https://gtmetrix.com/
- WebPageTest: https://www.webpagetest.org/
- Lighthouse (Chrome DevTools)
- Screaming Frog SEO Spider
- Ahrefs Site Audit
- SEMrush Site Audit

**Structured Data:**
- Schema.org Validator: https://validator.schema.org/
- JSON-LD Playground: https://json-ld.org/playground/

**Social Media:**
- Facebook Sharing Debugger: https://developers.facebook.com/tools/debug/
- Twitter Card Validator: https://cards-dev.twitter.com/validator
- LinkedIn Post Inspector: https://www.linkedin.com/post-inspector/

## Priority Levels

**Critical (Fix Immediately):**
- Missing or duplicate title tags
- Missing meta descriptions
- Broken canonical tags
- HTTPS not enforced
- Mobile-unfriendly design
- Core Web Vitals failing

**High Priority (Fix This Week):**
- Missing structured data
- Unoptimized images
- Missing alt text
- Poor URL structure
- Slow page load times
- Missing Open Graph tags

**Medium Priority (Fix This Month):**
- Heading hierarchy issues
- Missing internal links
- Unoptimized anchor text
- Font loading optimization
- CSS/JS optimization

**Low Priority (Nice to Have):**
- Additional schema markup
- Advanced performance tuning
- International SEO (if not applicable)
- Additional social media tags
