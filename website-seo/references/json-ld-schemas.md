# JSON-LD Structured Data Schemas

## What is JSON-LD?

JSON-LD (JavaScript Object Notation for Linked Data) is a method of encoding structured data using schema.org vocabulary. It helps search engines understand your content and can enable rich results in search.

**Benefits:**
- Enables rich snippets in search results
- Improves click-through rates
- Helps search engines understand content context
- No impact on page performance (loaded asynchronously)

**Implementation:**
Place JSON-LD scripts in the `<head>` or `<body>` of your HTML:

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebPage",
  "name": "Page Name"
}
</script>
```

## Organization Schema

Use on the homepage or about page to define your organization/company.

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "Company Name",
  "url": "https://example.com",
  "logo": "https://example.com/logo.png",
  "description": "Brief description of the organization",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "123 Main Street",
    "addressLocality": "City",
    "addressRegion": "State",
    "postalCode": "12345",
    "addressCountry": "US"
  },
  "contactPoint": {
    "@type": "ContactPoint",
    "telephone": "+1-555-555-5555",
    "contactType": "Customer Service",
    "areaServed": "US",
    "availableLanguage": ["English"]
  },
  "sameAs": [
    "https://facebook.com/yourcompany",
    "https://twitter.com/yourcompany",
    "https://linkedin.com/company/yourcompany",
    "https://instagram.com/yourcompany"
  ],
  "foundingDate": "2020-01-01",
  "founder": {
    "@type": "Person",
    "name": "Founder Name"
  }
}
```

## Website Schema

Use on the homepage to define the website itself.

```json
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "Website Name",
  "url": "https://example.com",
  "description": "Website description",
  "publisher": {
    "@type": "Organization",
    "name": "Publisher Name",
    "logo": {
      "@type": "ImageObject",
      "url": "https://example.com/logo.png"
    }
  },
  "potentialAction": {
    "@type": "SearchAction",
    "target": "https://example.com/search?q={search_term_string}",
    "query-input": "required name=search_term_string"
  }
}
```

## Article Schema

Use for blog posts, news articles, and editorial content.

```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Article Headline (max 110 characters)",
  "description": "Brief description of the article",
  "image": [
    "https://example.com/article-image-1200x630.jpg",
    "https://example.com/article-image-1200x900.jpg",
    "https://example.com/article-image-square.jpg"
  ],
  "datePublished": "2024-01-15T08:00:00+00:00",
  "dateModified": "2024-01-16T10:30:00+00:00",
  "author": {
    "@type": "Person",
    "name": "Author Name",
    "url": "https://example.com/author/author-name"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Publisher Name",
    "logo": {
      "@type": "ImageObject",
      "url": "https://example.com/logo.png",
      "width": 600,
      "height": 60
    }
  },
  "articleSection": "Technology",
  "keywords": ["keyword1", "keyword2", "keyword3"],
  "wordCount": 1500,
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://example.com/article-url"
  }
}
```

**Image Requirements:**
- Include multiple aspect ratios (16×9, 4×3, 1×1)
- Minimum width: 1200 pixels
- Use high-resolution images

## BlogPosting Schema

Similar to Article but specifically for blog posts.

```json
{
  "@context": "https://schema.org",
  "@type": "BlogPosting",
  "headline": "Blog Post Title",
  "description": "Brief description",
  "image": "https://example.com/blog-image.jpg",
  "datePublished": "2024-01-15T08:00:00+00:00",
  "dateModified": "2024-01-16T10:30:00+00:00",
  "author": {
    "@type": "Person",
    "name": "Author Name",
    "url": "https://example.com/author/author-name"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Publisher Name",
    "logo": {
      "@type": "ImageObject",
      "url": "https://example.com/logo.png"
    }
  },
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://example.com/blog/post-slug"
  },
  "articleBody": "Full article text...",
  "keywords": ["keyword1", "keyword2"],
  "articleSection": "Category Name"
}
```

## Person Schema

Use for personal profiles, author pages, team member pages.

