---
title: {{ meta.site }} 
description: {{ meta.description }} 
keyword: 11ty, css, html, md
layout: homepage.njk
permalink: books.html
eleventyNavigation:
    key: "Books"
    order: 1
samplePages: [ 1, 2, 3]
---

# Secrets of Blood and Song

Bett, a mermaid on the verge of becoming Elderkin fights with every bead of breath to earn
the title of Protector of the kin from Grandmama, their queen. Bett, orphan with despised Cockle
kin blood, is as ruthless as a shark. But Grandmama won’t elect her, so she deserts the kelp forest, an
act punishable by exile. Amber, the Queen-in-Waiting, follows Bett, leading to her kidnapping by
Pedar, a zookeeper for the human Queen. Pedar needs his reward from this to heal his ailing mother.
As Amber languishes, Bett turns human to rescue her. For the first time, Bett finds herself
understood and admired by someone: Pedar, the mermaid thief. While she would like to bask in his
goodwill, even return his feelings, she must work against him, until she finds a way for them to find
true love.

![Mermaid Figurine](/img/jm-mermaid.jpg){.mermaid-picture}

## Sample Chapters

<div class="sample-chapter-list">

{%for chapter in samplePages -%}
    <div class="sample-chapter-page">
        <div class="sample-chapter-page-link">
            <a href="/books/secrets/pensky_secrets_ch{{ chapter }}">Chapter {{ chapter }}</a>
        </div>
        <div class="download-button-container">
            (
            <div class="download-button"><a href="/bookmedia/secrets/pensky_secrets_ch{{ chapter }}.docx">Download</a></div>
            <div class="docx-image"></div>
            )
        </div>
    </div>
{% endfor %}

</div>

## Song: [Once Dwelled a Mermaid](/books/secrets/once-dwelled-a-mermaid)
