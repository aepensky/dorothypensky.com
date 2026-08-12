#! /bin/bash

# pandoc --version 

NUMBERNAMES=(xx One Two Three Four Five Six Seven Eight Nine)

BOOK=${1:-secrets}
NCHAPTERS=${2:-3}
SRCDIR=.
MD_OUT=./src/content/books/${BOOK}
DOCX_OUT=./src/_11ty/_static/bookmedia/${BOOK}

cat <<EOF
    Converting raw docx files from: ${SRCDIR}
    for the first ${NCHAPTERS} of book: ${BOOK}

    Renamed .docx go to: ${DOCX_OUT}
    Converted .md go to: ${MD_OUT}
EOF

mkdir -p ${MD_OUT} ${DOCX_OUT}

for (( CHAPTER=1; CHAPTER<=${NCHAPTERS}; CHAPTER++ )); do
    CHAPTERNAME=pensky_${BOOK}_ch${CHAPTER}
    MD_OUTFILE=${MD_OUT}/${CHAPTERNAME}.md
    DOCX_OUTFILE=${DOCX_OUT}/${CHAPTERNAME}.docx

    SRCNAME=$(PS3="Choose source filename for ${BOOK}/ch${CHAPTER}:"; select SRCNAME in ${SRCDIR}/*.docx; do echo $SRCNAME; break; done)
    cat <<-EOF
        Converting ${SRCNAME} to
            ${MD_OUTFILE} and
            ${DOCX_OUTFILE}
EOF

    # Generate 11ty front matter and Markdown headings.
    # TODO: Use metadata files to supply the title for each book
    #
    cat <<EOF >${MD_OUTFILE}
---
title: {{ meta.site }} 
description: {{ meta.description }} 
layout: homepage.njk
permalink: books/${BOOK}/pensky_${BOOK}_ch${CHAPTER}.html
eleventyNavigation: false
---

# SECRETS OF BLOOD AND SONG

By Dorothy Pensky

## Chapter ${NUMBERNAMES[${CHAPTER}]}

EOF
    # Convert the docx to Markdown and append to the front matter
    #
    pandoc -t markdown_strict "${SRCNAME}" >> ${MD_OUTFILE}

    # Copy original .docx file to the download directory with standardized naming
    #
    cp --verbose "${SRCNAME}" ${DOCX_OUTFILE}
done
