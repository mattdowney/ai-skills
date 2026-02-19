# Image SEO Optimization

## Why Image SEO Matters

- **Search visibility** - Images appear in Google Images search
- **Page speed** - Optimized images improve Core Web Vitals
- **Accessibility** - Alt text helps screen readers
- **User experience** - Fast-loading, high-quality images
- **Traffic** - Image search drives significant traffic

## Alt Text Best Practices

Alt text (alternative text) describes images for screen readers and when images fail to load.

### Writing Effective Alt Text

**Good Alt Text:**
```html
<img src="golden-retriever-playing-fetch.jpg"
     alt="Golden retriever catching a red frisbee in a park">
```

**Poor Alt Text:**
```html
<img src="image1.jpg" alt="image">
<img src="dog.jpg" alt="dog">
<img src="product.jpg" alt="Click here to buy">
```

### Alt Text Guidelines

1. **Be descriptive and specific**
   - Describe what's in the image, not just the subject
   - Include relevant context
   - Use natural language

2. **Keep it concise**
   - Aim for 125 characters or less
   - Screen readers may cut off longer text
   - Be thorough but not verbose

3. **Include keywords naturally**
   - Use target keywords when relevant
   - Don't keyword stuff
   - Prioritize accuracy over SEO

4. **Avoid redundant phrases**
   - Don't start with "image of" or "picture of"
   - Screen readers already announce "image"
   - Exception: "screenshot of" or "diagram of" provides context

5. **Context matters**
   - Consider the image's purpose on the page
   - Editorial images need detailed descriptions
   - Decorative images can use empty alt (`alt=""`)

### Alt Text Examples by Type

**Product Images:**
```html
<img src="laptop.jpg"
     alt="MacBook Pro 16-inch with M3 chip, Space Gray, front view">
```

**Screenshots:**
```html
<img src="dashboard.jpg"
     alt="Analytics dashboard showing monthly traffic increase of 45%">
```

**Infographics:**
```html
<img src="process.jpg"
     alt="Three-step user onboarding process: signup, verification, setup">
```

**People:**
```html
<img src="speaker.jpg"
     alt="Jane Smith presenting at Tech Conference 2024">
```

**Charts/Graphs:**
```html
<img src="chart.jpg"
     alt="Bar chart showing Q4 revenue growth across four regions">
```

**Decorative Images:**
```html
<img src="decorative-divider.svg" alt="">
```

### When to Use Empty Alt Text

Use `alt=""` for:
- Decorative images (borders, spacers, design elements)
- Images already described in surrounding text
- Images with no informational value
- Icons with adjacent text labels

**Never omit the alt attribute entirely** - this forces screen readers to read the filename.

## Image File Naming

Descriptive filenames improve SEO and organization.

### Good File Names

```
golden-retriever-playing-fetch.jpg
macbook-pro-16-inch-m3-space-gray.jpg
analytics-dashboard-monthly-traffic.png
team-photo-2024-conference.jpg
```

### Poor File Names

```
IMG_1234.jpg
image1.jpg
photo.jpg
screenshot-2024-01-15-at-10-30-25.png
DSC_0001.jpg
```

### File Naming Guidelines

1. **Use descriptive names**
   - Describe the image content
   - Include relevant keywords
   - Be specific

2. **Use hyphens, not underscores**
   - `golden-retriever.jpg` ✓
   - `golden_retriever.jpg` ✗
   - Google treats hyphens as word separators

3. **Use lowercase**
   - Prevents case-sensitivity issues
   - More consistent and professional

4. **Keep it concise**
   - Aim for 3-5 words
   - Avoid unnecessary words
   - Focus on key descriptors

5. **Include modifiers when relevant**
   - Colors: `blue-running-shoes.jpg`
   - Sizes: `large-pepperoni-pizza.jpg`
   - Angles: `product-front-view.jpg`

## Image Formats & Optimization

### Format Selection

**JPEG (.jpg)**
- **Use for:** Photos, complex images with gradients
- **Pros:** Great compression, wide support
- **Cons:** Lossy compression, no transparency
- **When:** Photographs, product images, hero images

**PNG (.png)**
- **Use for:** Graphics with transparency, text, logos
- **Pros:** Lossless, supports transparency
- **Cons:** Larger file sizes than JPEG
- **When:** Logos, icons, images with text, alpha transparency needed

