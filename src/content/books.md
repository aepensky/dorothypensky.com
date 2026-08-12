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

Bett, a mermaid on the verge of becoming Elderkin, fights with every bead of breath to earn the Protector position from Grandmama, the Stickleback queen. Orphaned, with blood from the despised Cockle kin, Bett will be as ruthless as a shark. But Grandmama won’t elect her, so she deserts the kelp forest, an act punishable by exile. Amber, the Queen-in-Waiting follows. Pedar, a zookeeper for the human Queen, kidnaps Amber. He wants the reward to allow the bonesetter to heal his mother. As Amber languishes, Bett turns human to rescue her. Bett needs Pedar’s good will if she is to save Amber, but wishes to eviscerate him instead. Pedar learns kindness to his animals and saves Amber’s life. His good will blossoms into love for Bett, but could she ever return that feeling when he’s imprisoning her sister?

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
