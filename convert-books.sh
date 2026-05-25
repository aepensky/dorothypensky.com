#! /bin/bash

pandoc --version 

for DOCX ;
do
    MDFILE=$(basename $DOCX).md
    echo Converting $DOCX to $MDFILE... ;
    docname=
    pandoc -t markdown_strict $DOCX -o $MDFILE 
done