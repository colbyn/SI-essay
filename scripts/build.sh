set -e

# SETUP
SRC_DIR='./source'
OUT_DIR='./output'

ROOT=$(pwd)

CMD='bundle exec asciidoctor-pdf'

$CMD \
    -a pdf-themesdir=config -a pdf-theme=basic -a showtitle \
    -D $OUT_DIR \
    $SRC_DIR/*.adoc

# mv $SRC_DIR/*.html $OUT_DIR