**WebP (.webp)**
- **Use for:** Modern web images (photos and graphics)
- **Pros:** Superior compression (25-35% smaller), supports transparency
- **Cons:** Limited support in older browsers
- **When:** All modern projects with fallbacks

**SVG (.svg)**
- **Use for:** Logos, icons, simple graphics
- **Pros:** Infinitely scalable, tiny file size, can be styled with CSS
- **Cons:** Not suitable for complex images
- **When:** Icons, logos, illustrations, charts

**AVIF (.avif)**
- **Use for:** Next-gen image format
- **Pros:** Best compression (~50% smaller than JPEG)
- **Cons:** Limited browser support (cutting-edge)
- **When:** Progressive enhancement for modern browsers

### Format Recommendations

| Content Type | First Choice | Fallback |
|--------------|--------------|----------|
| Photos | WebP | JPEG |
| Logos | SVG | PNG |
| Icons | SVG | PNG |
| Screenshots | WebP | PNG |
| Hero Images | WebP | JPEG |
| Thumbnails | WebP | JPEG |

### Image Compression

**Compression Levels:**
- **JPEG Quality:** 80-85% for photos (good balance)
- **PNG:** Use tools like TinyPNG for lossless compression
- **WebP:** 75-85% quality

**Compression Tools:**
- **Online:** TinyPNG, Squoosh.app, ImageOptim
- **CLI:** ImageMagick, Sharp, Squoosh CLI
- **Build Tools:** Next.js Image Optimization, webpack image-loader

### Image Dimensions

**Serve Appropriately Sized Images:**

```html
<!-- Bad: Serving 4000px image for 400px display -->
<img src="huge-image.jpg" width="400">

<!-- Good: Serving properly sized images -->
<img src="image-400w.jpg"
     srcset="image-400w.jpg 400w,
             image-800w.jpg 800w,
             image-1200w.jpg 1200w"
     sizes="(max-width: 600px) 400px,
            (max-width: 1200px) 800px,
            1200px"
     alt="Descriptive alt text">
```

**Common Breakpoint Sizes:**
- Mobile: 375px, 414px
- Tablet: 768px, 1024px
- Desktop: 1280px, 1920px

## Responsive Images

### Using srcset and sizes

```html
<img src="image-800w.jpg"
     srcset="image-400w.jpg 400w,
             image-800w.jpg 800w,
             image-1200w.jpg 1200w,
             image-1600w.jpg 1600w"
     sizes="(max-width: 640px) 100vw,
            (max-width: 1024px) 50vw,
            800px"
     alt="Responsive image example"
     loading="lazy">
```

### Using Picture Element

```html
<picture>
  <source type="image/avif" srcset="image.avif">
  <source type="image/webp" srcset="image.webp">
  <img src="image.jpg" alt="Fallback image">
</picture>
```

### Art Direction with Picture

```html
<picture>
  <source media="(max-width: 640px)" srcset="image-mobile.jpg">
  <source media="(max-width: 1024px)" srcset="image-tablet.jpg">
  <img src="image-desktop.jpg" alt="Art directed image">
</picture>
```

## Lazy Loading

Defer loading off-screen images to improve initial page load.

### Native Lazy Loading

```html
<img src="image.jpg"
     alt="Lazy loaded image"
     loading="lazy">
```

**Loading Attribute Values:**
- `loading="lazy"` - Load when near viewport (recommended for below-fold images)
- `loading="eager"` - Load immediately (default, use for above-fold images)
- Omit for above-fold critical images

### When NOT to Use Lazy Loading

- Hero images
- Above-the-fold content
- First 3-5 images on the page
- Critical UI elements

## Image Optimization Checklist

- [ ] **Use descriptive filenames** (hyphens, lowercase, keywords)
- [ ] **Write meaningful alt text** (descriptive, concise, natural)
- [ ] **Choose the right format** (WebP/AVIF for modern, JPEG/PNG for compatibility)
- [ ] **Compress images** (80-85% JPEG quality, optimize PNGs)
- [ ] **Serve properly sized images** (match display size, use srcset)
- [ ] **Implement responsive images** (srcset/sizes or picture element)
- [ ] **Use lazy loading** (for below-fold images)
- [ ] **Add width and height attributes** (prevent layout shift)
- [ ] **Serve from CDN** (faster delivery, automatic optimization)
- [ ] **Use modern formats with fallbacks** (WebP/AVIF with JPEG/PNG fallback)

