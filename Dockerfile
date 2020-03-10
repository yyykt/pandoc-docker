FROM pandoc/latex:2.9


# Install latex packages for japanese
RUN tlmgr update --self \
    && tlmgr install luatexja \
                     ipaex

# Install pandoc-crossref
RUN wget https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.6.0/linux-pandoc_2_9.tar.gz -q -O - | tar xz \
    && mv pandoc-crossref /usr/bin/ \
    && rm pandoc-crossref.1

# Get csl file
RUN mkdir -p ~/.csl \
    && wget https://www.zotero.org/styles/ieee -O ~/.csl/ieee.csl