```json
{
  "@context": "https://schema.org",
  "@type": "Person",
  "name": "Full Name",
  "url": "https://example.com/person",
  "image": "https://example.com/person-photo.jpg",
  "jobTitle": "Job Title",
  "worksFor": {
    "@type": "Organization",
    "name": "Company Name"
  },
  "description": "Brief bio",
  "email": "mailto:person@example.com",
  "telephone": "+1-555-555-5555",
  "sameAs": [
    "https://twitter.com/username",
    "https://linkedin.com/in/username",
    "https://github.com/username"
  ],
  "address": {
    "@type": "PostalAddress",
    "addressLocality": "City",
    "addressRegion": "State",
    "addressCountry": "US"
  }
}
```

## Product Schema

Use for product pages in e-commerce or SaaS.

```json
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "Product Name",
  "description": "Detailed product description",
  "image": [
    "https://example.com/product-image-1.jpg",
    "https://example.com/product-image-2.jpg"
  ],
  "sku": "PROD-123",
  "mpn": "925872",
  "brand": {
    "@type": "Brand",
    "name": "Brand Name"
  },
  "offers": {
    "@type": "Offer",
    "url": "https://example.com/product",
    "priceCurrency": "USD",
    "price": "99.99",
    "priceValidUntil": "2024-12-31",
    "availability": "https://schema.org/InStock",
    "seller": {
      "@type": "Organization",
      "name": "Seller Name"
    }
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.5",
    "reviewCount": "87",
    "bestRating": "5",
    "worstRating": "1"
  },
  "review": [
    {
      "@type": "Review",
      "author": {
        "@type": "Person",
        "name": "Reviewer Name"
      },
      "datePublished": "2024-01-15",
      "reviewRating": {
        "@type": "Rating",
        "ratingValue": "5",
        "bestRating": "5"
      },
      "reviewBody": "Great product! Highly recommend."
    }
  ]
}
```

**Availability Values:**
- `https://schema.org/InStock`
- `https://schema.org/OutOfStock`
- `https://schema.org/PreOrder`
- `https://schema.org/Discontinued`

## Breadcrumb Schema

Use on all pages to show navigation hierarchy.

```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "Home",
      "item": "https://example.com"
    },
    {
      "@type": "ListItem",
      "position": 2,
      "name": "Category",
      "item": "https://example.com/category"
    },
    {
      "@type": "ListItem",
      "position": 3,
      "name": "Current Page",
      "item": "https://example.com/category/page"
    }
  ]
}
```

## FAQ Schema

Use for FAQ pages or sections with questions and answers.

```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "What is the question?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "This is the answer to the question."
      }
    },
    {
      "@type": "Question",
      "name": "Another question?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Answer to the second question."
      }
    }
  ]
}
```

**FAQ Requirements:**
- Minimum 2 questions
- Each question must have an accepted answer
- Answers should be complete (not just "yes" or "no")
- Avoid promotional content in answers

## How-To Schema

Use for tutorial and instructional content.

```json
{
  "@context": "https://schema.org",
  "@type": "HowTo",
  "name": "How to Do Something",
  "description": "Brief description of what this tutorial teaches",
  "image": "https://example.com/how-to-image.jpg",
  "totalTime": "PT30M",
  "estimatedCost": {
    "@type": "MonetaryAmount",
    "currency": "USD",
    "value": "10"
  },
  "supply": [
    {
      "@type": "HowToSupply",
      "name": "Supply Item 1"
    }
  ],
  "tool": [
    {
      "@type": "HowToTool",
      "name": "Tool Name"
    }
  ],
  "step": [
    {
      "@type": "HowToStep",
      "name": "Step 1 Title",
      "text": "Detailed instructions for step 1",
      "image": "https://example.com/step-1.jpg",
      "url": "https://example.com/how-to#step1"
    },
    {
      "@type": "HowToStep",
      "name": "Step 2 Title",
      "text": "Detailed instructions for step 2",
      "image": "https://example.com/step-2.jpg",
      "url": "https://example.com/how-to#step2"
    }
  ]
}
```

**Duration Format (ISO 8601):**
- `PT30M` = 30 minutes
- `PT1H` = 1 hour
- `PT1H30M` = 1 hour 30 minutes
- `P2D` = 2 days

## Video Schema

Use for video content on your pages.