## Framework-Specific Implementations

### Next.js Image Component

```jsx
import Image from 'next/image'

<Image
  src="/images/photo.jpg"
  alt="Descriptive alt text"
  width={800}
  height={600}
  quality={85}
  loading="lazy"
  placeholder="blur"
  blurDataURL="data:image/jpeg;base64,..."
/>
```

**Next.js Benefits:**
- Automatic WebP/AVIF conversion
- Automatic responsive images
- Built-in lazy loading
- Image optimization at build or runtime

### React with Responsive Images

```jsx
<img
  src="/images/photo-800w.jpg"
  srcSet="/images/photo-400w.jpg 400w,
          /images/photo-800w.jpg 800w,
          /images/photo-1200w.jpg 1200w"
  sizes="(max-width: 640px) 100vw,
         (max-width: 1024px) 50vw,
         800px"
  alt="Descriptive alt text"
  loading="lazy"
  width={800}
  height={600}
/>
```

### HTML with Picture Element

```html
<picture>
  <source
    type="image/webp"
    srcset="/images/photo-400w.webp 400w,
            /images/photo-800w.webp 800w,
            /images/photo-1200w.webp 1200w"
    sizes="(max-width: 640px) 100vw, 800px">
  <img
    src="/images/photo-800w.jpg"
    srcset="/images/photo-400w.jpg 400w,
            /images/photo-800w.jpg 800w,
            /images/photo-1200w.jpg 1200w"
    sizes="(max-width: 640px) 100vw, 800px"
    alt="Descriptive alt text"
    loading="lazy"
    width={800}
    height={600}>
</picture>
```

## Width and Height Attributes

Always specify dimensions to prevent Cumulative Layout Shift (CLS).

```html
<!-- Good: Prevents layout shift -->
<img src="image.jpg"
     width="800"
     height="600"
     alt="Alt text">

<!-- Bad: Can cause layout shift -->
<img src="image.jpg" alt="Alt text">
```

**Using aspect-ratio in CSS:**

```css
img {
  width: 100%;
  height: auto;
  aspect-ratio: 16 / 9;
}
```

## Image Sitemaps

Help search engines discover images on your site.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:image="http://www.google.com/schemas/sitemap-image/1.1">
  <url>
    <loc>https://example.com/page</loc>
    <image:image>
      <image:loc>https://example.com/images/photo.jpg</image:loc>
      <image:caption>Brief description of the image</image:caption>
      <image:title>Image Title</image:title>
      <image:license>https://example.com/license</image:license>
    </image:image>
  </url>
</urlset>
```

## Common Mistakes to Avoid

1. **Generic alt text** - "image" or "photo" provides no value
2. **Keyword stuffing in alt text** - Sounds unnatural, hurts accessibility
3. **Using underscores in filenames** - Use hyphens instead
4. **Serving oversized images** - Wastes bandwidth, hurts performance
5. **Not compressing images** - Unnecessarily large file sizes
6. **Missing width/height** - Causes layout shifts
7. **Lazy loading above-fold images** - Delays critical content
8. **Not using modern formats** - Missing out on better compression
9. **Forgetting fallbacks** - WebP/AVIF without JPEG/PNG fallback
10. **No alt attribute** - Forces screen readers to read filenames

## Testing Image SEO

**Tools:**
- **Google PageSpeed Insights** - Image optimization suggestions
- **Lighthouse** - Performance and accessibility audits
- **WebPageTest** - Detailed image loading analysis
- **Chrome DevTools Network Panel** - Image file sizes and load times
- **Google Image Search** - Check if images are indexed

**Checks:**
- All images have alt text
- Alt text is descriptive and meaningful
- Filenames are descriptive with hyphens
- Images are properly compressed
- Modern formats (WebP/AVIF) are used
- Responsive images implemented
- Lazy loading for below-fold images
- Width and height specified
- No CLS (Cumulative Layout Shift)
