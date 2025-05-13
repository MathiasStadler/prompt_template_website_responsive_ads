#!/bin/bash

# Navigate to project directory
cd "$(dirname "$0")"

# Create index.html from template
sed 's/PAGE_TITLE/Home/g; s/\.\.\/css/css/g' pages/template.html > index.html

# Create sub-pages
pages="facilities contact press international patient gtc impressum display faq cookies"

for page in $pages; do
    # Capitalize first letter for title
    title=$(echo "$page" | sed 's/.*/\u&/')
    sed "s/PAGE_TITLE/$title/g" pages/template.html > "pages/${page}.html"
    echo "Created: pages/${page}.html"
done

echo "All pages created successfully!"