```json
{
  "@context": "https://schema.org",
  "@type": "VideoObject",
  "name": "Video Title",
  "description": "Video description",
  "thumbnailUrl": "https://example.com/video-thumbnail.jpg",
  "uploadDate": "2024-01-15T08:00:00+00:00",
  "duration": "PT5M30S",
  "contentUrl": "https://example.com/video.mp4",
  "embedUrl": "https://example.com/embed/video",
  "publisher": {
    "@type": "Organization",
    "name": "Publisher Name",
    "logo": {
      "@type": "ImageObject",
      "url": "https://example.com/logo.png"
    }
  }
}
```

## Local Business Schema

Use for businesses with physical locations.

```json
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "Business Name",
  "image": "https://example.com/business-photo.jpg",
  "url": "https://example.com",
  "telephone": "+1-555-555-5555",
  "email": "info@example.com",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "123 Main Street",
    "addressLocality": "City",
    "addressRegion": "State",
    "postalCode": "12345",
    "addressCountry": "US"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": "40.7128",
    "longitude": "-74.0060"
  },
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
      "opens": "09:00",
      "closes": "17:00"
    },
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": "Saturday",
      "opens": "10:00",
      "closes": "14:00"
    }
  ],
  "priceRange": "$$",
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.5",
    "reviewCount": "150"
  }
}
```

## Event Schema

Use for events, conferences, webinars.

```json
{
  "@context": "https://schema.org",
  "@type": "Event",
  "name": "Event Name",
  "description": "Event description",
  "startDate": "2024-06-15T19:00:00-05:00",
  "endDate": "2024-06-15T22:00:00-05:00",
  "eventStatus": "https://schema.org/EventScheduled",
  "eventAttendanceMode": "https://schema.org/OfflineEventAttendanceMode",
  "location": {
    "@type": "Place",
    "name": "Venue Name",
    "address": {
      "@type": "PostalAddress",
      "streetAddress": "123 Main Street",
      "addressLocality": "City",
      "addressRegion": "State",
      "postalCode": "12345",
      "addressCountry": "US"
    }
  },
  "image": "https://example.com/event-image.jpg",
  "organizer": {
    "@type": "Organization",
    "name": "Organizer Name",
    "url": "https://example.com"
  },
  "offers": {
    "@type": "Offer",
    "url": "https://example.com/tickets",
    "price": "50.00",
    "priceCurrency": "USD",
    "availability": "https://schema.org/InStock",
    "validFrom": "2024-01-01T00:00:00-05:00"
  }
}
```

**Event Status:**
- `https://schema.org/EventScheduled`
- `https://schema.org/EventPostponed`
- `https://schema.org/EventCancelled`
- `https://schema.org/EventRescheduled`

**Attendance Mode:**
- `https://schema.org/OfflineEventAttendanceMode` - In-person
- `https://schema.org/OnlineEventAttendanceMode` - Virtual
- `https://schema.org/MixedEventAttendanceMode` - Hybrid

## Multiple Schemas on One Page

You can include multiple schemas on a single page:

```html
<script type="application/ld+json">
[
  {
    "@context": "https://schema.org",
    "@type": "Organization",
    "name": "Company Name",
    "url": "https://example.com"
  },
  {
    "@context": "https://schema.org",
    "@type": "WebSite",
    "name": "Website Name",
    "url": "https://example.com"
  }
]
</script>
```

## Testing & Validation

**Testing Tools:**
- Google Rich Results Test: https://search.google.com/test/rich-results
- Schema.org Validator: https://validator.schema.org/
- Google Search Console Rich Results Report

**Common Validation Errors:**
- Missing required fields
- Invalid date formats (use ISO 8601)
- Missing image dimensions
- Incorrect URL formats (must be absolute)
- Invalid enum values (check schema.org docs)

## Best Practices

1. **Use specific types** - Use BlogPosting instead of Article for blogs
2. **Include images** - Always provide high-quality images with proper dimensions
3. **Use absolute URLs** - Never use relative URLs in JSON-LD
4. **Validate dates** - Use ISO 8601 format (YYYY-MM-DDTHH:MM:SS+00:00)
5. **Add multiple schemas** - Combine relevant schemas on a page
6. **Keep updated** - Update modified dates when content changes
7. **Test regularly** - Use Google's Rich Results Test
8. **Monitor errors** - Check Google Search Console for issues
9. **Don't overdo it** - Only add schemas relevant to your content
10. **Be accurate** - Don't add false information to game the system
